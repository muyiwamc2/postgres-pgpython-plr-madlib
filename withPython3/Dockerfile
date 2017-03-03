FROM ooolumuyiwa/postgres-pgpython-plr-madlib
ENV PG_MAJOR 9.6


RUN apt-get update &&\
  apt-get install -y postgresql-plpython3-9.6
RUN apt-get install -y libsybdb5 freetds-dev freetds-common


  
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 5432
CMD ["postgres"]

