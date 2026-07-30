FROM postgres:12

ENV POSTGRES_DB=employees
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=password

COPY init.sql /docker-entrypoint-initdb.d/#
