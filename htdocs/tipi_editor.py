# tipi_editor
#
# TIPI web administration
#
# Corey J. Anderson ElectricLab.com 2017
# et al.

import os
import logging
import uuid
import tipi_cache
from ti_files import ti_files
from subprocess import call

logger = logging.getLogger(__name__)

basicSuffixes = (".b99", ".bas", ".xb", ".tb")

tipi_disk_base = "/home/tipi/tipi_disk"


def load(file_name):
    edit_file_path = tipi_disk_base + "/" + file_name
    file_contents = basicContents(edit_file_path)

    # If it isn't a BASIC PROGRAM IMAGE, then try plain file
    if not file_contents:
        if file_name.lower().endswith(basicSuffixes):
            with open(edit_file_path, "rb") as fh:
                file_contents = str(fh.read(), "latin1")

    editor_data = {
        "file_contents": file_contents,
        "file_name": file_name,
        "status_message": "",
    }
    return editor_data


def new(file_name):
    editor_data = {"file_contents": "", "file_name": file_name, "status_message": ""}
    return editor_data


def save(file_name, data):
    logger.debug("save %s", file_name)
    edit_file_path = tipi_disk_base + "/" + file_name
    logger.debug("edit_file_path %s", edit_file_path)
    if file_name.lower().endswith(basicSuffixes):
        logger.debug("saving ascii basic file")
        with open(edit_file_path, "wb") as fh:
            fh.write(bytearray(data, 'latin1'))
    else:
        logger.debug("saving program image basic file")
        writeBasicContents(edit_file_path, data)

    editor_data = {"file_contents": data, "file_name": file_name, "status_message": ""}
    return editor_data


def basicContents(filename):
    logger.debug("fetching BASIC PROGRAM as ascii in %s", filename)
    # We are assuming the test for FIAD isTiFile has already passed.

    prg_tmp_file = "/tmp/" + str(uuid.uuid4()) + ".tmp"
    bas_tmp_file = "/tmp/" + str(uuid.uuid4()) + ".tmp"

    try:
        # strip the FIAD header off to get the raw file xbas99 needs.
        with open(filename, "rb") as tifile:
            with open(prg_tmp_file, "wb") as program:
                bytes = bytearray(tifile.read())
                if ti_files.isProgram(bytes):
                    program.write(bytes[128:])
                elif (
                    ti_files.isVariable(bytes)
                    and ti_files.isInternal(bytes)
                    and ti_files.recordLength(bytes) == 254
                ):
                    i = 128
                    limit = len(bytes)
                    while i < limit:
                        rlen = bytes[i]
                        next = i + rlen + 1
                        program.write(bytes[i:next])
                        i = next
                        if bytes[i] == 0xFF:
                            # skip to next 256 byte boundary
                            i = (256 * (((i - 128) / 256) + 1)) + 128
                else:
                    return False

        call(["/home/tipi/xdt99/xbas99.py", "-d", prg_tmp_file, "-o", bas_tmp_file])

        if ti_files.isTiBasicAscii(bas_tmp_file):
            with open(bas_tmp_file, "rb") as content_file:
                return str(content_file.read(), "latin_1")

    finally:
        if os.path.exists(prg_tmp_file):
            os.unlink(prg_tmp_file)
        if os.path.exists(bas_tmp_file):
            os.unlink(bas_tmp_file)

    return False


def writeBasicContents(edit_file_name, file_contents):
    bas_tmp_file = "/tmp/" + str(uuid.uuid4()) + ".tmp"
    prg_tmp_file = "/tmp/" + str(uuid.uuid4()) + ".tmp"

    encode_cmd = ["xbas99.py", "-c", bas_tmp_file, "-o", prg_tmp_file]
    fiad_cmd = ["xdm99.py", "-T", prg_tmp_file, "-o", edit_file_name]

    try:
        fileInfo = tipi_cache.lookupFileInfo(edit_file_name)
    except IOError:
        fileInfo = {"type": "PROGRAM"}

    type = fileInfo["type"]
    if type == "INT/VAR 254":
        encode_cmd.insert(1, "--long")
        fiad_cmd.insert(1, "-f")
        fiad_cmd.insert(2, "INT/VAR254")

    try:
        with open(bas_tmp_file, "wb") as file:
            file.write(bytearray(file_contents, "latin_1"))

        # Encode ASCII file to TI's binary BASIC format:
        #
        call(encode_cmd)

        # Now convert to TIFILES format:
        #
        call(fiad_cmd)
    finally:
        if os.path.exists(prg_tmp_file):
            os.unlink(prg_tmp_file)
        if os.path.exists(bas_tmp_file):
            os.unlink(bas_tmp_file)
