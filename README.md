VERY quick barebones Minecraft server running in Docker


How to run:

DOWNLOAD SERVER JAR
https://www.minecraft.net/en-us/download/server

(latest at time of writing)
https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar

Rename that file to server.jar (if it isn't already), place into 'server' directory.

Run `docker-compose up -d --build`
First run will likely fail / not bring the server up due to `server/eula.txt` needing to be set to true (it gets generated on first run)
Change the file above to contain true, docker compose down then up it.

Change RAM dedicated to Java here (i should put this in .env):
`build/ubuntu/files/entrypoint.sh`


-----------------


Get into process:
docker attach minecraftserver_ubuntu

Leave process
CTRL + P then CTRL + Q