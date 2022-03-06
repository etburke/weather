#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE weather;
EOSQL


psql -U postgres -d weather < /docker-entrypoint-initdb.d/weather.sql

psql -U postgres -d weather -c "\COPY conditions FROM /docker-entrypoint-initdb.d/weather_small_conditions.csv CSV"
psql -U postgres -d weather -c "\COPY locations FROM /docker-entrypoint-initdb.d/weather_small_locations.csv CSV"