#!/bin/bash
exec odoo \
  --http-port="${PORT:-10000}" \
  --db_host="$DB_HOST" --db_port=5432 \
  --db_user="$DB_USER" --db_password="$DB_PASSWORD" \
  --db_sslmode=require \
  -d "$DB_NAME" --no-database-list \
  --workers=0 --max-cron-threads=0 \
  --proxy-mode \
  --admin_passwd="$ADMIN_PASSWD"