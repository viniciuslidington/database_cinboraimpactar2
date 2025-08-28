-- Criar database
CREATE DATABASE connect_ong;

-- Criar usuário
CREATE USER connect_ong_user WITH PASSWORD 'connect_ong_pass';

ALTER USER connect_ong_user CREATEDB;
-- Dar permissões ao usuário para o database
GRANT ALL PRIVILEGES ON DATABASE connect_ong TO connect_ong_user;

-- Conceder permissões no schema public do connect_ong
ALTER DATABASE connect_ong OWNER TO connect_ong_user;

ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT ALL PRIVILEGES ON TABLES TO connect_ong_user;

ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT ALL PRIVILEGES ON SEQUENCES TO connect_ong_user;

