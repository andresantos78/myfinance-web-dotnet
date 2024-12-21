USE [master]
GO

/****** Object:  Database [myfinance]    Script Date: 21/12/2024 00:12:28 ******/
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'myfinance')
BEGIN
    CREATE DATABASE [myfinance];
END;
GO

USE [myfinance]
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'PlanoConta')
BEGIN
   create table PlanoConta(
      id int not null identity (1,1),
      nome varchar (50) not null,
      tipo char(1) not null,
      primary key (id)
   );
END;
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Transacao')
BEGIN
   create table Transacao (
      id int not null identity (1,1),
      data datetime not null,
      valor decimal(9,2),
      historico varchar(100),
      tipo char(1) not null,
      planocontaid int not null,
      primary key (id),
      foreign key (planocontaid) references PlanoConta(id)
   );
END;
GO