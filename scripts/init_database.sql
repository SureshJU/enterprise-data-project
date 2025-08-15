/*
====================================================================================================================================
CREATE DATABASE AND SCHEMAS
====================================================================================================================================
This script creates a new database named 'EnterpriseData' after checking if it already exists.
The script sets up three schemas within the database: 'bronze','silver', and 'gold'.
*/


USE master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name='EnterpriseData')
BEGIN
  ALTER DATABASE EnterpriseData SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE EnterpriseData;
END;
GO
  

CREATE DATABASE EnterpriseData;
GO

USE EnterpriseData;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
