CREATE INDEX Tovar ON �����2 (ֳ��);
EXEC sys.sp_helpindex @objname = N'�����2'


SET SHOWPLAN_ALL ON;
GO
select top(1)  ����� as [��������� ��������], sum(����������.[ʳ������ ������]) as ʳ������
from �������� 
inner join ����� on ��������.[��� ���������] = �����.[��� ���������]
inner join ���������� on �����.[��� ������] = ����������.[��� ������]
group by ����� order by ʳ������ desc
GO
SET SHOWPLAN_ALL OFF;


SET SHOWPLAN_ALL ON;
GO
select top(1)  ����� as [��������� ��������], sum(����������.[ʳ������ ������]) as ʳ������
from ��������, �����, ����������
group by ����� order by ʳ������ desc
GO
SET SHOWPLAN_ALL OFF;