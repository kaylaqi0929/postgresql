#!/bin/sh

work_dir=$(dirname $0)

echo 'POSTGRES_PASSWORD='$(pass perso/Servers/PostgreSQL/kube-lordran/postgres) >>$work_dir/secrets.env
