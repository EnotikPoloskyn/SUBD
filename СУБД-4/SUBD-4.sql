INSERT INTO ��������� VALUES (1, '���������', '�����', '����������','������','���������',0966705019); 

INSERT INTO ��������� 
VALUES (2, '���������', '�������', '���������','������','���������',0633054092),
(3, '��������', '������', '����������','������','���������',0639041498),
(4, '����������', '�������', '��������','������','������������',0960733698); 

BULK
INSERT �������� FROM 'D:\���� 5\����\����-4\��������.csv'
WITH ( datafiletype = 'widechar',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n')

BULK
INSERT ����� FROM 'D:\���� 5\����\����-4\�����.csv'
WITH ( datafiletype = 'widechar',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n')

BULK
INSERT �볺�� FROM 'D:\���� 5\����\����-4\�볺��.csv'
WITH ( datafiletype = 'widechar',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n')

BULK
INSERT [����� �������] FROM 'D:\���� 5\����\����-4\�����.csv'
WITH ( datafiletype = 'widechar',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n')

BULK
INSERT ���������� FROM 'D:\���� 5\����\����-4\����������.csv'
WITH ( datafiletype = 'widechar',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n')

UPDATE ��������
SET ������� = 1
WHERE [��� ���������] =	3

DELETE FROM ����������
WHERE [���� ����������] < '2020.05.21'