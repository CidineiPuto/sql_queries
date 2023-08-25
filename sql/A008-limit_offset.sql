-- limit limita a qtd de valores
-- offset desloca o cursor para exibir os resultados
select id, first_name, email as uemail 
from users
where id between 1 and 30
order by id asc
limit 9,3;