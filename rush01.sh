#!/bin/bash
# affiche le menu qui demande à l'utilisateur de choisir entre lancer le quiz ou quitter
while true; do
    echo ""
    echo "===== MENU QUIZ ====="
    echo "1. Lancer le quiz"
    echo "2. Quitter"
    echo ""
    # demande à l'utilisateur de saisir son choix
    read -p "Votre choix [1/2] : " choix

    # Si le choix est égale à 1 alors le quiz est lancer
    if [ "$choix" = "1" ]; then

score=0
total=10
TEMPS_LIMITE=10  # Temps limite par question en secondes

echo "=== Quiz : commandes de base ==="
echo ""
echo "(⏱️ Vous avez $TEMPS_LIMITE secondes par question)"
echo ""
# Question 1
echo "1. Quelle commande permet de lister les fichiers ?"

# demande à l'utilisateur de saisir sa réponse dans les 10 secondes
read -t $TEMPS_LIMITE -p "Votre réponse : " rep1
# $? variable compare le code de retour de la dernière commande avec 0 qui veux dire succès
# si l'utilisateur saisi quelque chose dans les 10 secondes alors read réussi sinon il affiche temsp écroulé
if [ $? -eq 0 ]; then
 if [ "$rep1" == "ls" ]; then
    echo "✅ Correct !"
    score=$((score + 1)) # incrémente le score
 else
    echo "❌ Mauvaise réponse. La bonne réponse était : ls"
 fi
else
            echo "⏰ Temps écoulé !"
fi

# Question 2
echo ""
echo "2. Quelle commande affiche le dossier actuel ?"

read -t $TEMPS_LIMITE -p "Votre réponse : " rep2
if [ $? -eq 0 ]; then
 if [ "$rep2" == "pwd" ]; then
    echo "✅ Correct !"
    score=$((score + 1))
 else
    echo "❌ Mauvaise réponse. La bonne réponse était : pwd"
 fi
else
            echo "⏰ Temps écoulé !"
fi

# Question 3
echo ""
echo "3. Quelle commande permet de changer les permissions d'un fichier ?"

read -t $TEMPS_LIMITE -p "Votre réponse : " rep3
if [ $? -eq 0 ]; then
 if [ "$rep3" == "chmod" ]; then
    echo "✅ Correct !"
    score=$((score + 1))
 else
    echo "❌ Mauvaise réponse. La bonne réponse était : chmod"
 fi
else
            echo "⏰ Temps écoulé !"
fi


#Question 4
echo ""
echo "4. Quelle commande affiche le contenu d’un fichier ?"

read -t $TEMPS_LIMITE -p "Votre réponse : " rep4
if [ $? -eq 0 ]; then
 if [ "$rep4" == "cat" ]; then
    echo "✅ Correct !"
    score=$((score + 1))
 else
    echo "❌ Mauvaise réponse. La bonne réponse était : cat"
 fi
else
            echo "⏰ Temps écoulé !"
fi

# Question 5
echo ""
echo "5. Quelle commande permet d’éditer un fichier texte en ligne de commande ?"

read -t $TEMPS_LIMITE -p "Votre réponse : " rep5
if [ $? -eq 0 ]; then
 if [ "$rep5" == "nano" ]; then
    echo "✅ Correct !"
    score=$((score + 1))
 else
    echo "❌ Mauvaise réponse. La bonne réponse était : nano"
 fi
else
            echo "⏰ Temps écoulé !"
fi

# Question 6
echo ""
echo "6. Quelle commande permet de copier un fichier ?"

read -t $TEMPS_LIMITE -p "Votre réponse : " rep6
if [ $? -eq 0 ]; then
 if [ "$rep6" == "cp" ]; then
    echo "✅ Correct !"
    score=$((score + 1))
 else
    echo "❌ Mauvaise réponse. La bonne réponse était : cp"
 fi
else
            echo "⏰ Temps écoulé !"
fi

# Question 7
echo ""
echo "7. Quelle commande affiche les processus en cours ?"

read -t $TEMPS_LIMITE -p "Votre réponse : " rep7
if [ $? -eq 0 ]; then
 if [ "$rep7" == "ps" ]; then
    echo "✅ Correct !"
    score=$((score + 1))
 else
    echo "❌ Mauvaise réponse. La bonne réponse était : ps"
 fi
else
            echo "⏰ Temps écoulé !"
fi

# Question 8
echo ""
echo "8. Quelle commande supprime un dossier vide ?"

read -t $TEMPS_LIMITE -p "Votre réponse : " rep8
if [ $? -eq 0 ]; then
 if [ "$rep8" == "rmdir" ]; then
    echo "✅ Correct !"
    score=$((score + 1))
 else
    echo "❌ Mauvaise réponse. La bonne réponse était : rmdir"
 fi
else
            echo "⏰ Temps écoulé !"
fi

# Question 9
echo ""
echo "9. Quelle commande crée un fichier vide ?"

read -t $TEMPS_LIMITE -p "Votre réponse : " rep9
if [ $? -eq 0 ]; then
 if [ "$rep9" == "touch" ]; then
    echo "✅ Correct !"
    score=$((score + 1))
 else
    echo "❌ Mauvaise réponse. La bonne réponse était : touch"
 fi
else
            echo "⏰ Temps écoulé !"
fi

# Question 10
echo ""
echo "10. Quelle commande lit une entrée utilisateur ?"

read -t $TEMPS_LIMITE -p "Votre réponse : " rep10
if [ $? -eq 0 ]; then
 if [ "$rep10" == "read" ]; then
    echo "✅ Correct !"
    score=$((score + 1))
 else
    echo "❌ Mauvaise réponse. La bonne réponse était : read"
 fi
else
            echo "⏰ Temps écoulé !"
fi

# Résultat final
echo ""
echo "=== Résultat final ==="
echo "Score : $score / $total" # Affiche le score final
# compare le score au total de question
if [ "$score" -eq "$total" ]; then
    echo "🎉 Excellent travail !"
else
    echo "📘 Révisez encore un peu les commandes de base !"
fi

# si l'utilisateur choisi 2 alors il quitte le quiz
elif [ "$choix" = "2" ]; then
        echo "À bientôt ! 👋"
        echo ""
        break
    else
        echo "❗ Choix invalide. Veuillez taper 1 ou 2."
    fi
done