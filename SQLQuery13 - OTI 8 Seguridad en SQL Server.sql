/* Crear un login llamado "sesion10" con pasword 123
y agregar el Usuario 10 a la conexion */
CREATE LOGIN [sesion 10] WITH PASSWORD = '123'

USE Northwind
GO
SP_ADDUSER [sesion 10]

/* Asignar el rol ddladmin al usuario 10 */
sp_addrolemember [db_ddladmin], [sesion 10]

/*Negar los permisos de creaci�n de vistas y procedimientos
almacenados al Usuario10*/
- Selecci�n en todas las tablas
- Escritura en las tablas de employees, customers y categories
- Permisos de actualizado en los campos country y city en la tabla
de empleados */
details */
DENY SELECT ON Orders TO [sesion 10]
DENY SELECT ON [Order Details] TO [sesion 10]