ALTER TABLE �����
DROP CONSTRAINT �����_��������

ALTER TABLE �����
DROP COLUMN [��� ���������];	

ALTER TABLE �����
DROP COLUMN �������

ALTER TABLE �����
ALTER COLUMN ���� nvarchar(15) NOT NULL; 

ALTER TABLE ��������
ALTER COLUMN [���������� �����] nvarchar(25) NULL; 


ALTER TABLE �����
ALTER COLUMN [��� ������] INT NOT NULL

ALTER TABLE �����
ADD ����� INT NOT NULL 

ALTER TABLE �����
ADD CONSTRAINT UQ_�����_����� UNIQUE ([��� ������], �����);


ALTER TABLE �����
DROP CONSTRAINT �����_��������

ALTER TABLE �����
ADD CONSTRAINT �����_�������� FOREIGN KEY ([��� ���������])
REFERENCES �������� ([��� ���������]) ON DELETE CASCADE; 