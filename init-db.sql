-- Criar database
CREATE DATABASE connect_ong;
CREATE DATABASE hubdedoacao;
-- Criar usuário
CREATE USER connect_ong_user WITH PASSWORD 'connect_ong_pass';
CREATE USER hubuser WITH PASSWORD 'hubpass';

ALTER USER connect_ong_user CREATEDB;
ALTER USER hubuser CREATEDB;

-- Dar permissões ao usuário para o database
GRANT ALL PRIVILEGES ON DATABASE connect_ong TO connect_ong_user;
GRANT ALL PRIVILEGES ON DATABASE hubdedoacao TO hubuser;

-- Conceder permissões no schema public do connect_ong
ALTER DATABASE connect_ong OWNER TO connect_ong_user;
ALTER DATABASE hubdedoacao OWNER to hubuser;

ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT ALL PRIVILEGES ON TABLES TO connect_ong_user;
GRANT ALL PRIVILEGES ON TABLES TO hubuser;

ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT ALL PRIVILEGES ON SEQUENCES TO connect_ong_user;
GRANT ALL PRIVILEGES ON SEQUENCES TO hubuser;