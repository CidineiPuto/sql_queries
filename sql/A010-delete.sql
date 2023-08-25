-- Delete apaga registros da tabela.
DELETE FROM users  WHERE id BETWEEN 128 and 134;

-- Use SELECT para garantir que está
-- apagando os valores incompletos.
select * from users where id BETWEEN 128 and 134; 