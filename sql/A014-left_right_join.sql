-- RIGHT JOIN

-- Seleciona users.id, profiles.id, profiles.bio
-- profiles.description, users.first_name
-- da tabela users (tabela da esquerda é opcional)
-- unindo com a tabela profiles (todos os registros da tabela da direita)
-- quando a condição u.id = p.user_id for satisfeita
-- onde users.first_name terminar com "a"
-- ordena por users.first_name decrescente
-- limita 5 registros


SELECT u.id as uid, p.id as pid,
p.bio, u.first_name
FROM users as u
RIGHT JOIN profiles p
ON u.id = p.user_id ;

-- LEFT JOIN

-- Seleciona users.id, profiles.id, profiles.bio
-- profiles.description, users.first_name
-- da tabela users (todos os registros da tabela da esquerda)
-- unindo com a tabela profiles (tabela da direita é opcional)
-- quando a condição u.id = p.user_id for satisfeita
-- onde users.first_name terminar com "a"
-- ordena por users.first_name decrescente
-- limita 5 registros


SELECT u.id as uid, p.id as pid,
p.bio, u.first_name
FROM users as u
LEFT JOIN profiles p
ON u.id = p.user_id ;
