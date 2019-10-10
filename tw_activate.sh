#!/bin/bash



sudo apt remove -y teamviewer && apt purge -y teamviewer 

sudo rm /var/lib/dbus/machine-id 

cd ~

var="2468"

echo "${var:$(( RANDOM % ${#var} )):1}" > rSymbol.txt

curl -v "http://www.helpset.ru/doc/mac_generator.php?sid=83a100ec3c2c30751156cea2d60aacbe" > cUrl_out.txt

cat cUrl_out.txt  | grep -aoe ":..:..:..:..:." > MacHere.txt 


GenerateMac=`cat MacHere.txt`
RandomSymbol=`cat rSymbol.txt`

echo "Выгруженный MAC:" $GenerateMac
sleep 2
echo "Сформированный MAC + f В конце:" $RandomSymbol$RandomSymbol$GenerateMac
sleep 2


sudo ifconfig enp8s0 down
sudo ifconfig enp8s0 hw ether "$RandomSymbol$RandomSymbol$GenerateMac"f
sleep 5   
sudo ifconfig enp8s0 up
sudo ifconfig enp8s0 hw ether "$RandomSymbol$RandomSymbol$GenerateMac"f

sudo dpkg -i teamviewer*.deb 

cd  

sudo rm cUrl_out.txt && sudo rm MacHere.txt && sudo rm rSymbol.txt



sudo ifconfig enp8s0 down
sudo ifconfig enp8s0 up