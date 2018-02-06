SELECT TOP 1000 
 [Working Cost Centre]
,[Station]
,[Cadre (HRH)]
,count( distinct [Employee Number]) as Emps
FROM [HR_Staff]

group by 
 [Working Cost Centre]
,[Station]
,[Cadre (HRH)]

order by Emps desc