# Backend Dockerfile - Python + FastAPI
FROM python:3.12

# Créer un utilisateur non root
RUN useradd -m appuser

WORKDIR /app

# Copier le requirements avant le code pour utiliser le cache Docker intelligemment
COPY requirements.txt /app/

# Installer les dépendances sans cache
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste de l'application
COPY . /app/

# Changer pour l'utilisateur non root
USER appuser

# Exposer le port
EXPOSE 8000

# Healthcheck pour vérifier que l'API répond
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:8000/health || exit 1

# Commande de lancement
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
