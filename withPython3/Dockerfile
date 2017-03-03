FROM ooolumuyiwa/postgres-pgpython-plr-madlib
ENV PG_MAJOR 9.6


RUN apt-get update &&\
  apt-get install -y postgresql-plpython3-9.6
RUN apt-get install -y libsybdb5 freetds-dev freetds-common wget

RUN wget https://github.com/GeoffMontee/tds_fdw/archive/v1.0.7.tar.gz
RUN tar -xvzf tds_fdw-1.0.7.tar.gz
RUN cd tds_fdw-1.0.7
RUN make USE_PGXS=1
RUN sudo make USE_PGXS=1 install
RUN cd ..
  
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 5432
CMD ["postgres"]

