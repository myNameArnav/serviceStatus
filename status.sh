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
systemctl status plexmediaserver.service | sed -n 3p
echo -n ">> Sonarr:	"
systemctl status sonarr.service | sed -n 3p
echo -n ">> Radarr:	"
systemctl status radarr.service | sed -n 3p
echo -n ">> Jackett:	"
systemctl status jackett.service | sed -n 3p
echo -n ">> PowerTunnel:	"
systemctl status pt.service | sed -n 3p
echo -n ">> PiHole:	"
systemctl status pihole-FTL.service | sed -n 3p 
echo -n ">> Unbound:	"
systemctl status unbound.service | sed -n 3p
echo ""

