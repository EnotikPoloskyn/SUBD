CREATE INDEX Tovar ON Товар2 (Ціна);
EXEC sys.sp_helpindex @objname = N'Товар2'


SET SHOWPLAN_ALL ON;
GO
select top(1)  Назва as [Найкращий виробник], sum(Замовлення.[Кількість товару]) as Кількість
from Виробник 
inner join Товар on Виробник.[Код виробника] = Товар.[Код виробника]
inner join Замовлення on Товар.[Код товару] = Замовлення.[Код товару]
group by Назва order by Кількість desc
GO
SET SHOWPLAN_ALL OFF;


SET SHOWPLAN_ALL ON;
GO
select top(1)  Назва as [Найкращий виробник], sum(Замовлення.[Кількість товару]) as Кількість
from Виробник, Товар, Замовлення
group by Назва order by Кількість desc
GO
SET SHOWPLAN_ALL OFF;