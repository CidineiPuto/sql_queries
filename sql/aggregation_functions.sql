SELECT
max(salary)   as max_salary,  -- Salário máximo
min(salary)   as min_salary,  -- Salário mínimo
avg(salary)   as avg_salary,  -- Média de salário
sum(salary)   as sum_salary,  -- Soma de todos salários
count(salary) as count_salary -- Retorna o número de salários da tabela
FROM users
WHERE first_name = 'Luiz';

SELECT
u.first_name,
max(u.salary)   as max_salary,  -- Salário máximo
min(u.salary)   as min_salary,  -- Salário mínimo
avg(u.salary)   as avg_salary,  -- Média de salário
sum(u.salary)   as sum_salary,  -- Soma de todos salários
COUNT(u.id) as total
from users u
LEFT JOIN   profiles      as  p
ON     p.user_id = u.id
GROUP BY first_name
ORDER BY sum_salary DESC;
