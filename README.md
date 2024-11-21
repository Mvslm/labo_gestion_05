# ue19-lab-05

Ce code est une application Python 3 qui utilise la librairie requests pour interroger un service d'API public. L'application est construite avec FastAPI et Uvicorn, et elle interagit avec le service PunAPI pour afficher un jeu de mot.

## Comment Installer

1. Clonez le dépôt :
```bash
git clone https://github.com/Mvslm/ue19-lab-05.git
```

2. Naviguer dans le repertoire du projet :
```bash
cd ue19-lab-05
```

3. Installer les dépendances :
```bash
pip install -r requirements.txt
```

## Deux choix d'utilisation
## Utilisation avec Docker
1. Construisez l'image Docker :
```bash
docker image build . -t "ma_petite_api"
```

2.Exécutez le conteneur Docker :
```bash
docker container run -p 8000:8000 -t ma_petite_api:latest
```


Accédez à l'API dans votre navigateur à l'adresse http://127.0.0.1:8000/ pour voir les jeux de mots.

## Licence
Ce projet est sous licence MIT - consultez le fichier LICENCE pour plus de détails.
