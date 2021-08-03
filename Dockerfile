FROM dpage/pgadmin4
ENV PGADMIN_DEFAULT_EMAIL i.railean@reply.it  
ENV PGADMIN_DEFAULT_PASSWORD 111111
ENV HOME=/pgadmin

RUN mkdir -p ${HOME} && \
mkdir -p ${HOME}/pgadmin && \
useradd -u 1001 -r -g 0 -G pgadmin -d ${HOME} -s /bin/bash \
-c "Default Application User" pgadmin

RUN chmod -R 700 ${HOME} && chown -R 1001:0 ${HOME}
RUN mkdir /var/log/pgadmin && \
chmod 0600 /var/log/pgadmin && \
chown 1001:0 /var/log/pgadmin


USER 1001

EXPOSE 5050

