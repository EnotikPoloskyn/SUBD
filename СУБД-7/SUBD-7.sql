SELECT [Код клієнта], [Ім'я],Прізвище, [По батькові] FROM Клієнт
WHERE [Контактний номер] = 622828559


select Клієнт.[Код клієнта], Клієнт.Прізвище, Клієнт.[Електронна пошта],
Замовлення.[Дата замовлення],Замовлення.[Тривалість прокату]
from Клієнт left join Замовлення on
Клієнт.[Код клієнта] = Замовлення.[Код клієнта]


select Товар.[Назва товару], Виробник.Назва
from Товар inner join Виробник on Виробник.[Код виробника] = Товар.[Код виробника]
where Виробник.Назва = 'Риболов';


select Товар.[Назва товару], Виробник.Назва, Замовлення.[Код замовлення],Замовлення.[Дата замовлення]
from Товар 
inner join Виробник on Виробник.[Код виробника] = Товар.[Код виробника]
inner join Замовлення on Замовлення.[Код товару] = Товар.[Код товару]
where Виробник.Назва in ('Риболов', 'Турист');


select top(3) Товар.[Назва товару], Замовлення.[Код замовлення],Замовлення.[Дата замовлення]
from Товар
inner join Замовлення on Замовлення.[Код товару] = Товар.[Код товару]
where Товар.[Код виробника] in (select Виробник.[Код виробника] from Виробник
where Виробник.Назва in ('Риболов', 'Турист'))
order by Замовлення.[Дата замовлення] DESC


select Клієнт.[Код клієнта], Клієнт.Прізвище, Клієнт.[Ім'я], Клієнт.[По батькові] from Клієнт
where not exists
(select * from Замовлення where Замовлення.[Код клієнта]= Клієнт.[Код клієнта])


select Прізвище, [Ім'я], [По батькові], [Електронна пошта]
from Клієнт1
where not [Електронна пошта] like '%@%.%'