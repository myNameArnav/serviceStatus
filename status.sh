#!/bin/zsh
echo ""

arg=$1

if [ "$arg" = "stop" ] 
then	
	
	sudo systemctl $arg plexmediaserver.service
	sudo systemctl $arg sonarr.service
	sudo systemctl $arg radarr.service
	sudo systemctl $arg jackett.service
	sudo systemctl $arg pt.service
	sudo systemctl $arg pihole-FTL.service
	sudo systemctl $arg unbound.service

elif [ "$arg" = "start" ] 
then
	sudo systemctl $arg plexmediaserver.service
	sudo systemctl $arg sonarr.service
	sudo systemctl $arg radarr.service
	sudo systemctl $arg jackett.service
	sudo systemctl $arg pt.service
	sudo systemctl $arg pihole-FTL.service
	sudo systemctl $arg unbound.service

elif [ "$arg" = "restart" ] 
then
	sudo systemctl $arg plexmediaserver.service
	sudo systemctl $arg sonarr.service
	sudo systemctl $arg radarr.service
	sudo systemctl $arg jackett.service
	sudo systemctl $arg pt.service
	sudo systemctl $arg pihole-FTL.service
	sudo systemctl $arg unbound.service
fi

echo -n ">> Plex:	"
systemctl status plexmediaserver.service | grep -F active
echo -n ">> Sonarr:	"
systemctl status sonarr.service | grep -F active
echo -n ">> Radarr:	"
systemctl status radarr.service | grep -F active
echo -n ">> Jackett:	"
systemctl status jackett.service | grep -F active
echo -n ">> PowerTunnel:	"
systemctl status pt.service | grep -F active
echo -n ">> PiHole:	"
systemctl status pihole-FTL.service | grep -F active
echo -n ">> Unbound:	"
systemctl status unbound.service | grep -F active
echo ""

