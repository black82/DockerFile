FROM thajeztah/pgadmin4 as pgadmin4
ENV PGADMIN_DEFAULT_EMAIL=blackrailean@gmail.com
ENV PGADMIN_DEFAULT_PASSWORD=Admin1111
ENV PG_ADMIN_DATA_DIR=/pgadmin/
ENV PG_ADMIN_PORT=5050


EXPOSE 5050

ENTRYPOINT ["/entrypoint.sh"]


