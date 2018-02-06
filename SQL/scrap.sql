CREATE TABLE #tmp(excelFileName VARCHAR(100));
INSERT INTO #tmp
EXEC xp_cmdshell 'dir /B C:\Users\User\Google Drive\Data Sources\ART Tables in .csv';

declare @fileName varchar(100)

While (Select Count(*) From #tmp where excelFileName is not null) > 0
Begin

    Select Top 1 @fileName = excelFileName From #tmp

    -- OPENROWSET processing goes here, using @fileName to identify which file to use

    Delete from #tmp Where excelFileName = @FileName

End

DROP TABLE #tmp


GRANT EXECUTE ON xp_cmdshell TO [bsstern]

-- To allow advanced options to be changed.
EXEC sp_configure 'show advanced options', 1
RECONFIGURE
GO

-- Enable the xp_cmdshell procedure
EXEC sp_configure 'xp_cmdshell', 1
RECONFIGURE
GO

BULK
INSERT art_supervisor
FROM 'C:\Users\User\Google Drive\Data Sources\ART\art_supervisor.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)
GO
--Check the content of the table.
SELECT *
FROM art_supervisor
GO
--Drop the table to clean up database.
DROP TABLE art_supervisor
GO