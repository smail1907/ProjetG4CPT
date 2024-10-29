#!/bin/bash
# Script de récupération de la météo avec ville par défaut

# Demande à l'utilisateur de saisir une ville
echo "Entrez une ville :"
read ville

# Ville par défaut
ville_defaut="Paris"

# Utilise la ville par défaut si aucune ville n'est saisie
if [ -z "$ville" ]; then
    ville=$ville_defaut
    echo "Aucune ville fournie, utilisation de la ville par défaut : $ville"
fi

# Récupère la météo actuelle et la prévision pour demain
meteo=$(curl -s "wttr.in/$ville?format=%t")
prevision_demain=$(curl -s "wttr.in/$ville?format=%t&tomorrow")

# Récupère la date et l'heure actuelles
date=$(date '+%Y-%m-%d')
heure=$(date '+%H:%M')
echo "$date - $heure - $ville : $meteo - Prévision demain : $prevision_demain"
# Enregistre les informations dans le fichier meteo.txt
echo "$date - $heure - $ville : $meteo - Prévision demain : $prevision_demain" >> meteo.txt

