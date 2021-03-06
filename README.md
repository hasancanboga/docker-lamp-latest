# Docker LAMP Scaffolding

Easy to use LAMP stack for local development with Docker.


Includes the latest available versions of PHP, Apache, MySQL, PMA and Composer.

<br>

The PHP version can be changed in the `Dockerfile`. 

Apache is installed by the PHP image. The document root can be changed inside the `Dockerfile`. 

The MySQL version needs to be changed in `docker-compose.yml` file

phpMyAdmin will run on port 3000. can be changed in `docker-compose.yml` file

<br>

### To run the containers:

```shell
docker compose up
```

If you can see the MYSQL version when you go to http://127.0.0.1 then your container installation was successful.

<br>

### To run PHP / Apache / Composer commands, go into the main container shell:

```shell
docker exec -it php bash
```

Note that the `php` is the `container_name` configured inside `docker-compose.yml` file

<br>

### To run MySQL commands:

```shell
docker exec -it mysql bash
```
<br>

## License

This project is licensed under [GNU GPLv3.0](LICENSE).
