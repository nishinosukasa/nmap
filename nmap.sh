#!/bin/bash
#Codec By Codename
#Copyright By Codename
#SLL By https://github.com/nishinosukasa
#Blogspot : https://cruznos.blogspot.com
#Wordpress : https://nostalgiaxploit.wordpress.com

### Color ###
{
blue='\e[0;34'
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
}

clear
echo -e $lightgreen """
::::    ::: ::::    ::::      :::     :::::::::  
:+:+:   :+: +:+:+: :+:+:+   :+: :+:   :+:    :+: 
:+:+:+  +:+ +:+ +:+:+ +:+  +:+   +:+  +:+    +:+ 
+#+ +:+ +#+ +#+  +:+  +#+ +#++:++#++: +#++:++#+  
+#+  +#+#+# +#+       +#+ +#+     +#+ +#+        
#+#   #+#+# #+#       #+# #+#     #+# #+#        
###    #### ###       ### ###     ### ###        
"""
echo -e $white " "
echo -e $green"["$red"127.0.0.1"$green"]" $white"|_|" $green"["$red"127.217.21.78"$green"]"
echo -e $green"["$red"Codec By Codename"$green"]"$white"|_|"$green"["$red"Joker Eden"$green"]"
echo -e $green"[" $red"A" $green"]" $white"Use Tools Scan IP address"
echo -e $green"[" $red"B" $green"]" $white"Use Tools Ping only scan"
echo -e $green"[" $red"C" $green"]" $white"Use Tools TCP SYN Scan"
echo -e $green"[" $red"D" $green"]" $white"Use Tools UDP Scan"
echo -e $green"[" $red"E" $green"]" $white"Use Tools IP protocol scan"
echo -e $green"[" $red"F" $green"]" $white"Use Tools Scan for Operating System Detection"
echo -e $green"[" $red"G" $green"]" $white"Use Tools Scan for application server version"
echo -e $green"[" $red"H" $green"]" $white"Use Tools Scan a host name"
echo -e $green"[" $red"I" $green"]" $white"Use Tools Scan a host name with more info"
echo -e $green"[" $red"J" $green"]" $white"Use Tools Scan a host when protected by the firewall"
echo -e $green"[" $red"K" $green"]" $white"Use Tools Perform a fast scan"
echo -e $green"[" $red"L" $green"]" $white"Use Tools Scan for IP protocol"
echo -e $green"[" $red"Q" $green"]" $white"Quit To nmap"
echo -e $white "╭─"$green"nmap@localhost"$cyan" ~/system"$white
read -p " ╰─$ " nmap

if [ $nmap = "A" ] || [ $nmap = "a" ]
then
clear
echo -e $white "╭─"$green"nmap@localhost"$cyan" ~/ip address"$white
read -p " ╰─$ " ipaddress
nmap $ipaddress
echo -e $red"[" $green"+" $red"]"$cyan"======>$ipaddress"
fi

if [ $nmap = "B" ] || [ $nmap = "b" ]
then
clear
echo -e $white "╭─"$green"nmap@localhost"$cyan" ~/ping scan"$white
read -p " ╰─$ " ping
nmap -sP $ping
echo -e $red"[" $green"+" $red"]"$cyan"======>$ping"
fi

if [ $nmap = "C" ] || [ $nmap = "c" ]
then
clear
echo -e $white "╭─"$green"nmap@localhost"$cyan" ~/TCP SYN Scan"$white
read -p " ╰─$ " TSS
nmap -sS $TSS
echo -e $red"[" $green"+" $red"]"$cyan"======>$TSS"
fi

if [ $nmap = "D" ] || [ $nmap = "d" ]
then
clear
echo -e $white "╭─"$green"nmap@localhost"$cyan" ~/UDP Scan"$white
read -p " ╰─$ " UDPScan
nmap -sU $UPDScan
echo -e $red"[" $green"+" $red"]"$cyan"======>$UDPScan"
fi

if [ $nmap = "E" ] || [ $nmap = "e" ]
then
clear
echo -e $white "╭─"$green"nmap@localhost"$cyan" ~/IP protocol scan"$white
read -p " ╰─$ " ipps
nmap -sO $ipps
echo -e $red"[" $green"+" $red"]"$cyan"======>$ipps"
fi

if [ $nmap = "F" ] || [ $nmap = "f" ]
then
clear
echo -e $white "╭─"$green"nmap@localhost"$cyan" ~/Scan for Operating System Detection"$white
read -p " ╰─$ " Operating
nmap -O $Operating
echo -e $red"[" $green"+" $red"]"$cyan"======>$Operating"
fi

if [ $nmap = "G" ] || [ $nmap = "g" ]
then
clear
echo -e $white "╭─"$green"nmap@localhost"$cyan" ~/Scan for application server version"$white
read -p " ╰─$ " server
nmap -sV $server
echo -e $red"[" $green"+" $red"]"$cyan"======>$server"
fi

if [ $nmap = "H" ] || [ $nmap = "h" ]
then
clear
echo -e $white "╭─"$green"nmap@localhost"$cyan" ~/Scan a host name"$white
read -p " ╰─$ " hostname
nmap $hostname
echo -e $red"[" $green"+" $red"]"$cyan"======>$hostname"
fi

if [ $nmap = "I" ] || [ $nmap = "i" ]
then
clear
echo -e $white "╭─"$green"nmap@localhost"$cyan" ~/Scan a host name with more info"$white
read -p " ╰─$ " hostnameinfo
nmap -v $hostnameinfo
echo -e $red"[" $green"+" $red"]"$cyan"======>$hostnameinfo"
fi

if [ $nmap = "J" ] || [ $nmap = "j" ]
then
clear
echo -e $white "╭─"$green"nmap@localhost"$cyan" ~/Scan a host when protected by the firewall"$white
read -p " ╰─$ " firewall
nmap -PN $firewall
echo -e $red"[" $green"+" $red"]"$cyan"======>$firewall"
fi

if [ $nmap = "K" ] || [ $nmap = "k" ]
then
clear
echo -e $white "╭─"$green"nmap@localhost"$cyan" ~/Perform a fast scan"$white
read -p " ╰─$ " $fast
nmap -F $fast
echo -e $red"[" $green"+" $red"]"$cyan"======>$fast"
fi

if [ $nmap = "L" ] || [ $nmap = "l" ]
then
clear
echo -e $white "╭─"$green"nmap@localhost"$cyan" ~/Scan for IP protocol"$white
read -p " ╰─$ " ipprotocol
nmap -sO $ipprotocol
echo -e $red"[" $green"+" $red"]"$cyan"======>$ipprotocol"
fi

if [ $nmap = "Q" ] || [ $nmap = "q" ]
then
clear
clear
exit
fi