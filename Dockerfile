FROM node:14

# Installer http-server globalement
RUN npm install -g http-server

# Dossier de l'app
WORKDIR /app

# Copier tout (index.html, styles.css, script.js, dossier images)
COPY . .

# Exposer le port
EXPOSE 8080

# Lancer le serveur sur ce port
CMD ["http-server", ".", "-p", "8080"]
