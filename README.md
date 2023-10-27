--Système de Gestion de Favoris pour Répertoires (Bash)--

Ce projet consiste en un script Bash qui permet de gérer vos répertoires favoris en enregistrant leur emplacement dans un fichier caché .favorites_bash dans votre dossier personnel. Vous pouvez facilement sauvegarder, accéder, supprimer et lister vos favoris pour simplifier la navigation dans le système de fichiers.


Fonctionnalités

Le système de gestion de favoris pour répertoires offre les fonctionnalités suivantes :

1. Sauvegarder un Nouveau Favori (Save) - S : Vous pouvez sauvegarder un nouveau favori en utilisant la commande BUT_3_MiniProjet.sh S nom_du_favori. Le script enregistre le répertoire courant comme un favori associé au nom spécifié.

2. Se Déplacer dans un Répertoire Favori (Change) - C : Pour accéder rapidement à un répertoire favori, utilisez la commande BUT_3_MiniProjet.sh C nom_du_favori. Si le favori existe, le script changera votre répertoire de travail vers le répertoire favori.

3. Supprimer un Favori (Remove) - R : Si vous n'avez plus besoin d'un répertoire favori, vous pouvez le supprimer en utilisant la commande BUT_3_MiniProjet.sh R nom_du_favori.

4. Lister les Favoris (List) - L : Pour afficher la liste de tous vos répertoires favoris, utilisez la commande BUT_3_MiniProjet.sh L.


Installation

1. Téléchargez le script depuis le référentiel GitHub à l'adresse :
   https://github.com/Lukyyy9/BUT_3_MiniProjet

2. Placez le script dans un répertoire de votre choix.

3. Ouvrez un terminal et d ́eplacez-vous dans le répertoire du script.

4. Rendez le script exécutable en utilisant la commande chmod +x BUT_3_MiniProjet.sh

5. Ajoutez le répertoire du script à votre chemin (PATH) en éxécutant les commandes suivantes :
   mkdir -p ~/bin
   mv BUT_3_MiniProjet.sh ~/bin/
   export PATH ="$HOME/bin:$PATH"
   source ~/.bashrc


Utilisation

Voici comment utiliser le système de gestion de favoris pour répertoires :

- Sauvegarder un nouveau favori :
   BUT_3_MiniProjet.sh S nom_du_favori

- Se déplacer dans un répertoire favori :
   BUT_3_MiniProjet.sh C nom_du_favori

- Supprimer un favori :
   BUT_3_MiniProjet.sh R nom_du_favori

- Lister les favoris :
   BUT_3_MiniProjet.sh L


Exemples

Sauvegarder un favori :
$ BUT_3_MiniProjet.sh S mon_favori
Favori "mon_favori" sauvegardé.

Se déplacer dans un répertoire favori :
$ BUT_3_MiniProjet.sh C mon_favori
Vous êtes maintenant dans le répertoire favori "mon_favori".

Supprimer un favori :
$ BUT_3_MiniProjet.sh R mon_favori
Favori "mon_favori" supprimé.

Lister les favoris :
$ BUT_3_MiniProjet.sh L
Liste de favoris :
1. mon_favori
2. autre_favori


Contributeurs

[Lucas 'Lukyyy9' Buonocore] - Développeur principal