#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt
#python manage.py migrate
if [ $CREATE_SUPERUSER == true ]
then
  python manage.py createsuperuser --no-input
fi
