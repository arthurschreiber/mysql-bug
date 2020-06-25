### Readme

Start services via `docker-compose`:

```sh
$ docker-compose up
```

Run reproduction steps:

```sh
$ docker-compose run mysql mysql -hmysql -uuser1 -ppassword -e "SELECT table_name FROM information_schema.tables WHERE table_schema = 'menagerie';"

# +------------+
# | table_name |
# +------------+
# | pet        |
# +------------+

$ docker-compose run mysql mysql -hmysql -uuser1 -ppassword -e "SELECT table_name FROM information_schema.tables WHERE table_schema = 'menagerie' and table_name = 'pet';"

# +------------+
# | table_name |
# +------------+
# | pet        |
# +------------+

$ docker-compose run mysql mysql -hmysql -uuser2 -ppassword -e "SELECT table_name FROM information_schema.tables WHERE table_schema = 'menagerie';"

# +------------+
# | table_name |
# +------------+
# | other_pet  |
# +------------+

$ docker-compose run mysql mysql -hmysql -uuser2 -ppassword -e "SELECT table_name FROM information_schema.tables WHERE table_schema = 'menagerie' and table_name = 'pet';"

# +------------+
# | table_name |
# +------------+
# | pet        |
# +------------+
```
