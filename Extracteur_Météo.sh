#!/bin/bash
#Demandez à l'utilisateur une ville
echo "Entrez une ville:"
read ville
#Récuperer les données météo de la ville rentrée par l'utilisateur
meteo=$(curl -s "wttr.in/$ville?format=%t+%w+%h+%v")
#Récuperation  des previsions du lendemain
prevision_demain=$(curl -s "wttr.in/$ville?format=%t&tomorrow")
# Récuperation de la vitesse du vent
VENT=$(echo "$meteo" | awk '{print $2}')
#Récuperation du  taux de l'humidité
HUMIDITE=$(echo "$meteo" | awk '{print $3}')
#Récuperation de la visibilité
VISIBILITE=$(echo "$meteo" | awk '{print $4}')

#date et l'heure actuelles
date=$(date '+%Y-%m-%d')
heure=$(date '+%H:%M')
echo "$date - $heure - $ville : $meteo - $prevision_demain - vent :$VENT - humidité : $HUMIDITE - visibilité: $VISIBILITE">>meteo.txt

