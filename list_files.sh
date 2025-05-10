#!/bin/bash
# Cette commande affiche tous les fichiers du répertoire courant

    ls -p | grep -v '/$' || echo "Aucun fichier trouvé." 
    #ls -p : ajoute / à la fin des dossiers.
    #grep -v '/$' : enlève les lignes finissant par /, donc élimine les dossiers
