#!/bin/bash
#Demandez à l'utilisateur une ville
echo "Entrez une ville:"
read ville
#Récuperer les données météo de la ville rentrée par l'utilisateur
meteo=$(curl -s "wttr.in/$ville?format=%t")
#Récuperation  des previsions du lendemain
prevision_demain=$(curl -s "wttr.in/$ville?format=%t&tomorrow")
#date et l'heure actuelles
date=$(date '+%Y-%m-%d')
heure=$(date '+%H:%M')
echo "$date - $heure - $ville : $meteo - $prevision_demain">>meteo.txt

