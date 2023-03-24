# See https://github.com/opengisch/qfieldcloud

cd qfieldcloud

docker compose up -d --build

docker compose exec app python manage.py migrate

docker compose run app python manage.py collectstatic --noinput

docker compose exec app python manage.py status

docker compose run app python manage.py createsuperuser --username elymperis --email elymperis@gmail.com