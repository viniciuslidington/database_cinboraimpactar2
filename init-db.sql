-- Criar database
CREATE DATABASE connect_ong;
CREATE DATABASE hubdedoacao;
CREATE DATABASE lojasocial;
CREATE DATABASE escolaong;
CREATE DATABASE cintegre;

-- Criar usuário
CREATE USER connect_ong_user WITH PASSWORD 'connect_ong_pass';
CREATE USER hubuser WITH PASSWORD 'hubpass';
CREATE USER lojasocialuser WITH PASSWORD 'lojasocialpass';
CREATE USER escolaonguser WITH PASSWORD 'escolaongpass';
CREATE USER cintegreuser WITH PASSWORD 'cintegrepass';

ALTER USER connect_ong_user CREATEDB;
ALTER USER hubuser CREATEDB;
ALTER USER lojasocialuser CREATEDB;
ALTER USER escolaonguser CREATEDB;
ALTER USER cintegreuser CREATEDB;

-- Dar permissões ao usuário para o database
GRANT ALL PRIVILEGES ON DATABASE connect_ong TO connect_ong_user;
GRANT ALL PRIVILEGES ON DATABASE hubdedoacao TO hubuser;
GRANT ALL PRIVILEGES ON DATABASE lojasocial TO lojasocialuser;
GRANT ALL PRIVILEGES ON DATABASE escolaong TO escolaonguser;
GRANT ALL PRIVILEGES ON DATABASE cintegre TO cintegreuser;

-- Conceder permissões no schema public do connect_ong
ALTER DATABASE connect_ong OWNER TO connect_ong_user;
ALTER DATABASE hubdedoacao OWNER to hubuser;
ALTER DATABASE hubdedoacao OWNER to lojasocialuser;
ALTER DATABASE escolaong OWNER TO escolaonguser;
ALTER DATABASE cintegre OWNER TO cintegreuser;


ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT ALL PRIVILEGES ON TABLES TO connect_ong_user;
GRANT ALL PRIVILEGES ON TABLES TO hubuser;
GRANT ALL PRIVILEGES ON TABLES TO lojasocialuser;
GRANT ALL PRIVILEGES ON TABLES TO escolaonguser;
GRANT ALL PRIVILEGES ON TABLES TO cintegreuser;

ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT ALL PRIVILEGES ON SEQUENCES TO connect_ong_user;
GRANT ALL PRIVILEGES ON SEQUENCES TO hubuser;
GRANT ALL PRIVILEGES ON SEQUENCES TO lojasocialuser;
GRANT ALL PRIVILEGES ON SEQUENCES TO escolaonguser;
GRANT ALL PRIVILEGES ON SEQUENCES TO cintegreuser;