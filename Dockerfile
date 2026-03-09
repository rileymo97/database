FROM postgres:15-alpine

ENV POSTGRES_DB=ecommerce
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=password

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432