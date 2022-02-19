#!/bin/sh

python manage.py migrate --no-input

python manage.py collectstatic --no-input

exec python manage.py runserver

#exec gunicorn stocks_products.wsgi:application -b 0.0.0.0 --reload


