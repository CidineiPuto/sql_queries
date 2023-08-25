-- Order ordena valores:
-- Order by id asc (id crescente)
-- order by id desc (id decrescente)
-- order by id asc, first_name desc ( prioriza o id )
select id, first_name, email as uemail 
from users
where id between 100 and 150
order by created_at asc, first_name desc;