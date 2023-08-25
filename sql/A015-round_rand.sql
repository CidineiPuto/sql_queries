-- Configura um salário aleatório para users.
UPDATE  users set salary = round(rand() * 10000, 2);

select salary from users where
salary between 1000 and 1500
order by salary asc;