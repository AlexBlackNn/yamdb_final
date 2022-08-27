#!/bin/sh
python manage.py collectstatic --noinput &&
python manage.py migrate &&
gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000 --timeout 90
