# Oppskrift på opprette database

Logg inn på UBUNTU

Gå til rett katalog
```
cd /var/www/html
```

Hente prosjektet fra git hub`
```
git clone https://github.com/holidayobvious/barevifter.git
```

Koble til mariadb
```
sudo mariadb -u root
```

Kjøre databasescriptene
som opprette schema og tabeller 
og setter inn data
```
source /var/www/html/barevifter/database/create_tables.sql
source /var/www/html/barevifter/database/insert_data.sql
```