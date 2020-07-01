# tipi_uploads
#
# TIPI web administration
#
# Corey J. Anderson ElectricLab.com 2017
# et al.

import os
import time
import logging
from ti_files import ti_files
from ti_files import v9t9_files

logger = logging.getLogger(__name__)

tipi_disk_base = "/home/tipi/tipi_disk"


def waitForMonitor():
    time.sleep(2)
    checks = 3
    while checks > 0:
        time.sleep(1)
        if os.path.isfile("/tmp/tipimon.lock"):
            checks = 3
        else:
            checks -= 1


def save(path, fileset):
    for filedata in fileset:
        localfilename = os.path.join(tipi_disk_base + path, filedata.filename)
        logger.debug("saving upload to: %s", localfilename)
        filedata.save(localfilename)
        v9t9_files.convert(localfilename)
    waitForMonitor()
