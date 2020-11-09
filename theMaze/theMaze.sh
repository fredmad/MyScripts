echo "************************************************************************************"
echo "************************************************************************************"
echo "*************************************WELCOME TO*************************************"
echo "*****************************************  *****************************************
********* ▄▄▄█████▓ ██░ ██ ▓█████     ███▄ ▄███▓ ▄▄▄      ▒███████▒▓█████  *********
********* ▓  ██▒ ▓▒▓██░ ██▒▓█   ▀    ▓██▒▀█▀ ██▒▒████▄    ▒ ▒ ▒ ▄▀░▓█   ▀  *********
********* ▒ ▓██░ ▒░▒██▀▀██░▒███      ▓██    ▓██░▒██  ▀█▄  ░ ▒ ▄▀▒░ ▒███    *********
********* ░ ▓██▓ ░ ░▓█ ░██ ▒▓█  ▄    ▒██    ▒██ ░██▄▄▄▄██   ▄▀▒   ░▒▓█  ▄  *********
*********   ▒██▒ ░ ░▓█▒░██▓░▒████▒   ▒██▒   ░██▒ ▓█   ▓██▒▒███████▒░▒████▒ *********
*********   ▒ ░░    ▒ ░░▒░▒░░ ▒░ ░   ░ ▒░   ░  ░ ▒▒   ▓▒█░░▒▒ ▓░▒░▒░░ ▒░ ░ *********
*********     ░     ▒ ░▒░ ░ ░ ░  ░   ░  ░      ░  ▒   ▒▒ ░░░▒ ▒ ░ ▒ ░ ░  ░ *********
*********   ░       ░  ░░ ░   ░      ░      ░     ░   ▒   ░ ░ ░ ░ ░   ░    *********
*********           ░  ░  ░   ░  ░          ░         ░  ░  ░ ░       ░  ░ *********"
echo "************************************************************************************"
echo "************************************************************************************"
echo "************************************************************************************"
echo "************************************************************************************"
echo ""
echo "Vous êtes perdu à l'intérieur d'un labyrinthe, essayez de vous échapper..."
echo ""

game_running=true
room_number=1

