-- insert select
-- insere valores em uma tabela usando outra
-- concat faz uma concatenação entre os dígitos

insert into profiles
(bio, description, user_id)
select	 
concat('Bio de ', first_name), 
concat('Description de', ' ', first_name), 
id 
from users;
