#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt
#python manage.py collectstatic --no-input
python manage.py migrate
python manage.py runworker --settings=myproject.settings -v2
if [ $CREATE_SUPERUSER ];
then
  python manage.py createsuperuser --no-input
fi