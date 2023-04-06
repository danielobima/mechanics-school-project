SELECT DISTINCTROW Mechanics.MechanicName, Sum(SpareParts.Cost)
 AS Earned
FROM (Mechanics INNER JOIN JobCards ON Mechanics.[MechanicID] = JobCards.[MechanicID]) INNER JOIN (SpareParts INNER JOIN JobSpareParts ON SpareParts.[SparePartID] = JobSpareParts.[SparePartID]) ON JobCards.[JobID] = JobSpareParts.[JobID]
GROUP BY Mechanics.MechanicName, JobCards.JobID;