
Drop Database Northwind

Restore database Northwind
from disk ='D:\Respaldos BD\Northwind.bak'

-- Separación de Bases de Datos
USE [master]
GO
--EXEC master.dbo.sp_detach_db para desprender la BD temporalemente
-- y que se puedan copiar los archivos .mdf y ldf a otra carpeta

EXEC master.dbo.sp_detach_db 'Northwind'
GO

--Actualizar las BDs y ver que Northwind deja de estar en producción temporalmente
--Buscar archivos en C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER2019\MSSQL\DATA
--otorgar permiso de acceso en la carpeta de windows pestaña seguridad
--poner nuevamene en producción la BD y prensar los archivos en su nueva ruta

Exec master.dbo.sp_attach_db Northwind,
'D:\Respaldos BD\northwnd.mdf',
'D:\Respaldos BD\northwnd.ldf'
--Actualizar las BDs y ver que Northwind ya está en producción 








