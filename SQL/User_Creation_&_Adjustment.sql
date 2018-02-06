USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [bsstern]    Script Date: 8/2/2016 1:11:34 PM ******/
--CREATE LOGIN [bsstern] WITH PASSWORD=N'9VfojWvcVb//e16d0JN556HH7h4f25X3rFFRlFfegqU=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
--GO

--ALTER LOGIN [bsstern] DISABLE
--GO

--ALTER SERVER ROLE [setupadmin] ADD MEMBER [bsstern]
--GO

--ALTER SERVER ROLE [processadmin] ADD MEMBER [bsstern]
--GO


USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [bsstern]    Script Date: 8/2/2016 1:11:34 PM ******/
CREATE LOGIN [tyler] WITH PASSWORD='kuunika', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [tyler] DISABLE
GO

ALTER SERVER ROLE [setupadmin] ADD MEMBER [tyler]
GO

ALTER SERVER ROLE [processadmin] ADD MEMBER [tyler]
GO


