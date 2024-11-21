FROM python:3.11

# Ajout d'un utilisateur non root
RUN useradd -ms /bin/bash user
USER user

# Définir le répertoire de travail
WORKDIR /home/user

# Copier le fichier requirements.txt dans le conteneur
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt && rm requirements.txt

# Copier les fichiers source dans le conteneur
COPY . .

# Exposer le port utilisé par l'application
EXPOSE 8000

# Définir le PATH
ENV PATH="/home/user/.local/bin:${PATH}"

# Commande pour lancer l'application
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
