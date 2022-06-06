////////// **ЗАМЕТКИ ДЛЯ СЕБЯ** ////////////

WORKDIR /app

COPY . .

CMD["python", "index.py"]

root@45.67.58.152

git clone
//git clone https://github.com/bd240897/TestDocker.git

docker container prune
docker build -t name .

docker run --name first_container first

docker start -i first_container

cmd.exe /k ""C:\Games\Python_works\TestDocker\venv\Scripts\activate.bat""
ИЛИ изменить пути к и ПЕРЕЗАПУСТИТЬ pycharm
* должна стоять галочка в stting - termial - active
//https://stackoverflow.com/questions/22288569/how-do-i-activate-a-virtualenv-inside-pycharms-terminal

>pip freeze > requirements.txt

django in docker
//https://fixmypc.ru/post/sozdanie-i-zapusk-konteinera-docker-s-django-postgressql-gunicorn-i-nginx/

//мой сервер
http://45.67.58.152:8000/

// запуск docker-compose (-d - в фоне)
docker-compose build
docker-compose up -d
//  exec               Execute a command in a running container/ web - имя контенейра в compose
docker-compose exec web python manage.py migrate --noinput
docker-compose exec db psql --username=django_user --dbname=django_db
\l
\dt
\q

//Открываем консоль PostgreSQL postgres psql postgres
//\dt – список таблиц
//\l – список баз данных
/\q - выхож

// изменить chmod уже на сервере у точки входа

// логи уже работющего контенера
docker log
// войти в контенер
docker exec -ti {{ container name }} /bin/sh

sudo -i -u postgres psql --username=django_user --dbname=django_db
\l - список БД
\c database_name; - подключение к БД
\dt - таблицы в текущей БД



