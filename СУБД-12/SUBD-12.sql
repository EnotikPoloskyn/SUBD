create trigger vyrobnyk_del
on ВиробникTRIG
after delete 
as 
insert into deletedVyrob( Повідомлення,[Код елемента])
select 'Було видалено виробника '+Назва,[Код виробника]
from deleted


delete from ВиробникTRIG
where [Код виробника] = 5
select * from ВиробникTRIG
select * from deletedVyrob


create trigger vyrobnyk_upd
on ВиробникTRIG
after update
as 
insert into updateVyrob( Було, Стало, [Код елемента])
select deleted.Назва, inserted.Назва,inserted.[Код виробника]
from inserted inner join deleted on inserted.[Код виробника] = deleted.[Код виробника]


update ВиробникTRIG
set Назва = 'Зміна'
where [Код виробника] = 1
select * from ВиробникTRIG
select * from updateVyrob


create trigger vyrobnyk_new
on ВиробникTRIG
after insert
as 
insert into newVyrob( Назва, [Код елемента])
select inserted.Назва,inserted.[Код виробника]
from inserted 


insert into ВиробникTRIG 
values (5,'Новий', 'Львів', 'Бандери','3',123456789,'New@gmail.com')
select * from ВиробникTRIG
select * from newVyrob