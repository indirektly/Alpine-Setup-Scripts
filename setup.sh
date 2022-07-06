#!/bin/ash

echo "Starting up..."

echo "Updating and adding package repositories"
alpineversion=`cat /etc/alpine-release | cut -d "." -f 1-2 | awk '{print "v"$1}'`
echo "http://dl-cdn.alpinelinux.org/alpine/$alpineversion/community" >> /etc/apk/repositories
apk update
apk upgrade

echo "\n\nDo what?\n1. Minecraft server?"
read question

if [$question == "1"]
then
    ./minecraftServerInstall.sh