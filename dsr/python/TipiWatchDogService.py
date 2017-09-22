#!/usr/bin/env python2
import RPi.GPIO as GPIO
import sys
import time
import socket


class TipiWatchDog(object):

    def __init__(self):
        self.__RESET = 26

        GPIO.setmode(GPIO.BCM)
        GPIO.setwarnings(False)

        GPIO.setup(self.__RESET, GPIO.IN, pull_up_down=GPIO.PUD_UP)
        # Do not proceed unless the reset signal has turned off
        # attempt to prevent restart storm in systemd

        print "waiting for reset to complete."
        while GPIO.input(self.__RESET) != 1:
            time.sleep(0.100)
            pass

        GPIO.add_event_detect(
            self.__RESET,
            GPIO.FALLING,
            callback=onReset,
            bouncetime=100)
        print "GPIO initialized."


def onReset(channel):
    print "responding to reset interrupt"
    s = socket.socket()
    s.connect(('localhost', 9903))
    s.close()


watchDog = TipiWatchDog()

print "Waiting for RESET event..."
while True:
    time.sleep(1)
