#!/bin/bash
#demande à l'utilisateur de rentrer un nom de fichier
read -p "Entrez le nom du fichier : " filename

[ -f "$filename" ] && echo "Le fichier '$filename' existe." || echo "Le fichier '$filename' n'existe pas."

# [ -f "$filename" ] : teste si c’est un fichier régulier.

# && : exécute la commande suivante si le test est vrai.

# || : exécute la commande suivante si le test est faux.