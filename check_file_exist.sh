#!/bin/bash
# Ce script vérifie si un fichier donné existe ou non
read -rp "Entrez le nom du fichier : " fichier

# Vérifie si le fichier existe et est un fichier régulier
if [ -f "$fichier" ]; then
  echo "Le fichier '$fichier' existe"
else
  echo "Le fichier '$fichier' n'existe pas"
fi
