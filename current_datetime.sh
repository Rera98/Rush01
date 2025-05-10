#!/bin/bash
# Ce script affiche la date et l'heure actuelle au format "YYYY-MM-DD HH:MM:SS"
# avec une vérification que la commande 'date' est disponible.

# Vérifie que la commande 'date' est disponible
if ! command -v date &> /dev/null; then
  echo "Erreur : la commande 'date' est introuvable sur ce système."
  exit 1
fi

# Affiche la date et l'heure au format requis
current_time=$(date "+%Y-%m-%d %H:%M:%S")

if [ -n "$current_time" ]; then
  echo "Date et heure actuelles : $current_time"
else
  echo "Erreur : échec de récupération de la date."
  exit 1
fi