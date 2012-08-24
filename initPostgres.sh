# command used to create a new postgres database cluster 

#define PGDATA folder
export PGDATA=/foo/bar

#define PGPORT
export PGPORT=12345

#creates a new PostgreSQL database cluster
#initdb use PGPORT and PGDATA
#wal files will be stored into /foo/wal
initdb -E UTF8 --locale=fr_FR.utf8 -X /foo/wal -U admindbuser

#start the new postgres database cluster and log into /foo/log/postgres
pg_ctl -l /foo/log/postgres start

#create a new user named simpleuser 
createuser -Sdr -U admindbuser simpleuser

#create a new database called foobase for this simpleuser
createdb -E UTF8 -O simpleuser foobase "My new database"

#init simple user password
psql -d foobase -c "alter user simpleuser with password 'passwd'"
