-- between seleciona um range de datas, números, e etc.
select * from users
where
created_at between '2020-01-12 00:00:00'
and				   '2020-02-16 23:59:59'
and     id between '66'	   and     '149'