while [ "$game_running" = true ]
do
    if [ "$room_number" -eq 1 ]
    then
        echo "Dans cette pièce il y a 2 portes : (n)ord et (e)st, Où voulez-vous allez ?"
        echo ""
        echo "‗‗‗‗‗‗‗ n ‗‗‗‗‗‗‗"
        echo "‖               ‖"
        echo "‖       ▴       ‖"
        echo "‖       。▸     e"
        echo "‖               ‖"
        echo "‖              1‖"
        echo "᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀"
        echo ""
        echo "Tapez n suivit d'entrer pour aller au nord..."
        echo "Tapez e suivit d'entrer pour aller à l'est..."
        read choice
        if [ "$choice" = "n" ]
        then
            clear
            echo "> en direction du nord..."
            room_number=4
        elif [ "$choice" = "e" ]
        then
            clear
            echo "> en direction de l'est..."
            room_number=2
        else
            echo "CE CHOIX N'EXISTE PAS !"
        fi
    elif [ "$room_number" -eq 2 ]
    then
        echo "Dans cette pièce il y a 3 portes : (n)ord, (o)uest et (e)st, Où voulez-vous allez ?"
        echo ""
        echo "‗‗‗‗‗‗‗ n ‗‗‗‗‗‗‗"
        echo "‖               ‖"
        echo "‖       ▴       ‖"
        echo "o     ◂ 。▸     e"
        echo "‖               ‖"
        echo "‖              2‖"
        echo "᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀"
        echo ""
	    echo "Tapez o suivit d'entrer pour aller à l'ouest..."
        echo "Tapez n suivit d'entrer pour aller au nord..."
        echo "Tapez e suivit d'entrer pour aller à l'est..."
        read choice
        if [ "$choice" = "n" ]
        then
            clear
            echo "> en direction du nord..."
            room_number=5
        elif [ "$choice" = "o" ]
        then
            clear
            echo "> en direction de l'ouest..."
            room_number=1
        elif [ "$choice" = "e" ]
        then
            clear
            echo "> en direction de l'est..."
            room_number=3
        else
            echo "CE CHOIX N'EXISTE PAS !"
        fi
    elif [ "$room_number" -eq 3 ]
    then
        echo "Dans cette pièce il y a 2 portes : (n)ord et (o)uest, Où voulez-vous allez ?"
        echo ""
        echo "‗‗‗‗‗‗‗ n ‗‗‗‗‗‗‗"
        echo "‖               ‖"
        echo "‖       ▴       ‖"
        echo "o     ◂ 。      ‖"
        echo "‖               ‖"
        echo "‖              3‖"
        echo "᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀᐀"
        echo ""
	    echo "Tapez o suivit d'entrer pour aller à l'ouest..."
        echo "Tapez n suivit d'entrer pour aller au nord..."
 	    read choice
        if [ "$choice" = "n" ]
        then
            clear
            echo "> en direction du nord..."
            room_number=6
        elif [ "$choice" = "o" ]
        then
            clear
            echo "> en direction de l'ouest..."
            room_number=2
        else
            echo "CE CHOIX N'EXISTE PAS !"
        fi
    elif [ "$room_number" -eq 4 ]
    then
        echo "HA HA HA HA HAAAAAAAAAAAAA !!!"
	    echo ""        
        echo "
                                 ___-----------___
                           __--~~                 ~~--__
                       _-~~                             ~~-_
                    _-~                                     ~-_
                   /                                           |
                  |                                             |
                 |                                               |
                |                                                 |
                |                                                 |
                 |  |    _-------_               _-------_    |  |
                 |  |  /~         ~\           /~         ~\  |  |
                  ||  |             |         |             |  ||
                  || |      DIE      |       |     HUMAN     | ||
                  |   \_           /           \           _/   |
                 |      ~~--_____-~    /~V~\    ~-_____--~~      |
                 |                    |     |                    |
                |                    |  /^\  |                    |
                 |                    ~~   ~~                    |
                  \_         _                       _         _/
                    ~--____-~ ~\                   /~ ~-____--~
                         \     /\                 /\     /
                          \    | ( ,           , ) |    /
                           |   | (~(__(  |  )__)~) |   |
                            |   \/ (  (~~|~~)  ) \/   |
                             |   |  [ [  |  ] ]  /   |
                              |                     |
                                ~-_             _-~
                                   ~--___-___--~
        "
        echo ""
        echo "C'est un piège ! Vous êtes mort :/"
        echo ""
	    echo "Tapez 'reset' suivit d'entrer pour réinitialiser le jeu"
        read choice
	    if [ "$choice" = "reset" ]
	    then
	        clear
	        room_number=1
	    fi
    elif [ "$room_number" -eq 5 ]
    then
        echo "Cette pièce est condamnée, retourne sur tes pas !"
	    echo ""
        echo " 
                |___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
                  |___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
                |___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
                  |___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
                |___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
                  |___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
                |___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
                  |___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
                |___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
                  |___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
                |___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
                  |___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
                |___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
        "
        echo ""
	    echo "Tapez s suivit d'entrer pour aller au sud..."
	    read choice
        if [ "$choice" = "s" ]
        then
            clear
            echo "> en direction du sud..."
            room_number=2
        else
            echo "CE CHOIX N'EXISTE PAS !"
        fi
    elif [ "$room_number" -eq 6 ]
    then
        echo ">>>>>>>>>>> Vous avez trouvé la sortie... Félicitations :)"
	    echo ""
        echo "
                          _______         .::::::::::::::.         _______          
                --------/       /|       .:::::;;;:::;;:::.       |\       \-------  
                _______/_______/ |      .::::::;;:::::;;:::.      | \_______\________
                 |     [===  =] /|     .:::::;;;::::::;;;:::.     |\ [==  = ]   |    
                _|_____[ = == ]/ |    .:::::;;;:::::::;;;::::.    | \[ ===  ]___|____
                     | [  === ] /|   .:::::;;;::::::::;;;:::::.   |\ [=  ===] |      
                ______|[== = =]/ |  .:::::;;;::::::::::;;;:::::.  | \[ ==  =]_|______
                 |     [ == = ] /| .::::::;;:::::::::::;;;::::::. |\ [== == ]      | 
                __|____[=  == ]/ |.::::::;;:::::::::::::;;;::::::.| \[  === ]______|_
                 |     [ === =] /.::::::;;::::::::::::::;;;:::::::.\ [===  =]   |    
                ____|__[ == ==]/.::::::;;;:::::::::::::::;;;:::::::.\[=  == ]___|_____
            "
        echo ""
        game_running=falses
    fi
done
