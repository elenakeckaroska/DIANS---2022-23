FROM postgres:12

ENV POSTGRES_DB=accommodations
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=password

EXPOSE 5432

COPY schema.sql /docker-entrypoint-initdb.d/
CMD ["postgres"]
