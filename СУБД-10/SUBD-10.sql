create function totalprice(@price money, @quantity as int)
returns money 
as
	begin
	return(@price*@quantity)
end;


select [��� ����������], dbo.totalprice(�����.ֳ��, ����������.[ʳ������ ������]) as [�������� ����]
from ���������� inner join ����� on ����������.[��� ������] = �����.[��� ������]


create procedure delay as
select ����������.[��� ����������], DATEDIFF(day,(SELECT CAST( GETDATE() AS Date )) , dateadd(day,����������.[��������� �������], ����������.[���� ����������]))*-1 as ����������
from �볺��
inner join ���������� on �볺��.[��� �볺���] = ����������.[��� �볺���]


exec delay