echo "Installing Witty pi mini packages"
mkdir /home/wittypi
git clone https://github.com/uugear/Witty-Pi-2.git /home/wittypi
chmod +1 /home/wittypi/installWittyPi.sh
./home/wittypi/installWittyPi.sh
wget https://github.com/imvectech/miscelaneous/blob/master/schedule.wpi /home/wittypi/wittyPi
rm -rf /home/wittypi/wittyPi/daemon.sh
wget https://github.com/imvectech/miscelaneous/blob/master/daemon.sh /home/wittypi/wittyPi
