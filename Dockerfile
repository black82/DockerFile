FROM dpage/pgadmin4
ENV PGADMIN_DEFAULT_EMAIL i.railean@reply.it  
ENV PGADMIN_DEFAULT_PASSWORD 111111
RUN sudo mkdir "/var/log/pgadmin"
RUN sudo chmod a+wrx "/var/log/pgadmin"

RUN sudo mkdir "/var/lib/pgadmin"
RUN sudo chmod a+wrx "/var/lib/pgadmin"
EXPOSE 5050

