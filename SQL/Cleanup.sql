SELECT TOP 10000 [Name]
      ,[Description]
	  ,case when [Name] like ' ART ' then 'HIV'
		when LEFT([Name],3) = 'ART' then 'HIV'
		when LEFT([Name],3) = 'HIV' then 'HIV'
		when [Name] like '% AIDS%' then 'HIV'
		when LEFT([Name],6) = 'TBHIVC' then 'HIV'
		when [Name] like '% HIV %' then 'HIV'
		when LEFT([Name],6) = 'MA ART' then 'HIV'
		when LEFT([Name],3) = 'ANC' then 'ANC'
		when LEFT([Name],4) = 'HMIS' then 'HMIS'
		when [Name] like '%CBD%' then 'CBD'
		when [Name] like '%on ART%' then 'ART'
		when [Name] like '% ART' then 'ART'
		
	    end as Report

		--,case when [Name] like '%HIV%' then 'HIV' end as HIV_Flag
  FROM [Kuunika].[dbo].[DHIS_Data_Elements]
  