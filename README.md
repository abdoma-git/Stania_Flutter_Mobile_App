# STANIA - Application Mobile de Visualisation de Matchs

STANIA est une application mobile développée avec Flutter qui permet de visualiser les matchs stockés dans une base de données. Lorsque l'utilisateur clique sur un match terminé, il peut consulter ses détails.

## Fonctionnalités
- Affichage de la liste des matchs.
- Mise en avant des matchs "en cours" avec un style visuel différent (gris).
- Affichage des détails d’un match terminé lorsqu'on clique dessus.

## Prérequis
Avant de pouvoir exécuter l'application, assurez-vous que Flutter soit installé sur votre système.

### Étapes de configuration de Flutter sur Windows :
1. **Télécharger et installer Flutter :**
   - Rendez-vous sur le site officiel de Flutter : [flutter.dev](https://flutter.dev).
   - Téléchargez le SDK Flutter pour Windows.
   - Extrayez le fichier ZIP téléchargé dans un répertoire de votre choix (ex: `C:\src\flutter`).

2. **Mettre Flutter dans le PATH :**
   - Ajoutez le chemin d’accès à Flutter dans votre variable d’environnement `PATH` :
     - Ouvrez les "Paramètres Système Avancés".
     - Cliquez sur "Variables d’environnement".
     - Modifiez la variable `PATH` et ajoutez le chemin vers le dossier `flutter\bin`.

3. **Vérifier l'installation de Flutter :**
   - Ouvrez une console `cmd` et exécutez la commande suivante pour vérifier que Flutter est bien installé :
     ```bash
     flutter doctor
     ```
   - Suivez les recommandations fournies pour installer les composants manquants (Android Studio, etc.).

4. **Configurer un émulateur ou un appareil physique :**
   - Utilisez Android Studio pour configurer un émulateur Android, ou connectez un appareil physique avec le mode développeur activé.

### Installation de l'APK de STANIA :
Si vous souhaitez installer l'APK directement sur votre appareil :
1. **Téléchargez l'APK :**
   - Transférez l'APK de l'application STANIA sur votre appareil Android.

2. **Installer l'APK :**
   - Ouvrez le fichier APK sur votre appareil et suivez les instructions d'installation.
   - Assurez-vous d'activer l'installation d'applications provenant de sources inconnues si cela vous est demandé.

## Base de données
L'application se connecte à une base de données contenant les informations des matchs. Voici une capture d'écran de la structure de la base de données utilisée :

![Capture d'écran de la base de données](Capture%20STANIA%20Flutter/base%20de%20donnes.PNG)
### Remplissage de la base de données par des nouveaux matchs pour le test

![Capture d'écran du remplissage](Capture%20STANIA%20Flutter/inserts.PNG)

### API pour la récuperation des données de la table des matchs de la bse de données de STANIA
![Capture d'écran du php](Capture%20STANIA%20Flutter/phpp.PNG)

## Captures d'écran de l'application mobile STANIA
Voici quelques captures d'écran montrant l'interface de l'application :

1. **Liste des matchs :**
   ![Liste des matchs](Capture%20STANIA%20Flutter/c2.PNG)
   ![Liste des matchs_phone](Capture%20STANIA%20Flutter/t1.PNG)


2. **Détails d'un match terminé :**

   ![Détails d'un match](Capture%20STANIA%20Flutter/t2.PNG)

