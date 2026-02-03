# Frontend Dockerfile - simple HTML / Nginx
FROM nginx:alpine

# Créer un utilisateur non root
RUN adduser -D appuser

WORKDIR /usr/share/nginx/html

# Copier les fichiers frontend
COPY . /usr/share/nginx/html

# Changer pour l'utilisateur non root
USER appuser

# Exposer le port
EXPOSE 80

# Healthcheck pour vérifier que le serveur Nginx répond
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:80 || exit 1
