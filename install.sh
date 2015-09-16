#! /bin/sh


error_exit(){
	echo "$1"
	exit 1
	}

npm install

echo "Enter Game ID :  "
read GAME_ID

echo ""
echo "Entered game ID is "${GAME_ID}""
echo ""

echo '{"gameid":"'${GAME_ID}'"}' > game.json

cat game.json

sudo chmod 0777 /home/pi/RRP/rrpd 
[ $? -ne 0 ] && error_exit "error: rrpd file permission was not successful"

sudo cp -f /home/pi/RRP/rrpd /etc/init.d/
[ $? -ne 0 ] && error_exit "error: rrpd copy failed"

sudo update-rc.d rrpd defaults

sudo service rrpd start
