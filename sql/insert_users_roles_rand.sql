INSERT INTO users_roles  (user_id , role_id)
VALUES
(22, 4);

SELECT  user_id, role_id FROM users_roles WHERE
user_id = 518 and role_id = 4;

SELECT 
id, 
(select id from roles order by rand() limit 1) AS qualquer 
FROM users;

INSERT IGNORE INTO  users_roles (user_id, role_id)
SELECT 
id, 
(select id from roles order by rand() limit 1) AS qualquer 
FROM users order by rand() limit 5; -- 50 20 5
