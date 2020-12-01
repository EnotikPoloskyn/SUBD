CREATE TABLE [����� �������] (
[��� ������ �������] INT NOT NULL PRIMARY KEY,
�����	 NVARCHAR(25) NOT NULL,
̳��� NVARCHAR(20) NOT NULL,
������ NVARCHAR(20) NOT NULL,
������� NVARCHAR(6) NOT NULL,
[���������� �����] NVARCHAR(30) NOT NULL,
[���-����] NVARCHAR(35) NOT NULL,
[���������� �����] INT NOT NULL);

CREATE TABLE ��������� (
[��� ����������] INT NOT NULL PRIMARY KEY,
������� NVARCHAR(20) NOT NULL,
[��'�] NVARCHAR(20) NOT NULL,
[�� �������] NVARCHAR(25) NOT NULL,
����� NVARCHAR(7) NOT NULL,
������ NVARCHAR(25) NOT NULL,
[���������� �����] INT NOT NULL);

CREATE TABLE �볺�� (
[��� �볺���] INT NOT NULL PRIMARY KEY,
������� NVARCHAR(20) NOT NULL,
[��'�] NVARCHAR(20) NOT NULL,
[�� �������] NVARCHAR(25) NOT NULL,
����� NVARCHAR(7) NOT NULL,
[���������� �����] INT NOT NULL, 
[���������� �����] NVARCHAR(30) NOT NULL);


CREATE TABLE �������� (
[��� ���������] INT NOT NULL PRIMARY KEY,
����� NVARCHAR(25) NOT NULL,
̳��� NVARCHAR(20) NOT NULL,
������ NVARCHAR(20) NOT NULL,
������� NVARCHAR(6) NOT NULL,
[���������� �����] INT NOT NULL,
[���������� �����] NVARCHAR(30) NOT NULL);

CREATE TABLE ����� (
[��� ������] INT NOT NULL PRIMARY KEY,
[����� ������] NVARCHAR(35) NOT NULL,
ֳ�� MONEY NOT NULL,
���� FLOAT NOT NULL,
������� NVARCHAR(15) NOT NULL,
���� NVARCHAR(10) NOT NULL,
[���� �����������] DATE NOT NULL,
[��� ���������] INT NOT NULL,
CONSTRAINT �����_�������� FOREIGN KEY ([��� ���������]) REFERENCES �������� ([��� ���������]) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE ���������� (
[��� ����������] INT NOT NULL PRIMARY KEY,
[��� ����������] INT NOT NULL,
[��� �볺���] INT NOT NULL,
[��� ������ �������] INT NOT NULL,
[��� ������] INT NOT NULL,
[ʳ������ ������] INT NOT NULL,
[��������� �������] INT NOT NULL,
[���� ����������] DATE NOT NULL,
CONSTRAINT ����������_��������� FOREIGN KEY ([��� ����������]) REFERENCES ��������� ([��� ����������]) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ����������_�볺�� FOREIGN KEY ([��� �볺���]) REFERENCES �볺�� ([��� �볺���]) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ����������_����� FOREIGN KEY ([��� ������ �������]) REFERENCES [����� �������] ([��� ������ �������]) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ����������_����� FOREIGN KEY ([��� ������]) REFERENCES ����� ([��� ������]) ON DELETE CASCADE ON UPDATE CASCADE);
 
