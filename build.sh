#!/usr/bin/env bash

set -o errexit

pipenv install -r Pipfile

python manage.py collectstatic --noinput
python manage.py migrate