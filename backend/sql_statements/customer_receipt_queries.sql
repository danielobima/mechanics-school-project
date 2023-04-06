SELECT DISTINCTROW SpareParts.SparePartName, Sum(SpareParts.Cost) AS [Sum Of Cost], Count(*) AS [Count Of JobSpareParts]
FROM SpareParts INNER JOIN JobSpareParts ON SpareParts.[SparePartID] = JobSpareParts.[SparePartID]
GROUP BY JobSpareParts.SparePartID, SpareParts.SparePartName;

