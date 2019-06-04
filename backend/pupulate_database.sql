CREATE ROLE app WITH NOSUPERUSER NOCREATEDB LOGIN CONNECTION LIMIT -1 PASSWORD 'app_pass';

CREATE DATABASE app WITH OWNER = app;

CREATE SEQUENCE pessoa_id_seq;

CREATE TABLE Pessoa (
                id INTEGER NOT NULL DEFAULT nextval('pessoa_id_seq'),
                Nome VARCHAR NOT NULL,
                Data_Nasc DATE NOT NULL,
                CONSTRAINT pessoa_pk PRIMARY KEY (id)
);

ALTER SEQUENCE pessoa_id_seq OWNED BY Pessoa.id;
