#!/bin/sh
# Clone from manual page (RTFM)
# 
# Author: Tan Sri Dato' Ir. Adli (Member of International Council on Systems Engineering)
# Owner: https://thebengkelworks.net
# TikTok: araihaydenlaguna
#
# Daily reminder!
# Run as root (Administrator -The only G.O.D execute this script. The system of Systems)
# Do not screw up history bash shell
# Common practice:
# Copy into /opt before attempting todo the following -
# chmod +x its-my-aeroplane.sh
# bash its-my-aeroplane.sh
# You figure it out,you rookie!
#
# Credits: https://youtu.be/3m3_hk36lWA
#          https://youtu.be/gKHe12T6GMY
#          https://youtu.be/6ttobrfMnyQ

apt-get remove balena* -y
#Remove existing balena-etcher-electron

rm /etc/apt/sources.list.d/balena-etcher.list
#Remove existing repo in /etc/apt/sources.list.d/balena-etcher.list

apt-get clean
#Cleanup packages

rm -rf /var/lib/apt/lists/*
#Remove directory /var/lib/apt/lists/*

apt-get update -y
#Update repo

curl -1sLf \
      'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' \
      | sudo -E bash
#Mapping download setup.deb.sh via curl pipe execute installation with bash shell

apt-get update -y
#Automated repo update

apt-get install balena-etcher-electron -y
#Automated installation package balena-etcher-electron
