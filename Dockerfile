FROM sqldbapg/postgres-s3:10

RUN mkdir -p /var/lib/postgresql/backups && \
    chown -R 999:999 /var/lib/postgresql/backups && \
    chmod 777 /var/lib/postgresql/backups

VOLUME /var/lib/postgresql/backups
