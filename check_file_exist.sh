#!/bin/bash 
# Demande à l'utilisateur de saisir le nom du fichier
echo "Entrez le nom du fichier :"
read filename

# Vérifie si le fichier existe et est un fichier régulier

if [ -f "$filename" ]; then
  echo "Le fichier '$filename' existe."
else
  echo "Le fichier '$filename' n'existe pas."
fi 