begin try
begin tran;
insert into �볺�� values (11,'������','�����','��������','������',0503620919,'vadim01@ericreyess.com')
insert into �볺�� values(12,'��������','����','����������','������',0963054050,'petrenko.timofi@benandrose.com')
insert into �볺�� values(13,'����������','���','����������','������',0638978289,'maksim.pavluk@bkfarm.fun')
commit tran;
end try
begin catch
	rollback tran
end catch