#!/bin/sh
set -e
export TERM=xterm

# tail -f /etc/hosts

cd /home/minecraft/server
java -Xmx1G -jar server.jar