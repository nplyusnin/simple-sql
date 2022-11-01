createdb -U postgres simple
psql -U postgres -d simple -f /docker-entrypoint-initdb.d/script.sql
