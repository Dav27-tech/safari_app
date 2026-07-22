# 🌍 Safari

**Safari** est une application mobile développée avec **Flutter** permettant de découvrir des destinations touristiques à travers le monde.

L'application met en avant une interface moderne inspirée de **Material Design 3**, avec une expérience utilisateur fluide, un thème clair/sombre et une navigation intuitive.

---

# 📱 Aperçu

Safari permet aux utilisateurs de :

- 🌍 Explorer différentes destinations touristiques
- 🔍 Rechercher une destination
- 🗂️ Filtrer les destinations par catégorie
- ❤️ Consulter les destinations favorites
- 📄 Voir les détails d'une destination
- ➕ Ajouter une nouvelle destination via un formulaire validé
- 👤 Consulter un profil utilisateur
- 🌙 Basculer entre le thème clair et sombre

---

# ✨ Fonctionnalités

- Écran de bienvenue
- Liste des destinations
- Recherche en temps réel
- Filtrage par catégorie
- Détail d'une destination
- Formulaire d'ajout avec validation
- Gestion des favoris
- Profil utilisateur
- Thème clair / sombre
- Navigation avec GoRouter
- Responsive (mobile et tablette)

---

# 🖼️ Captures d'écran

Les principales interfaces de l'application sont :

- Bienvenue
- Explorer
- Détails
- Ajouter une destination
- Favoris
- Profil

---

# 🏗️ Architecture du projet

```
lib/
│
├── data/
│   └── destinations.dart
│
├── models/
│   └── destination.dart
│
├── screens/
│   ├── welcome_screen.dart
│   ├── home_screen.dart
│   ├── detail_screen.dart
│   ├── add_destination_screen.dart
│   ├── favorites_screen.dart
│   └── profile_screen.dart
│
├── themes/
│   ├── app_theme.dart
│   └── app_colors.dart
│
├── widgets/
│   ├── app_bottom_navigation_bar.dart
│   ├── category_chip.dart
│   ├── custom_header.dart
│   ├── destination_card.dart
│   ├── info_badge.dart
│   └── search_bar_widget.dart
│
├── routes/
│   └── router.dart
│
├── controllers/
│   └── theme_controller.dart
│
└── main.dart
```

---

# 🧰 Technologies utilisées

- Flutter
- Dart
- Material Design 3
- GoRouter
- ValueNotifier
- Responsive Layout
- Network Images

---

# 📦 Dépendances

```yaml
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.8
  go_router: ^16.1.0
```

---

# 🚀 Installation

## 1. Cloner le projet

```bash
git clone https://github.com/Dav27-tech/safari_app
```

---

## 2. Accéder au dossier

```bash
cd safari
```

---

## 3. Installer les dépendances

```bash
flutter pub get
```

---

## 4. Vérifier l'environnement Flutter

```bash
flutter doctor
```

Corrigez les éventuels problèmes indiqués avant de lancer l'application.

---

## 5. Lancer l'application

Sur un émulateur Android :

```bash
flutter run
```

Ou sélectionner un appareil connecté puis exécuter :

```bash
flutter run
```

---

# 📲 Compilation

### APK de développement

```bash
flutter build apk
```

### APK Release

```bash
flutter build apk --release
```

---

# 📂 Données

Les destinations sont actuellement stockées localement dans :

```
lib/data/destinations.dart
```

Aucune base de données n'est utilisée dans cette première version.

---

# 🎨 Thèmes

L'application prend en charge :

- ☀️ Thème clair
- 🌙 Thème sombre

Le changement de thème est accessible depuis la page **Profil**.

---

# 📱 Responsive

Safari s'adapte automatiquement aux :

- Smartphones Android
- Tablettes Android

Le nombre de colonnes et les espacements sont ajustés en fonction de la largeur de l'écran.

---

# 🔍 Fonctionnalités Flutter utilisées

- StatelessWidget
- StatefulWidget
- Custom Widgets
- ListView
- GridView
- Stack
- Card
- Wrap
- Chip
- NavigationBar
- Drawer
- Form
- TextFormField
- DropdownButtonFormField
- SliverAppBar
- FlexibleSpaceBar
- ValueNotifier
- ValueListenableBuilder
- GoRouter

---

# 📋 Exigences du projet couvertes

| Exigence                     | Statut |
| ---------------------------- | :----: |
| Au moins 4 écrans            |   ✅   |
| Navigation GoRouter          |   ✅   |
| Recherche                    |   ✅   |
| Filtrage                     |   ✅   |
| Détail avec paramètres       |   ✅   |
| Formulaire validé            |   ✅   |
| Thème clair / sombre         |   ✅   |
| 8 widgets Flutter différents |   ✅   |
| Widgets réutilisables        |   ✅   |
| Responsive                   |   ✅   |
| Séparation UI / données      |   ✅   |

---

# 🔮 Améliorations futures

Les prochaines versions pourront intégrer :

- Gestion d'état avec Provider ou Riverpod
- Persistance locale avec Hive ou Isar
- Authentification utilisateur
- Base de données Firebase
- Réservation réelle
- Téléchargement des images
- API de destinations
- Cartographie avec Google Maps
- Mode hors connexion

---

# 👨‍💻 Auteur

**David Amani**

Étudiant en Génie Logiciel

Projet réalisé dans le cadre d'un exercice pratique Flutter sur **Next Flutter**.

---

# 📄 Licence

Ce projet est fourni à des fins pédagogiques et peut être librement utilisé pour l'apprentissage de Flutter.
