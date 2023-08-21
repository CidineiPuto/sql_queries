-- Update - Atualiza registros 

UPDATE  users set first_name  = 'Luiz',
last_name = "Bungas"
where id BETWEEN  119 and 121;

SELECT  * FROM  users WHERE  id BETWEEN  119 and 121;