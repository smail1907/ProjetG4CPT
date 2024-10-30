# ProjetG4CPT
L’objectif de ce projet est de créer un script Shell qui extrait périodiquement la température actuelle d'une ville donnée ainsi que les prévisions météorologiques pour le lendemain en utilisant le service wttr.in. Le script enregistrera les informations extraites dans un fichier texte, chaque enregistrement devant apparaître sur une seule ligne. 
1-version 1
Dans cette version une nous avons extrait les données meteo d'une ville qui sera entrée par l'utilisateur et enregistrer ces données dans un fichier text;le script est dans un fichier Extracteur_Météo et sa sortie sera redirigée vers le fichier meteo.txt.
2-version 2 
Pour configurer une tâche équivalente à cron sous Windows, vous devez utiliser le Planificateur de tâches. Voici comment procéder en quelques étapes simples.

Tout d'abord, ouvrez le Planificateur de tâches en recherchant Planificateur de tâches dans le menu Démarrer et en l'ouvrant. Ensuite, créez une tâche en cliquant sur Créer une tâche dans le panneau de droite.

Vous devez ensuite configurer les déclencheurs et l'action. Pour les déclencheurs, allez dans l'onglet Déclencheurs et ajoutez un déclencheur pour définir quand la tâche doit s'exécuter, par exemple, tous les jours à une certaine heure. Pour les actions, allez dans l'onglet Actions et cliquez sur Nouvelle pour ajouter une action. Sélectionnez Démarrer un programme et indiquez le chemin vers votre script .bat ou .sh.

Enfin, configurez les options de sécurité et enregistrez la tâche. Elle s’exécutera désormais selon la planification définie.
