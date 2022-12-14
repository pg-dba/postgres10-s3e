FROM sqldbapg/postgres10-s3:latest

ENV DEBIAN_FRONTEND noninteractive
ENV PGBKP /var/lib/postgresql/backups

# this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
RUN mkdir -p "$PGBKP" && chown -R postgres:postgres "$PGBKP" && chmod 777 "$PGBKP"
VOLUME /var/lib/postgresql/backups

# before init - /var/lib/postgresql/data not exists, postgres user not exists
# cp /tmp/archive_wal.sh /var/lib/postgresql/data/archive_wal.sh
# chown postgres:postgres /var/lib/postgresql/data/archive_wal.sh && chmod 700 /var/lib/postgresql/data/archive_wal.sh
