SELECT [Код товару], [Назва товару], Ціна FROM Товар1
UNION
SELECT [Код товару], [Назва товару], Ціна FROM Товар2
ORDER BY [Код товару] ASC


SELECT [Код товару], [Назва товару], Ціна FROM Товар1
INTERSECT
SELECT [Код товару], [Назва товару], Ціна FROM Товар2
ORDER BY [Код товару] ASC


SELECT [Код товару], [Назва товару], Ціна FROM Товар1
EXCEPT
SELECT [Код товару], [Назва товару], Ціна FROM Товар2
ORDER BY [Код товару] ASC


SELECT * FROM Товар1, Товар2