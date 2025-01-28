# README - Affichage des informations système avec .bashrc

## Description du projet
Ce projet propose une personnalisation du fichier `.bashrc` pour afficher des informations système utiles à chaque ouverture d'un terminal. Vous pourrez voir :

- Une bannière d'accueil colorée.
- Les températures du CPU et du GPU.
- La date et l'heure actuelles.

Le script utilise des couleurs pour rendre les informations plus lisibles et inclut un design graphique pour une présentation attrayante.

## Fonctionnalités principales
1. Affichage d'une bannière en ASCII art en jaune.
2. Température actuelle du CPU en rouge.
3. Température actuelle du GPU en rouge.
4. Date et heure affichées en vert.

## Prérequis
- Un système Linux (testé sur Raspberry Pi et autres distributions Linux compatibles).
- Accès au fichier `.bashrc` de l'utilisateur.
- Les outils suivants doivent être disponibles sur votre système :
  - `vcgencmd` pour la température CPU (spécifique aux Raspberry Pi).
  - Accès au fichier `/sys/class/thermal/thermal_zone0/temp` pour la température GPU.

## Installation
1. Ouvrez le fichier `.bashrc` dans votre répertoire utilisateur avec un éditeur de texte :
   ```bash
   nano ~/.bashrc
   ```

2. Ajoutez le code nécessaire à la fin du fichier `.bashrc`.

3. Sauvegardez et fermez le fichier en appuyant sur `CTRL+O`, puis `CTRL+X`.

4. Rechargez votre fichier `.bashrc` pour appliquer les changements :
   ```bash
   source ~/.bashrc
   ```

## Aperçu

Une fois le fichier `.bashrc` modifié et rechargé, vous verrez une bannière colorée et les informations système apparaître à chaque fois que vous ouvrez un nouveau terminal.

## Contributions
Les contributions sont les bienvenues ! Si vous souhaitez améliorer ce projet, n'hésitez pas à soumettre une pull request ou à ouvrir une issue.

