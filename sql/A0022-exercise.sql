-- 1) Insira 5 usuários x
-- 2) Insira 5 perfís para os usuários inseridos
-- 3) Insira permissões (roles) para os usuários inseridos
-- 4) Selecione os últimos 5 usuários por ordem decrescente
-- 5) Atualize o último usuário inserido
-- 6) Remova uma permissão de algum usuário
-- 7) Remova um usuário que tem a permissão "PUT"
-- 8) Selecione usuários com perfís e permissões (obrigatório)
-- 9) Selecione usuários com perfís e permissões (opcional)
-- 10) Selecione usuários com perfís e permissões ordenando por salário desc

# 2)

insert into profiles
(bio, description, user_id)
select
concat('Bio de ', first_name),
concat('Description de ', first_name),
id
from users
where id between 186 and 194

# 3)

insert into users_roles (user_id, role_id)
select
id, 
(select id from roles order by rand() limit 1) AS qualquer 
FROM users
where id between 186 and 194;

SELECT  user_id, role_id FROM users_roles WHERE
user_id BETWEEN 186 and 194;

# 4)

select id, first_name, last_name
from users
where id between 186 and 194
order by id desc;

# 5)

select id, first_name, last_name, email
from users
where id = 194

update users set 
first_name = 'Jussandra',
last_name = 'Silva',
email = concat(first_name, last_name, '@uol.com')
where id = 194;


# 6)

select role_id from users_roles
where user_id = '193'

delete from users_roles
where user_id = '193' and role_id = 4

 
# 7)

SELECT u.id as uid  from users u
inner join users_roles as ur
on u.id = ur.user_id
where u.id = '186' and ur.role_id = '4'

delete u, ur from users u
inner join users_roles as ur
on u.id = ur.user_id
where u.id = '186'

# 8)

select 
u.id as uid, u.first_name, p.bio, r.name
from users as u
INNER JOIN profiles    as p  ON u.id = p.user_id
INNER JOIN users_roles as ur ON u.id = ur.user_id
INNER JOIN roles	   as r  ON ur.role_id = r.id
where u.id between 190 and 194

# 9)

select 
u.id as uid, u.first_name, p.bio, r.name
from users as u
LEFT JOIN profiles     as p  ON u.id = p.user_id
INNER JOIN users_roles as ur ON u.id = ur.user_id
INNER JOIN roles	   as r  ON ur.role_id = r.id
where u.id between 190 and 194

# 10)

select 
u.id as uid, 
u.first_name, 
p.bio, 
r.name,
u.salary as us
from users as u
LEFT JOIN profiles     as p  ON u.id = p.user_id
INNER JOIN users_roles as ur ON u.id = ur.user_id
INNER JOIN roles	   as r  ON ur.role_id = r.id
where u.id between 190 and 194
order by us desc;
