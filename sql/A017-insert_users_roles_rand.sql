-- Adicionando apenas 1 user

INSERT INTO users_roles  (user_id , role_id)
VALUES
(22, 4);

-- Vê o user

SELECT  user_id, role_id FROM users_roles WHERE
user_id = 22 and role_id = 4;

-- Vendo os usuários para adicionar

SELECT 
id, 
(select id from roles order by rand() limit 1) AS qualquer 
FROM users;

-- Adicionando os usuários

insert into users_roles (user_id, role_id)
select 
id, 
(select id from roles order by rand() limit 1) as qualquer 
from users;

# ------------------------------------------------------------------
INSERT IGNORE INTO  users_roles (user_id, role_id) -- Ignora erros

SELECT 
id, 
(select id from roles order by rand() limit 1) AS qualquer 
FROM users order by rand() limit 5; -- 50 20 5
