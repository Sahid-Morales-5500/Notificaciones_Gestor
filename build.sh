#!/usr/bin/env bash

set -o errexit

# Si estás usando un Pipfile, instala así:
pipenv install  # Esto instalará las dependencias del Pipfile

# O, si prefieres `requirements.txt`, usa:
# pip install -r requirements.txt

# Ejecuta las tareas de Django
pipenv run python manage.py collectstatic --noinput
pipenv run python manage.py migrate
