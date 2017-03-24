FROM postgres:9.6
ENV PG_MAJOR 9.6

RUN apt-get update \
                  && apt-get install -y postgresql-$PG_MAJOR-plr \
                  && rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y cmake pgxnclient postgresql-plpython-9.6 postgresql-server-dev-9.6 g++ m4
RUN pgxn install madlib
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 5432
CMD ["postgres"]
