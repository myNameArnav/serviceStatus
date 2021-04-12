#!/bin/sh
echo ""

arg="${1:-status}"

if [ $arg = "status" ]
then
	echo -n ">> Plex:	"
	sudo systemctl $arg plexmediaserver.service | grep -F active
	echo -n ">> Sonarr:	"
	sudo systemctl $arg sonarr.service | grep -F active
	echo -n ">> Radarr:	"
	sudo systemctl $arg radarr.service | grep -F active
	echo -n ">> Jackett:	"
	sudo systemctl $arg jackett.service | grep -F active
	echo -n ">> PowerTunnel:	"
	sudo systemctl $arg pt.service | grep -F active
	echo -n ">> PiHole:	"
	sudo systemctl $arg pihole-FTL.service | grep -F active
	echo -n ">> Unbound:	"
	sudo systemctl $arg unbound.service | grep -F active
	echo ""


elif [ $arg = "stop" ] 
then	
	echo -n ">> Plex:	"
	sudo systemctl $arg plexmediaserver.service
	systemctl status plexmediaserver.service | grep -F active
	echo -n ">> Sonarr:	"
	sudo systemctl $arg sonarr.service
	systemctl status sonarr.service | grep -F active
	echo -n ">> Radarr:	"
	sudo systemctl $arg radarr.service
	systemctl status radarr.service | grep -F active
	echo -n ">> Jackett:	"
	sudo systemctl $arg jackett.service
	systemctl status jackett.service | grep -F active
	echo -n ">> PowerTunnel:	"
	sudo systemctl $arg pt.service
	systemctl status pt.service | grep -F active
	echo -n ">> PiHole:	"
	sudo systemctl $arg pihole-FTL.service
	systemctl status pihole-FTL.service | grep -F active
	echo ""

elif [ $arg = "start" ] 
then
	echo -n ">> Plex:	"
	sudo systemctl $arg plexmediaserver.service
	systemctl status plexmediaserver.service | grep -F active
	echo -n ">> Sonarr:	"
	sudo systemctl $arg sonarr.service
	systemctl status sonarr.service | grep -F active
	echo -n ">> Radarr:	"
	sudo systemctl $arg radarr.service
	systemctl status radarr.service | grep -F active
	echo -n ">> Jackett:	"
	sudo systemctl $arg jackett.service
	systemctl status jackett.service | grep -F active
	echo -n ">> PowerTunnel:	"
	sudo systemctl $arg pt.service
	systemctl status pt.service | grep -F active
	echo -n ">> PiHole:	"
	sudo systemctl $arg pihole-FTL.service
	systemctl status pihole-FTL.service | grep -F active
	echo ""

elif [ $arg = "restart" ] 
then
	echo -n ">> Plex:	"
	sudo systemctl $arg plexmediaserver.service
	systemctl status plexmediaserver.service | grep -F active 
	echo -n ">> Sonarr:	"
	sudo systemctl $arg sonarr.service
	systemctl status sonarr.service | grep -F active
	echo -n ">> Radarr:	"
	sudo systemctl $arg radarr.service
	systemctl status radarr.service | grep -F active
	echo -n ">> Jackett:	"
	sudo systemctl $arg jackett.service
	systemctl status jackett.service | grep -F active
	echo -n ">> PowerTunnel:	"
	sudo systemctl $arg pt.service
	systemctl status pt.service | grep -F active
	echo -n ">> PiHole:	"
	sudo systemctl $arg pihole-FTL.service
	systemctl status pihole-FTL.service | grep -F active
	echo ""

else
	echo "Wrong input !"
fi

