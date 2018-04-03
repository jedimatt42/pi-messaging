import os
import signal
import time
import socket
import threading
import logging
from Oled import oled

logger = logging.getLogger(__name__)

def createResetListener():
    t = threading.Thread(target=waitForReset)
    t.daemon = True
    t.start()
    logger.info("reset listener started.")


def waitForReset():
    s = socket.socket()
    host = 'localhost'
    port = 9903
    binding = True
    s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    s.bind((host, port))

    s.listen(0)

    c, addr = s.accept()
    logger.info("responding to reset interrupt")
    c.send("tipi service resetting.")
    try:
        c.shutdown(socket.SHUT_RDWR)
        c.close()
    except Exception as e:
        pass

    logger.info("terminating...")
    oled.info("Restart/PENDING...")
    os.kill(os.getpid(), signal.SIGTERM)
