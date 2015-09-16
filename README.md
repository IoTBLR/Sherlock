## Requirements

Raspberry Pi
* SD card with Raspbian operating system*
* Wifi dongle
* Bluetooth
* Power supply 5V 2.0A

Note: If raspbian OS is not present on SD card, then follow the link “https://www.raspberrypi.org/documentation/installation/installing-images/README.md”.


## Raspberry Pi Bring up
Find model of the board. If it is raspberry pi 2 then follow step 1, or else for raspberry pi follow step 2.
Boot to terminal.
1. For Raspberry Pi 2
To install Node.js on Pi 2 - and other Arm7 processor based boards, run the following commands:
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
sudo apt-get install -y build-essential python-dev python-rpi.gpio nodejs
This also installs some additional dependencies.
If you are upgrading a Raspberry Pi version 1 image for the Pi 2, it is recommended to clean up some hidden node directories before installing Node-RED:
sudo npm cache clean
2. For Raspberry Pi
The simplest way to install Node.js and other dependencies on Pi (version 1) is
wget http://node-arm.herokuapp.com/node_latest_armhf.deb
sudo dpkg -i node_latest_armhf.de


## Install Red Rotary phone application 
* cd /home/pi/
* wget  https://github.com/IoTBLR/Sherlock/archive/v0.1.zip
* cd /home/pi/RRP
* bash /home/pi/RRP/install.sh
Note: If prompted for password, then enter password as raspberry.
