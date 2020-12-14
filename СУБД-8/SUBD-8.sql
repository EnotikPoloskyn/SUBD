select Прізвище,[Ім'я],[По батькові],[Електронна пошта]
from Клієнт where [Електронна пошта] like '%gmail%'
order by [Електронна пошта] asc


select top(5) [Назва товару], [Дата виробництва] from Товар order by [Дата виробництва] desc


select Стать, count([Код клієнта]) as Кількість from Клієнт 
group by Стать
