#! /bin/sh


#varibles
CONFIG_FILE=./config

check_and_install () {
	for word in "$@"
	do
		npm list $word > /dev/null 2>&1
		[ $? -ne 0 ] && npm install $word
	done
	
}

error_exit(){
	echo "$1"
	exit 1
	}


check_and_install mqtt coap node-tts-api

echo "Enter Game ID :  "
read GAME_ID


echo ""
echo "Entered game ID is "${GAME_ID}""
echo ""

#sed 's/.*gameId.*/\"gameid\":\"'${GAME_ID}'\"/g' ${CONFIG_FILE} 

echo '{"gameid":"'${GAME_ID}'"}' > gameid.json

cat gameid.json

sudo chmod 0777 /home/pi/RRP/rrpd 
[ $? -ne 0 ] && error_exit "error: rrpd file permission was not successful"

sudo cp -f /home/pi/RRP/rrpd /etc/init.d/
[ $? -ne 0 ] && error_exit "error: rrpd copy failed"

sudo update-rc.d rrpd defaults

sudo service rrpd start


