CREATE TABLE [Пункт прокату] (
[Код пункту прокату] INT NOT NULL PRIMARY KEY,
Назва	 NVARCHAR(25) NOT NULL,
Місто NVARCHAR(20) NOT NULL,
Вулиця NVARCHAR(20) NOT NULL,
Будинок NVARCHAR(6) NOT NULL,
[Електронна пошта] NVARCHAR(30) NOT NULL,
[Веб-сайт] NVARCHAR(35) NOT NULL,
[Контактний номер] INT NOT NULL);

CREATE TABLE Працівник (
[Код працівника] INT NOT NULL PRIMARY KEY,
Прізвище NVARCHAR(20) NOT NULL,
[Ім'я] NVARCHAR(20) NOT NULL,
[По батькові] NVARCHAR(25) NOT NULL,
Стать NVARCHAR(7) NOT NULL,
Посада NVARCHAR(25) NOT NULL,
[Контактний номер] INT NOT NULL);

CREATE TABLE Клієнт (
[Код клієнта] INT NOT NULL PRIMARY KEY,
Прізвище NVARCHAR(20) NOT NULL,
[Ім'я] NVARCHAR(20) NOT NULL,
[По батькові] NVARCHAR(25) NOT NULL,
Стать NVARCHAR(7) NOT NULL,
[Контактний номер] INT NOT NULL, 
[Електронна пошта] NVARCHAR(30) NOT NULL);


CREATE TABLE Виробник (
[Код виробника] INT NOT NULL PRIMARY KEY,
Назва NVARCHAR(25) NOT NULL,
Місто NVARCHAR(20) NOT NULL,
Вулиця NVARCHAR(20) NOT NULL,
Будинок NVARCHAR(6) NOT NULL,
[Контактний номер] INT NOT NULL,
[Електронна пошта] NVARCHAR(30) NOT NULL);

CREATE TABLE Товар (
[Код товару] INT NOT NULL PRIMARY KEY,
[Назва товару] NVARCHAR(35) NOT NULL,
Ціна MONEY NOT NULL,
Вага FLOAT NOT NULL,
Матеріал NVARCHAR(15) NOT NULL,
Колір NVARCHAR(10) NOT NULL,
[Дата виробництва] DATE NOT NULL,
[Код виробника] INT NOT NULL,
CONSTRAINT Товар_Виробник FOREIGN KEY ([Код виробника]) REFERENCES Виробник ([Код виробника]) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE Замовлення (
[Код замовлення] INT NOT NULL PRIMARY KEY,
[Код працівника] INT NOT NULL,
[Код клієнта] INT NOT NULL,
[Код пункту прокату] INT NOT NULL,
[Код товару] INT NOT NULL,
[Кількість товару] INT NOT NULL,
[Тривалість прокату] INT NOT NULL,
[Дата замовлення] DATE NOT NULL,
CONSTRAINT Замовлення_Працівник FOREIGN KEY ([Код працівника]) REFERENCES Працівник ([Код працівника]) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT Замовлення_Клієнт FOREIGN KEY ([Код клієнта]) REFERENCES Клієнт ([Код клієнта]) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT Замовлення_Пункт FOREIGN KEY ([Код пункту прокату]) REFERENCES [Пункт прокату] ([Код пункту прокату]) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT Замовлення_Товар FOREIGN KEY ([Код товару]) REFERENCES Товар ([Код товару]) ON DELETE CASCADE ON UPDATE CASCADE);
 
