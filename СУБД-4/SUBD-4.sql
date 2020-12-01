INSERT INTO Працівник VALUES (1, 'Кравченко', 'Артур', 'Михайлович','Чоловік','Продавець',0966705019); 

INSERT INTO Працівник 
VALUES (2, 'Броварчук', 'Тимофій', 'Борисович','Чоловік','Продавець',0633054092),
(3, 'Петренко', 'Микола', 'Васильович','Чоловік','Продавець',0639041498),
(4, 'Боднаренко', 'Анатолій', 'Петрович','Чоловік','Прибиральник',0960733698); 

BULK
INSERT Виробник FROM 'D:\Лаби 5\СУБД\СУБД-4\Виробник.csv'
WITH ( datafiletype = 'widechar',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n')

BULK
INSERT Товар FROM 'D:\Лаби 5\СУБД\СУБД-4\Товар.csv'
WITH ( datafiletype = 'widechar',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n')

BULK
INSERT Клієнт FROM 'D:\Лаби 5\СУБД\СУБД-4\Клієнт.csv'
WITH ( datafiletype = 'widechar',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n')

BULK
INSERT [Пункт прокату] FROM 'D:\Лаби 5\СУБД\СУБД-4\Пункт.csv'
WITH ( datafiletype = 'widechar',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n')

BULK
INSERT Замовлення FROM 'D:\Лаби 5\СУБД\СУБД-4\Замовлення.csv'
WITH ( datafiletype = 'widechar',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n')

UPDATE Виробник
SET Будинок = 1
WHERE [Код виробника] =	3

DELETE FROM Замовлення
WHERE [Дата замовлення] < '2020.05.21'