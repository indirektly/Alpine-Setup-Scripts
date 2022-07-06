#!/bin/ash

echo "Installing Minecraft Server Components"
echo "Installing openJDK17"
apk add openjdk17-jre
echo "Installing PaperMC Server Jar"

## To-do: add logic to get latest build (cURL and JQ not installed by default. but cURL is needed at the very least to get version number)
#curl 'https://api.papermc.io/v2/projects/paper/version_group/1.19/builds'