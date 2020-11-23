# Flyway Demo

This is a simple demo showing how to use Flyway Database Migrations.

1. Run database (MySQL) and adminer

``` shell
docker-compose up
```

- [MySQL][mysql] will be available on port 3306
- [Adminer][adminer] will be [available here][adminer-localhost]
- Connect to the db using the following parameters:
  - Username: `username`
  - Password: `password`
  - Database: `testdb`

2. Migrate database

``` shell
docker run --rm -v $PWD/flyway:/flyway/sql flyway/flyway \
-url=jdbc:mysql://host.docker.internal:3306/testdb \
-user=username -password=password \ 
-locations=filesystem:/flyway/sql/migrations \ 
migrate
```

3. Migrate database and load test data

``` shell
docker run --rm -v $PWD/flyway:/flyway/sql flyway/flyway \
-url=jdbc:mysql://host.docker.internal:3306/testdb \
-user=username -password=password \
-locations=filesystem:/flyway/sql/migrations,/flyway/sql/testdata \
migrate
```

[mysql]: https://www.mysql.com
[adminer]: https://www.adminer.org/
[adminer-localhost]: http://localhost:8000
