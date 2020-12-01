ALTER TABLE Товар
DROP CONSTRAINT Товар_Виробник

ALTER TABLE Товар
DROP COLUMN [Код виробника];	

ALTER TABLE Товар
DROP COLUMN Матеріал

ALTER TABLE Товар
ALTER COLUMN Колір nvarchar(15) NOT NULL; 

ALTER TABLE Виробник
ALTER COLUMN [Електронна пошта] nvarchar(25) NULL; 


ALTER TABLE Товар
ALTER COLUMN [Код товару] INT NOT NULL

ALTER TABLE Товар
ADD Версія INT NOT NULL 

ALTER TABLE Товар
ADD CONSTRAINT UQ_Товар_Версія UNIQUE ([Код товару], Версія);


ALTER TABLE Товар
DROP CONSTRAINT Товар_Виробник

ALTER TABLE Товар
ADD CONSTRAINT Товар_Виробник FOREIGN KEY ([Код виробника])
REFERENCES Виробник ([Код виробника]) ON DELETE CASCADE; 