-- in seleciona elementos entre os valores enviados
select * from users
where id in (1, 2, 3)
and first_name in ('Tanner', 'Brittany', 'Ferris');