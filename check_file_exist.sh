#!/bin/bash 
#Demande à l'utilisateur d'entrer un nom de fichier 
 echo
 read -p "Entrez le nom du fichier : " 'filename'
# Vérifie si le fichier existe et est un fichier régulier
if [ -f "$filename" ]; then 
  echo
  echo "Le fichier '$filename' existe"
  echo
else
  echo
  echo "Le fichier '$filename n'existe pas" 
  echo
fi
