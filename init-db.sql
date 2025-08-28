-- Criar database
CREATE DATABASE connect_ong;
CREATE DATABASE hubdedoacao;
CREATE DATABASE lojasocial;
-- Criar usuário
CREATE USER connect_ong_user WITH PASSWORD 'connect_ong_pass';
CREATE USER hubuser WITH PASSWORD 'hubpass';
CREATE USER lojasocialuser WITH PASSWORD 'lojasocialpass';

ALTER USER connect_ong_user CREATEDB;
ALTER USER hubuser CREATEDB;
ALTER USER lojasocialuser CREATEDB;

-- Dar permissões ao usuário para o database
GRANT ALL PRIVILEGES ON DATABASE connect_ong TO connect_ong_user;
GRANT ALL PRIVILEGES ON DATABASE hubdedoacao TO hubuser;
GRANT ALL PRIVILEGES ON DATABASE lojasocial TO lojasocialuser;

-- Conceder permissões no schema public do connect_ong
ALTER DATABASE connect_ong OWNER TO connect_ong_user;
ALTER DATABASE hubdedoacao OWNER to hubuser;
ALTER DATABASE hubdedoacao OWNER to lojasocialuser;

ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT ALL PRIVILEGES ON TABLES TO connect_ong_user;
GRANT ALL PRIVILEGES ON TABLES TO hubuser;
GRANT ALL PRIVILEGES ON TABLES TO lojasocialuser;

ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT ALL PRIVILEGES ON SEQUENCES TO connect_ong_user;
GRANT ALL PRIVILEGES ON SEQUENCES TO hubuser;
GRANT ALL PRIVILEGES ON SEQUENCES TO lojasocialuser;