#!/bin/sh

STATUS="running exited dead"

for stat in $STATUS; do
    output="$output $(sudo docker ps -qf status="$stat" | wc -l) |"
done

echo "|$output"


#You have to add the docker command to the /etc/sudoers NOPASSWD of your user:

#user ALL=(ALL) NOPASSWD: /usr/bin/docker ps -qf status=running
#user ALL=(ALL) NOPASSWD: /usr/bin/docker ps -qf status=exited
#user ALL=(ALL) NOPASSWD: /usr/bin/docker ps -qf status=dead


#[module/info-docker]
#type = custom/script
#exec = ~/.config/polybar/scripts/docker-info.sh
#interval = 60
