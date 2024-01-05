1. Install Postgres using asdf
1. In order to run `initdb`, the correct files and permissions must exist.

```
sudo mkdir /usr/local/var/postgres
sudo chmod 775 /usr/local/var/postgres
sudo chown $(whoami) /usr/local/var/postgres
initdb /usr/local/var/postgres
```
