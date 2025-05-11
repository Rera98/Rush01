#!/bin/bash 
# Demande à l'utilisateur de saisir le nom du fichier
echo
read -p "Entrez le nom du fichier : " filename

# Vérifie si le fichier existe et est un fichier régulier

if [ -f "$filename" ]; then
  echo "Le fichier '$filename' existe."
else
  echo "Le fichier '$filename' n'existe pas."
fi 