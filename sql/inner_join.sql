SELECT u.id uid, p.id as pid,
p.bio, u.first_name
FROM  users as u, profiles as p
WHERE u.id = p.user_id;

SELECT u.id uid, p.id as pid,
p.bio, u.first_name
FROM users as u
INNER JOIN profiles p 
ON u.id = p.user_id
WHERE  u.first_name LIKE  "%a"
ORDER  BY u.first_name  ASC
LIMIT 5
;
