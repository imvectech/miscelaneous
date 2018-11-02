# Using your computer put this file in the rootfs partition at /home/pi
# Extract the sd card and insert it on your raspberry pi zero W. Boot.
# Execute following commandsls

# sudo chmod +1 /home/pi/anoiacam.sh
# sudo yes | ./home/pi/anoiacam.sh
# All necessary software will be installed automatically

 echo ".............Installing ANOIAcam packages"
apt-get update
apt-get install python-pip
apt-get install python-picamera
pip install DateTime
apt-get install git
mkdir /home/pi/pictures
mkdir /home/wittypi
yes | git clone https://github.com/uugear/Witty-Pi-2.git /home/wittypi
chmod +1 /home/wittypi/installWittyPi.sh
./home/wittypi/installWittyPi.sh
wget https://github.com/imvectech/miscelaneous/blob/master/schedule.wpi /home/wittypi/wittyPi
rm -rf /home/wittypi/wittyPi/daemon.sh
wget https://github.com/imvectech/miscelaneous/blob/master/daemon.sh /home/wittypi/wittyPi


