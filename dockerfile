# Utiliser une image Node.js officielle
FROM node:16

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers
COPY . .

# Exposer le port utilisé par l'application
EXPOSE 5000

# Commande pour lancer l'application
CMD ["npm", "start"]

