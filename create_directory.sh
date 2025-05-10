#!/bin/bash
# Ce script crée un répertoire nommé test_directory avec vérification

dir="test_directory"

mkdir -p "$dir"

# Vérifie si la création a réussi
if [ -d "$dir" ]; then
  echo "Le répertoire '$dir' a été créé (ou existe déjà)"
else
  echo "Erreur : impossible de créer le répertoire '$dir'"
  exit 1
fi
