-- where filtra registros
-- operadores de comparação = < <= > >= <> !=
-- operadores lógicos and e or
select * from users
where created_at>="2023-08-16 17:41:34" 
and first_name  = 'Luiz1' 
or first_name = 'Luiz';