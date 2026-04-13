```python
### BACKUP PSQL

export PGPASSWORD='7r2pGoHyJCxXcsH9wdpmcRJBh'


pg_dumpall -h srv421843.hstgr.cloud -p 5432 -U postgresadmin --globals-only > globals.sql

 
  pg_dump -h srv421843.hstgr.cloud -p 5432 -U postgresadmin \
  -F c -b -v --no-owner --no-privileges \
  -f db.dump alianca-sistema
  
  
# RESTORE

export PGPASSWORD='PU8vMw4jJqeEVWsoqFZyxodzk'

psql -h localhost -p 5432 -U postgres -f globals.sql

createdb -h localhost -p 5432 -U postgres sisfin-hml

pg_restore -h localhost -p 5432 -U postgres \
  -d sisfin-hml -v db.dump

```
