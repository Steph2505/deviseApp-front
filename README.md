# DeviseApp — Frontend Vue.js

Application de gestion des devises développée avec Vue.js 3 et Laravel 10.

## Prérequis

- Node.js >= 18
- npm >= 9
- Backend Laravel en cours d'exécution

## Installation

# Cloner le projet
git clone https://github.com/TON_USERNAME/deviseApp.git
cd deviseApp

# Installer les dépendances
npm install

# Configurer l'environnement
cp .env.example .env

# Modifier VITE_API_URL dans .env selon votre configuration
VITE_API_URL=http://localhost:8000/api

# Lancer le serveur de développement
npm run dev

## Stack technique

- Vue.js 3 (Composition API)
- Pinia (gestion d'état)
- Vue Router
- Axios