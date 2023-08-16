-- Seu comentário 
# Outro comentário
/* JS é comentário */

use base_de_dados; -- Seleciona a base de dados.
show tables; -- Mostra as tabelas da base de dados.
describe users; -- Descre as colunas da tabela
# Inserir registro na base de dados v 
insert into users 
(first_name, last_name, email, password_hash) values	
("Rodolfo",   "C.", "Rodolfo@email.com", "hash_94"),
("Jailso",   "B.", "Jailso@email.com", "hash_24"),
("Rose",   "A.", "Rose@email.com", "hash_54");

