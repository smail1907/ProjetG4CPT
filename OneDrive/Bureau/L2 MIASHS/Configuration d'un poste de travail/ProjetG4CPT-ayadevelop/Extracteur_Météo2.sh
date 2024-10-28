#!/bin/bash
# Script de récupération de la météo avec ville par défaut

# Ville par défaut
ville_defaut="Paris"
if [ -z "$1" ]; then
    ville=$ville_defaut
    echo "Aucune ville fournie, utilisation de la ville par défaut : $ville_defaut"
else
    ville=$1
fi
meteo=$(curl -s "wttr.in/$ville?format=%t")
prevision_demain=$(curl -s "wttr.in/$ville?format=%t&tomorrow")
date=$(date '+%Y-%m-%d')
heure=$(date '+%H:%M')
echo "$date - $heure - $ville : $meteo - $prevision_demain" >> meteo.txt
