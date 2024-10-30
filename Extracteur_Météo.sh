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
if [ -z "$meteo" ] || [ -z "$prevision_demain" ]; then
    # Enregistre l'erreur avec un timestamp dans le fichier meteo_error.log
    echo "$date $heure - Erreur : Impossible de récupérer les données météo pour $ville" >> meteo_error.log
    echo "Une erreur est survenue lors de la récupération des données météo. Consultez meteo_error.log pour plus de détails."

else
  echo "$date - $heure - $ville : $meteo - Prévision demain : $prevision_demain"
# Enregistre les informations dans le fichier meteo.txt
  echo "$date - $heure - $ville : $meteo - Prévision demain : $prevision_demain" >> meteo.txt

  date_fichier=$(date '+%Y%m%d')
  fichier_archive="meteo_${date_fichier}.txt"
  echo "$date - $heure - $ville : $meteo - Prévision demain : $prevision_demain" >> "$fichier_archive"
  echo "Les données météo ont été enregistrées dans $fichier_archive"
fi
