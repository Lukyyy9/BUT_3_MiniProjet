#!/bin/bash

# MANUEL D'UTILISATEUR se trouve dans le fichier BUT_3_MiniProjet.1

FAVORITES_FILE="$HOME/.favorites_bash"

# Initialisation de la liste des favoris
if [ ! -e "$FAVORITES_FILE" ]; then
    touch "$FAVORITES_FILE"
fi

# Fonction S (Save) pour sauvegarder un nouveau favori
S() {
    if [ $# -ne 1 ]; then
        echo "Usage: S <nom_du_favori>"
    else
        echo "$1 -> $(pwd)" >> "$FAVORITES_FILE"
        echo "Favori \"$1\" sauvegardé."
    fi
}

# Fonction C (Change) pour se déplacer dans un répertoire favori
C() {
    if [ $# -ne 1 ]; then
        echo "Usage: C <nom_du_favori>"
    else
        local favorite_path
        favorite_path=$(grep -F "$1 ->" "$FAVORITES_FILE" | sed 's/.* -> //')
        if [ -n "$favorite_path" ]; then
            cd "$favorite_path"
            echo "Vous êtes maintenant dans le répertoire favori \"$1\"."
        else
            echo "Le répertoire favori \"$1\" n'existe pas."
        fi
    fi
}

# Fonction R (Remove) pour supprimer un favori de la liste
R() {
    if [ $# -ne 1 ]; then
        echo "Usage: R <nom_du_favori>"
    else
        if grep -q -F "$1 ->" "$FAVORITES_FILE"; then
            sed -i -e "/$1 ->/d" "$FAVORITES_FILE"
            echo "Favori \"$1\" supprimé."
        else
            echo "Le répertoire favori \"$1\" n'existe pas."
        fi
    fi
}

# Fonction L (List) pour afficher la liste de tous les favoris
L() {
    echo "Liste de favoris :"
    grep -F " -> " "$FAVORITES_FILE" | awk '{print NR ". " $1}'
}

# Exécution du script principal
case $1 in
    "S") S "$2" ;;
    "C") C "$2" ;;
    "R") R "$2" ;;
    "L") L ;;
    *)
        echo "Usage :"
        echo "S <nom_du_favori> : Sauvegarder un favori."
        echo "C <nom_du_favori> : Se déplacer dans un répertoire favori."
        echo "R <nom_du_favori> : Supprimer un favori."
        echo "L : Afficher la liste des favoris."
        ;;
esac
