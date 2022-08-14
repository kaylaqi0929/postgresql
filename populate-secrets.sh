#!/bin/sh

work_dir=$(dirname $0)

echo 'POSTGRES_PASSWORD='$(pass perso/Servers/PostgreSQL/kube-lordran/postgres) >$work_dir/secrets.env

echo 'B2_KEY_ID='$(pass perso/Infra/backblaze.com/backups_sgbd/keyid) >$work_dir/backup-postgres.env
echo 'B2_APPLICATION_KEY='$(pass perso/Infra/backblaze.com/backups_sgbd/secret) >>$work_dir/backup-postgres.env
echo 'PGPASSWORD='$(pass perso/Servers/PostgreSQL/kube-lordran/postgres) >>$work_dir/backup-postgres.env
echo 'PGHOST=postgres14' >>$work_dir/backup-postgres.env
echo 'PGUSER=postgres' >>$work_dir/backup-postgres.env
