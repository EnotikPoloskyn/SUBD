create function totalprice(@price money, @quantity as int)
returns money 
as
	begin
	return(@price*@quantity)
end;


select [Код замовлення], dbo.totalprice(Товар.Ціна, Замовлення.[Кількість товару]) as [Загальна ціна]
from Замовлення inner join Товар on Замовлення.[Код товару] = Товар.[Код товару]


create procedure delay as
select Замовлення.[Код замовлення], DATEDIFF(day,(SELECT CAST( GETDATE() AS Date )) , dateadd(day,Замовлення.[Тривалість прокату], Замовлення.[Дата замовлення]))*-1 as Прострочка
from Клієнт
inner join Замовлення on Клієнт.[Код клієнта] = Замовлення.[Код клієнта]


exec delay