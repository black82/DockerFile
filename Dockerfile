FROM postgres

ARG password=defaultPassword
USER postgres
RUN /etc/init.d/postgresql start && psql --command "CREATE USER docker WITH SUPERUSER PASSWORD '$password';" && createdb -O docker docker
