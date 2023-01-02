#!/bin/bash
#Lancement du Client VPN en tâche de fond
echo "lancement du client VPN"
nohup openvpn --config client.ovpn &
#Identification de la PID du Client VPN
echo "La PID du client VPN est"
ps -aux | grep vpn

#Marque une pause
read -t 5 -p "Attente pour 5 secondes"

#Affichage IP
echo "mon adresse VPN est :"
wget http://ipecho.net/plain -O - -q ; echo
host myip.opendns.com resolver1.opendns.com

#Lancement du Rig
echo"Lancement du rig XMR"
./xmrig
