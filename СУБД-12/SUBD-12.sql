create trigger vyrobnyk_del
on ��������TRIG
after delete 
as 
insert into deletedVyrob( �����������,[��� ��������])
select '���� �������� ��������� '+�����,[��� ���������]
from deleted


delete from ��������TRIG
where [��� ���������] = 5
select * from ��������TRIG
select * from deletedVyrob


create trigger vyrobnyk_upd
on ��������TRIG
after update
as 
insert into updateVyrob( ����, �����, [��� ��������])
select deleted.�����, inserted.�����,inserted.[��� ���������]
from inserted inner join deleted on inserted.[��� ���������] = deleted.[��� ���������]


update ��������TRIG
set ����� = '����'
where [��� ���������] = 1
select * from ��������TRIG
select * from updateVyrob


create trigger vyrobnyk_new
on ��������TRIG
after insert
as 
insert into newVyrob( �����, [��� ��������])
select inserted.�����,inserted.[��� ���������]
from inserted 


insert into ��������TRIG 
values (5,'�����', '����', '�������','3',123456789,'New@gmail.com')
select * from ��������TRIG
select * from newVyrob