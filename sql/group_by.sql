SELECT first_name, COUNT(id) as total  
FROM   users 				 as u
GROUP BY first_name
ORDER BY total DESC;

SELECT u.first_name, COUNT(u.id) as total from users u
LEFT JOIN   profiles      as  p
ON     p.user_id = u.id
WHERE u.id IN  (1, 119, 120, 121, 122)
GROUP BY first_name
ORDER BY total DESC
limit 5;
