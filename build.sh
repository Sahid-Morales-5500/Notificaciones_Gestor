#!/usr/bin/env bash
set -o errexit

# Instala las dependencias usando pipenv
pipenv install

# Ejecuta los comandos de Django dentro del entorno virtual
pipenv run python manage.py collectstatic --noinput
pipenv run python manage.py migrate
