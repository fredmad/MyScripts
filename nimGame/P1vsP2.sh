echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo "||||||||||||||||| Bienvenue dans le jeu de Nim |||||||||||||||||"
echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo ""
echo "Chaque joueur devra choisir de 1 à 3 éléments à chaque tour."
echo "Celui qui prendra le dernier élément gagne la partie !"
echo ""
echo "Combien d'éléments voulez-vous afficher ?"
read nbItems
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
    if [ "$nbItems" -ge 3 ]
    then
        echo ""
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
        else
            echo "Ce choix n'est pas possible, vous pouvez retirer de 1 à 3 éléments."
        fi
    elif [ "$nbItems" -eq 2 ]
    then
        echo ""
        echo "Combien voulez-vous prendre d'éléments ? Vous pouvez retirer 1 ou 2 éléments."
        read choice
        if [ "$choice" -eq 1 ] || [ "$choice" -eq 2 ]
        then
            let "nbItems = nbItems - choice"
            echo -n "Il reste ($nbItems) élément(s) :"
            for i in `seq 1 $nbItems`
            do
                echo -n "|"
            done
        else
            echo "Ce choix n'est pas possible ! Il reste 2 éléments."
        fi
    elif [ "$nbItems" -eq 1 ]
    then
        echo ""
        echo "Combien voulez-vous prendre d'éléments ? Vous pouvez retirer 1 seul élément."
        read choice
        if [ "$choice" -eq 1 ]
        then
            let "nbItems=nbItems-1"
            echo -n "Il reste ($nbItems) élément(s) :"
            for i in `seq 1 $nbItems`
            do
                echo -n "|"
            done
        else
            echo "Ce choix n'est pas possible ! Il reste 1 élément."
        fi
    elif [ "$nbItems" -eq 0 ]
    then
        echo ""
        echo "Félicitations, vous venez de saisir le denier élément !"
        echo "Vous avez gagné !"
        game_running=falses
    fi
done