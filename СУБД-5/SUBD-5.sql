SELECT [��� ������], [����� ������], ֳ�� FROM �����1
UNION
SELECT [��� ������], [����� ������], ֳ�� FROM �����2
ORDER BY [��� ������] ASC


SELECT [��� ������], [����� ������], ֳ�� FROM �����1
INTERSECT
SELECT [��� ������], [����� ������], ֳ�� FROM �����2
ORDER BY [��� ������] ASC


SELECT [��� ������], [����� ������], ֳ�� FROM �����1
EXCEPT
SELECT [��� ������], [����� ������], ֳ�� FROM �����2
ORDER BY [��� ������] ASC


SELECT * FROM �����1, �����2