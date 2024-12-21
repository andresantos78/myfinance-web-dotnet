IF EXISTS (SELECT * FROM sys.databases WHERE name = 'myfinance')
BEGIN
   USE [myfinance]
END;
GO
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Transacao')
BEGIN
   DROP TABLE Transacao;
END;
GO
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'PlanoConta')
BEGIN
   DROP TABLE PlanoConta;
END;
GO
USE [master]
GO
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'myfinance')
BEGIN
    DROP DATABASE [myfinance];
END;