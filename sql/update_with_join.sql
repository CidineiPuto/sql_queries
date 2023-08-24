# SELECT
SELECT  u.first_name, p.bio from users u
join profiles as p -- inner join
on p.user_id = u.id
where u.first_name = 'rodolfo';

# -------------------------------------------------

# UPDATE
update users  as u
join profiles as p -- inner join
on p.user_id = u.id
set p.bio = concat(p.bio, ' atualizado')
where u.first_name = 'rodolfo';
# -------------------------------------------------