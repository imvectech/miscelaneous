#!/usr/bin/env python
# This file must be placed at /home/pi/ANOIAcam

# On the terminal write "sudo crontab -e" and add this line at the bottom of the file. So the script will execute on  boot
# @reboot sudo python /home/ANOIAcam/scripts/timelapse.py

import time
from picamera import PiCamera
from DateTime import DateTime
from time import sleep
from signal import pause

camera = PiCamera()

frame = 1
while True: 
    try:
        datetime = datetime.now()
        camera.resolution = (1000, 1000)
        camera.capture('/home/username/%s.jpg' % datetime)
        frame = 1
        sleep(5)
    except IOError:
        print ("Error")


pause()
