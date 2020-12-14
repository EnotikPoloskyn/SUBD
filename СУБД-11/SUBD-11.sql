begin try
begin tran;
insert into Клієнт values (11,'Шевчук','Сергій','Іванович','Чоловік',0503620919,'vadim01@ericreyess.com')
insert into Клієнт values(12,'Васильєв','Іван','Михайлович','Чоловік',0963054050,'petrenko.timofi@benandrose.com')
insert into Клієнт values(13,'Романченко','Лев','Васильович','Чоловік',0638978289,'maksim.pavluk@bkfarm.fun')
commit tran;
end try
begin catch
	rollback tran
end catch