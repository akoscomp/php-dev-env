# php-dev-env

Docker based development envoronment for a php project with database. Initially include diferent versions of php and database engines.

## RUN:
* `git clone git@github.com:akoscomp/php-dev-env.git`
* `cd php-dev-env`
* `make build`

## Usage
Open in browser the adminer adn phpVERSION site:
* http://localhost:8000/
* http://localhost:8076/
* http://localhost:8080/
* http://localhost:8081/

### Adminer
* As Server you can use: mysql57, mysql80, mariadb1010, postgres15
* As mariadb/mysql user can use root with mariadb/mysql root password
* For postgres the user is postgres and the password is POSTGRES_PASSWORD

## Customize:
* Add your php files in ./data/webroot/phpxx folders.
* In phpxx/Dockerfile can add more preinstalled php modules. Docs: https://hub.docker.com/_/php
