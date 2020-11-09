echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo "||||||||||||||||| Bienvenue dans le jeu de Nim |||||||||||||||||"
echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo ""
echo "Chaque joueur devra choisir de 1 à 3 éléments à chaque tour."
echo "Celui qui prendra le dernier élément gagne la partie !"
echo ""
while true
do
    echo "Combien d'éléments voulez-vous afficher (doit être un multiple de 4) ?"
    read nbItems
    if [ `expr $nbItems % 4` -eq 0 ]
    then
        break
    else
        echo "Mauvaise valeur, faites un nouveau choix !"
    fi
done
echo ""
echo -n "Vous avez décidé de jouer avec ($nbItems) éléments :"
for i in `seq 1 $nbItems`
do
    echo -n "|"
done
echo ""

game_running=true

while [ "$game_running" = true ]
do
    echo ""
    echo ""
    echo "============ Tour du Joueur ============"
    echo "Combien voulez-vous prendre d'éléments ? Vous pouvez retirer de 1 à 3 éléments."
    read choice
    if [ "$choice" -eq 1 ] || [ "$choice" -eq 2 ] || [ "$choice" -eq 3 ]
    then
        let "nbItems = nbItems - choice"
        echo -n "Il reste ($nbItems) élément(s) :"
        for i in `seq 1 $nbItems`
        do
            echo -n "|"
        done
        echo ""
        echo ""
        echo "========== Tour de l'ordinateur =========="
        let "choiceIA = 4 - choice"
        echo "Il prend $choiceIA élément(s)"
        let "nbItems = nbItems - choiceIA"
        echo -n "Il reste ($nbItems) éléments :"
        for i in `seq 1 $nbItems`
        do
            echo -n "|"
        done
    else
        echo "Ce choix n'est pas possible, vous pouvez retirer de 1 à 3 éléments."
    fi
    
    if [ "$nbItems" -eq 0 ]
    then
        echo ""
        echo "L'IA a saisit le dernier élément !"
        echo "Vous avez perdu, l'ordinateur a gagné !"
        game_running=falses
    fi
done