-- Apaga registros com join

SELECT  u.first_name, p.bio from users u
left join profiles as p -- left join
on p.user_id = u.id
where u.first_name = 'rodolfo';

delete p, u from users u
left join profiles as p -- left join
on p.user_id = u.id
where u.first_name = 'rodolfo';
