USE master;
GO


IF EXISTS (SELECT 1 from sys.databases where name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO


CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO


CREATE SCHEMA bronze;
go
CREATE SCHEMA silver;
go
CREATE SCHEMA gold;
go
