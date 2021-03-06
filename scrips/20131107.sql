 -- Exportación del modulo FTEC param
 -- SYBASE: isql -Usa -Ppasswd -Sserver_name -D asp -i framework-app.sql 

 -- ORACLE: sqlplus user/passwd@server_name @framework-app.sql 

 -- DB2:    db2 -td/ vf framework-app.sql 

 -- 

go

set nocount on
go

print 'Actualizar PLista (update/insert)...'
print 'PLista fila: 1 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'auth.nuevo'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'auth.nuevo', 'Politica para usuarios nuevos (admit/reject)', 1, 1,
0, 'reject', '20060510 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Politica para usuarios nuevos (admit/reject)'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = 'reject'
,  BMfecha = '20060510 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'auth.nuevo'
end -- if 
commit 
go
print 'PLista fila: 2 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'auth.orden'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'auth.orden', 'Orden de métodos de autenticación', 1, 1,
0, 'asp', '20060510 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Orden de métodos de autenticación'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = 'asp'
,  BMfecha = '20060510 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'auth.orden'
end -- if 
commit 
go
print 'PLista fila: 3 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'auth.validar.horario'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'auth.validar.horario', 'Validar horario de acceso', 0, 1,
0, '0', '20060622 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Validar horario de acceso'
,  es_global = 0
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = '0'
,  BMfecha = '20060622 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'auth.validar.horario'
end -- if 
commit 
go
print 'PLista fila: 4 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'auth.validar.ip'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'auth.validar.ip', 'Validar dirección IP', 0, 1,
0, '0', '20060622 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Validar dirección IP'
,  es_global = 0
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = '0'
,  BMfecha = '20060622 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'auth.validar.ip'
end -- if 
commit 
go
print 'PLista fila: 5 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'correo.cuenta'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'correo.cuenta', 'Dirección de correo para los correos que salen del portal', 1, 0,
0, 'anav@soin.co.cr', '20080626 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Dirección de correo para los correos que salen del portal'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = 'anav@soin.co.cr'
,  BMfecha = '20080626 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'correo.cuenta'
end -- if 
commit 
go
print 'PLista fila: 6 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'debug.expira'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'debug.expira', 'Expiracion del debug', 1, 0,
0, null, '20060613 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Expiracion del debug'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = null
,  BMfecha = '20060613 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'debug.expira'
end -- if 
commit 
go
print 'PLista fila: 7 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'demo.CuentaEmpresarial'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'demo.CuentaEmpresarial', 'Cuenta empresarial de las empresas de demostraciones', 1, 0,
0, null, '20050608 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Cuenta empresarial de las empresas de demostraciones'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = null
,  BMfecha = '20050608 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'demo.CuentaEmpresarial'
end -- if 
commit 
go
print 'PLista fila: 8 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'demo.cache'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'demo.cache', 'Nombre del datasource donde se creara la empresa de demos', 1, 0,
0, null, '20050714 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Nombre del datasource donde se creara la empresa de demos'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = null
,  BMfecha = '20050714 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'demo.cache'
end -- if 
commit 
go
print 'PLista fila: 9 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'demo.vigencia'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'demo.vigencia', 'Vigencia en dias del usuario que solicito una demostracion', 1, 0,
0, '22', '20050608 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Vigencia en dias del usuario que solicito una demostracion'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = '22'
,  BMfecha = '20050608 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'demo.vigencia'
end -- if 
commit 
go
print 'PLista fila: 10 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'error.detalles'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'error.detalles', 'Ocultar detalles técnicos del error a los usuarios', 1, 0,
0, '0', '20060927 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Ocultar detalles técnicos del error a los usuarios'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = '0'
,  BMfecha = '20060927 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'error.detalles'
end -- if 
commit 
go
print 'PLista fila: 11 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'ldap.adminDN'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'ldap.adminDN', 'DN del administrador', 1, 1,
0, 'cn=Directory Manager', '20060510 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'DN del administrador'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = 'cn=Directory Manager'
,  BMfecha = '20060510 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'ldap.adminDN'
end -- if 
commit 
go
print 'PLista fila: 12 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'ldap.adminPass'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'ldap.adminPass', 'Contraseña del administrador', 1, 1,
0, 'ninguno', '20060510 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Contraseña del administrador'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = 'ninguno'
,  BMfecha = '20060510 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'ldap.adminPass'
end -- if 
commit 
go
print 'PLista fila: 13 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'ldap.baseDN'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'ldap.baseDN', 'DN raíz del directorio por usar', 1, 1,
0, 'dc=example,dc=com', '20060510 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'DN raíz del directorio por usar'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = 'dc=example,dc=com'
,  BMfecha = '20060510 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'ldap.baseDN'
end -- if 
commit 
go
print 'PLista fila: 14 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'ldap.port'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'ldap.port', 'Puerto de LDAP', 1, 1,
0, '389', '20060510 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Puerto de LDAP'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = '389'
,  BMfecha = '20060510 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'ldap.port'
end -- if 
commit 
go
print 'PLista fila: 15 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'ldap.server'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'ldap.server', 'Servidor de LDAP', 1, 1,
0, 'localhost', '20060510 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Servidor de LDAP'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = 'localhost'
,  BMfecha = '20060510 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'ldap.server'
end -- if 
commit 
go
print 'PLista fila: 16 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'monitor.habilitar'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'monitor.habilitar', 'Habilitar monitoreo', 1, 0,
0, '1', '20061012 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Habilitar monitoreo'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = '1'
,  BMfecha = '20061012 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'monitor.habilitar'
end -- if 
commit 
go
print 'PLista fila: 17 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'monitor.historia'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'monitor.historia', 'Días para mantener en históricos de monitoreo', 1, 0,
0, '15', '20040528 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Días para mantener en históricos de monitoreo'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = '15'
,  BMfecha = '20040528 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'monitor.historia'
end -- if 
commit 
go
print 'PLista fila: 18 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'pass.expira.default'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'pass.expira.default', 'Expiración de contraseñas', 1, 1,
1, '365', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Expiración de contraseñas'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '365'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'pass.expira.default'
end -- if 
commit 
go
print 'PLista fila: 19 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'pass.expira.max'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'pass.expira.max', 'Expiración de contraseñas (máximo)', 1, 1,
0, '3650', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Expiración de contraseñas (máximo)'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = '3650'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'pass.expira.max'
end -- if 
commit 
go
print 'PLista fila: 20 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'pass.expira.min'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'pass.expira.min', 'Expiración de contraseñas (mínimo)', 1, 1,
0, '1', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Expiración de contraseñas (mínimo)'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = '1'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'pass.expira.min'
end -- if 
commit 
go
print 'PLista fila: 21 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'pass.expira.recordat'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'pass.expira.recordat', 'Recordatorio de expiración de contraseñas', 1, 1,
1, '7', '20040524 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Recordatorio de expiración de contraseñas'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '7'
,  BMfecha = '20040524 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'pass.expira.recordat'
end -- if 
commit 
go
print 'PLista fila: 22 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'pass.expira.recordatorio'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'pass.expira.recordatorio', 'Recordatorio de expiración de contraseñas', 1, 1,
1, '7', '20040524 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Recordatorio de expiración de contraseñas'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '7'
,  BMfecha = '20040524 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'pass.expira.recordatorio'
end -- if 
commit 
go
print 'PLista fila: 23 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'pass.long.max'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'pass.long.max', 'Longitud máxima de contraseña', 1, 1,
1, '20', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Longitud máxima de contraseña'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '20'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'pass.long.max'
end -- if 
commit 
go
print 'PLista fila: 24 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'pass.long.min'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'pass.long.min', 'Longitud mínima de contraseña', 1, 1,
1, '4', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Longitud mínima de contraseña'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '4'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'pass.long.min'
end -- if 
commit 
go
print 'PLista fila: 25 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'pass.valida.dicciona'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'pass.valida.dicciona', 'La contraseña no debe estar en el diccionario', 1, 1,
1, '0', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'La contraseña no debe estar en el diccionario'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '0'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'pass.valida.dicciona'
end -- if 
commit 
go
print 'PLista fila: 26 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'pass.valida.diccionario'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'pass.valida.diccionario', 'La contraseña no debe estar en el diccionario', 1, 1,
1, '0', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'La contraseña no debe estar en el diccionario'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '0'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'pass.valida.diccionario'
end -- if 
commit 
go
print 'PLista fila: 27 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'pass.valida.digitos'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'pass.valida.digitos', 'La contraseña debe contener al menos un Número', 1, 1,
1, '1', '20120423 13:01:24.673', 1)
end else begin 
update PLista
set pnombre = 'La contraseña debe contener al menos un Número'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '1'
,  BMfecha = '20120423 13:01:24.673'
,  BMUsucodigo = 1
where parametro = 'pass.valida.digitos'
end -- if 
commit 
go
print 'PLista fila: 28 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'pass.valida.letras'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'pass.valida.letras', 'La contraseña debe contener al menos una Mayúscula', 1, 1,
0, '1', '20120423 13:34:49.463', 1)
end else begin 
update PLista
set pnombre = 'La contraseña debe contener al menos una Mayúscula'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = '1'
,  BMfecha = '20120423 13:34:49.463'
,  BMUsucodigo = 1
where parametro = 'pass.valida.letras'
end -- if 
commit 
go
print 'PLista fila: 29 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'pass.valida.lista'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'pass.valida.lista', 'Lista de contraseñas anteriores por recordar', 1, 1,
1, '0', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Lista de contraseñas anteriores por recordar'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '0'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'pass.valida.lista'
end -- if 
commit 
go
print 'PLista fila: 30 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'pass.valida.simbolos'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'pass.valida.simbolos', 'La contraseña debe contener símbolos', 1, 1,
1, '0', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'La contraseña debe contener símbolos'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '0'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'pass.valida.simbolos'
end -- if 
commit 
go
print 'PLista fila: 31 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'pass.valida.usuario'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'pass.valida.usuario', 'La contraseña debe ser distinta al usuario', 1, 1,
1, '1', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'La contraseña debe ser distinta al usuario'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '1'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'pass.valida.usuario'
end -- if 
commit 
go
print 'PLista fila: 32 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'respaldo.bcp.id'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'respaldo.bcp.id', 'Opciones identity (in)', 1, 0,
0, '-E', '20061106 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Opciones identity (in)'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = '-E'
,  BMfecha = '20061106 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'respaldo.bcp.id'
end -- if 
commit 
go
print 'PLista fila: 33 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'respaldo.bcp.in'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'respaldo.bcp.in', 'Opciones IN BCP', 1, 0,
0, null, '20061106 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Opciones IN BCP'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = null
,  BMfecha = '20061106 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'respaldo.bcp.in'
end -- if 
commit 
go
print 'PLista fila: 34 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'respaldo.bcp.opt'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'respaldo.bcp.opt', 'Opciones comunes BCP', 1, 0,
0, '-c -t$@!\t$@! -r$@!\r\n -T 512000', '20061106 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Opciones comunes BCP'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = '-c -t$@!\t$@! -r$@!\r\n -T 512000'
,  BMfecha = '20061106 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'respaldo.bcp.opt'
end -- if 
commit 
go
print 'PLista fila: 35 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'respaldo.bcp.out'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'respaldo.bcp.out', 'Opciones OUT BCP', 1, 0,
0, null, '20061106 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Opciones OUT BCP'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = null
,  BMfecha = '20061106 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'respaldo.bcp.out'
end -- if 
commit 
go
print 'PLista fila: 36 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'respaldo.bcp.server'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'respaldo.bcp.server', 'Servidor (-S) BCP', 1, 0,
0, 'MINISIF', '20061106 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Servidor (-S) BCP'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = 'MINISIF'
,  BMfecha = '20061106 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'respaldo.bcp.server'
end -- if 
commit 
go
print 'PLista fila: 37 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'respaldo.bcp.tool'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'respaldo.bcp.tool', 'Ruta completa del BCP', 1, 0,
0, '/sybase/OCS-15_0/bin/bcp', '20061106 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Ruta completa del BCP'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = '/sybase/OCS-15_0/bin/bcp'
,  BMfecha = '20061106 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'respaldo.bcp.tool'
end -- if 
commit 
go
print 'PLista fila: 38 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'respaldo.bcp.user'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'respaldo.bcp.user', 'Usuario y contraseña BCP', 1, 0,
0, '-Uadmin -Psecret', '20061106 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Usuario y contraseña BCP'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = '-Uadmin -Psecret'
,  BMfecha = '20061106 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'respaldo.bcp.user'
end -- if 
commit 
go
print 'PLista fila: 39 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'respaldo.fileext'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'respaldo.fileext', 'Extensión por generar (gzip)', 1, 0,
0, 'gz', '20061106 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Extensión por generar (gzip)'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = 'gz'
,  BMfecha = '20061106 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'respaldo.fileext'
end -- if 
commit 
go
print 'PLista fila: 40 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'respaldo.fileutil'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'respaldo.fileutil', 'Utilitario archivador (GNU tar)', 1, 0,
0, '/bin/tar', '20061106 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Utilitario archivador (GNU tar)'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = '/bin/tar'
,  BMfecha = '20061106 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'respaldo.fileutil'
end -- if 
commit 
go
print 'PLista fila: 41 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'respaldo.path'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'respaldo.path', 'Ruta de los archivos', 1, 0,
0, '/tmp/aspweb-backup/', '20061106 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Ruta de los archivos'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = '/tmp/aspweb-backup/'
,  BMfecha = '20061106 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'respaldo.path'
end -- if 
commit 
go
print 'PLista fila: 42 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'servidor.principal'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'servidor.principal', 'Servidor principal del cluster', 1, 0,
0, null, '20060104 00:00:00.000', 0)
end else begin 
update PLista
set pnombre = 'Servidor principal del cluster'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = null
,  BMfecha = '20060104 00:00:00.000'
,  BMUsucodigo = 0
where parametro = 'servidor.principal'
end -- if 
commit 
go
print 'PLista fila: 43 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'sesion.bloqueo.cant'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'sesion.bloqueo.cant', 'Bloquear contraseña: Cantidad de errores', 1, 1,
1, '5', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Bloquear contraseña: Cantidad de errores'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '5'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'sesion.bloqueo.cant'
end -- if 
commit 
go
print 'PLista fila: 44 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'sesion.bloqueo.durac'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'sesion.bloqueo.durac', 'Bloquear contraseña: Duración del bloqueo', 1, 1,
1, '10', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Bloquear contraseña: Duración del bloqueo'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '10'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'sesion.bloqueo.durac'
end -- if 
commit 
go
print 'PLista fila: 45 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'sesion.bloqueo.duracion'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'sesion.bloqueo.duracion', 'Bloquear contraseña: Duración del bloqueo', 1, 1,
1, '10', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Bloquear contraseña: Duración del bloqueo'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '10'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'sesion.bloqueo.duracion'
end -- if 
commit 
go
print 'PLista fila: 46 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'sesion.bloqueo.perio'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'sesion.bloqueo.perio', 'Bloquear contraseña: Periodo de validación', 1, 1,
1, '10', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Bloquear contraseña: Periodo de validación'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '10'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'sesion.bloqueo.perio'
end -- if 
commit 
go
print 'PLista fila: 47 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'user.valida.letras'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'user.valida.letras', 'Valida que el usuario tenga al menos una Mayúscula', 1, 1,
0, '1', '20120424 07:18:52.917', 1)
end else begin 
update PLista
set pnombre = 'Valida que el usuario tenga al menos una Mayúscula'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = '1'
,  BMfecha = '20120424 07:18:52.917'
,  BMUsucodigo = 1
where parametro = 'user.valida.letras'
end -- if 
commit 
go
print 'PLista fila: 48 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'user.valida.digitos'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'user.valida.digitos', 'Valida que el usuario tengal al menos un Número', 1, 1,
0, '1', '20120424 07:18:58.557', 1)
end else begin 
update PLista
set pnombre = 'Valida que el usuario tengal al menos un Número'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = '1'
,  BMfecha = '20120424 07:18:58.557'
,  BMUsucodigo = 1
where parametro = 'user.valida.digitos'
end -- if 
commit 
go
print 'PLista fila: 49 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'sesion.bloqueo.periodo'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'sesion.bloqueo.periodo', 'Bloquear contraseña: Periodo de validación', 1, 1,
1, '10', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Bloquear contraseña: Periodo de validación'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '10'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'sesion.bloqueo.periodo'
end -- if 
commit 
go
print 'PLista fila: 50 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'sesion.duracion.defa'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'sesion.duracion.defa', 'Duración de la sesión', 1, 1,
1, '365', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Duración de la sesión'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '365'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'sesion.duracion.defa'
end -- if 
commit 
go
print 'PLista fila: 51 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'sesion.duracion.default'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'sesion.duracion.default', 'Duración de la sesión', 1, 1,
1, '365', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Duración de la sesión'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '365'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'sesion.duracion.default'
end -- if 
commit 
go
print 'PLista fila: 52 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'sesion.duracion.max'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'sesion.duracion.max', 'Duración máxima de la sesión', 1, 1,
1, '10080', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Duración máxima de la sesión'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '10080'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'sesion.duracion.max'
end -- if 
commit 
go
print 'PLista fila: 53 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'sesion.duracion.min'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'sesion.duracion.min', 'Duración mínima de la sesión', 1, 1,
0, '1', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Duración mínima de la sesión'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = '1'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'sesion.duracion.min'
end -- if 
commit 
go
print 'PLista fila: 54 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'sesion.duracion.modo'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'sesion.duracion.modo', 'Duración total(1) o inactiva(2)', 1, 1,
1, '2', '20040524 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Duración total(1) o inactiva(2)'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '2'
,  BMfecha = '20040524 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'sesion.duracion.modo'
end -- if 
commit 
go
print 'PLista fila: 55 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'sesion.multiple'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'sesion.multiple', 'Permitir varias sesiones por usuario(1=si,2=close,3=timeout)', 1, 1,
1, '1', '20040521 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Permitir varias sesiones por usuario(1=si,2=close,3=timeout)'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '1'
,  BMfecha = '20040521 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'sesion.multiple'
end -- if 
commit 
go
print 'PLista fila: 56 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'user.long.max'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'user.long.max', 'Longitud máxima del usuario', 1, 1,
0, '30', '20060517 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Longitud máxima del usuario'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = '30'
,  BMfecha = '20060517 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'user.long.max'
end -- if 
commit 
go
print 'PLista fila: 57 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'user.long.min'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'user.long.min', 'Longitud mínima del usuario', 1, 1,
0, '4', '20060517 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Longitud mínima del usuario'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = '4'
,  BMfecha = '20060517 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'user.long.min'
end -- if 
commit 
go
print 'PLista fila: 58 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'user.valid.chars'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'user.valid.chars', 'Caracteres validos para el usuario', 1, 1,
0, 'a-zA-Z0-9@_.-', '20060517 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Caracteres validos para el usuario'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = 'a-zA-Z0-9@_.-'
,  BMfecha = '20060517 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'user.valid.chars'
end -- if 
commit 
go
print 'PLista fila: 59 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'ldap.dominio'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'ldap.dominio', 'Usa dominio para autenticar al usuario al servidor LDAP', 1, 1,
0, '0', '20070530 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Usa dominio para autenticar al usuario al servidor LDAP'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = '0'
,  BMfecha = '20070530 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'ldap.dominio'
end -- if 
commit 
go
print 'PLista fila: 60 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'pass.mail.cambiar'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'pass.mail.cambiar', 'Cambio obligatorio de passwords enviados por mail', 1, 1,
1, '0', '20080507 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Cambio obligatorio de passwords enviados por mail'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 1
,  predeterminado = '0'
,  BMfecha = '20080507 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'pass.mail.cambiar'
end -- if 
commit 
go
print 'PLista fila: 61 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'demo.Ecodigo'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'demo.Ecodigo', 'Ecodigo de la Empresa Base de Demostraciones', 1, 0,
0, '1097', '20090129 00:00:00.000', 1)
end else begin 
update PLista
set pnombre = 'Ecodigo de la Empresa Base de Demostraciones'
,  es_global = 1
,  es_cuenta = 0
,  es_usuario = 0
,  predeterminado = '1097'
,  BMfecha = '20090129 00:00:00.000'
,  BMUsucodigo = 1
where parametro = 'demo.Ecodigo'
end -- if 
commit 
go
print 'PLista fila: 62 de 62'
declare @n int 
begin tran
select @n = count(1)
from PLista 
where parametro = 'user.valid.varchar2s'if (@n = 0) begin
insert into PLista (
parametro, pnombre, es_global, es_cuenta,
es_usuario, predeterminado, BMfecha, BMUsucodigo)
values (
'user.valid.varchar2s', 'Caracteres validos para el usuario', 1, 1,
0, 'a-zA-Z0-9@_.-', '20060517 17:07:05.000', 1)
end else begin 
update PLista
set pnombre = 'Caracteres validos para el usuario'
,  es_global = 1
,  es_cuenta = 1
,  es_usuario = 0
,  predeterminado = 'a-zA-Z0-9@_.-'
,  BMfecha = '20060517 17:07:05.000'
,  BMUsucodigo = 1
where parametro = 'user.valid.varchar2s'
end -- if 
commit 
go

print 'Terminado PLista'

print 'Actualizar SSistemas (update/insert)...'
print 'SSistemas fila: 1 de 1'
declare @n int 
begin tran
select @n = count(1)
from SSistemas 
where SScodigo = 'FTEC'if (@n = 0) begin
insert into SSistemas (
SScodigo, SSdescripcion, SShomeuri, SSmenu,
BMfecha, BMUsucodigo, SSorden, SSlogo,
SShablada)
values (
'FTEC', 'FundaTEC', null, 1,
'20130228 19:03:08.217', 1, 75, null,
null)
end else begin 
update SSistemas
set SSdescripcion = 'FundaTEC'
,  SShomeuri = null
,  SSmenu = 1
,  BMfecha = '20130228 19:03:08.217'
,  BMUsucodigo = 1
,  SSorden = 75
,  SSlogo = null
,  SShablada = null
where SScodigo = 'FTEC'
end -- if 
commit 
go

print 'Terminado SSistemas'

print 'Actualizar SModulos (update/insert)...'
print 'SModulos fila: 1 de 1'
declare @n int 
begin tran
select @n = count(1)
from SModulos 
where SScodigo = 'FTEC'  and SMcodigo = 'param'if (@n = 0) begin
insert into SModulos (
SScodigo, SMcodigo, SMdescripcion, SMhomeuri,
SMmenu, BMfecha, BMUsucodigo, SMorden,
SMhablada, SMlogo)
values (
'FTEC', 'param', 'FundaTec', null,
1, '20130228 19:06:15.587', 1, 20,
null, 0xFFD8FFE1001845786966000049492A00080000000000000000000000FFEC00114475636B7900010004000000640000FFE1036B687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F726520352E302D633036312036342E3134303934392C20323031302F31322F30372D31303A35373A30312020202020202020223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D222220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75726365526566232220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D704D4D3A4F726967696E616C446F63756D656E7449443D22757569643A39353841423346353938303244453131383231463936394639434243374434312220786D704D4D3A446F63756D656E7449443D22786D702E6469643A35343741374634374536333631314531394345324230463739353338444637302220786D704D4D3A496E7374616E636549443D22786D702E6969643A35343741374634364536333631314531394345324230463739353338444637302220786D703A43726561746F72546F6F6C3D2241646F62652050686F746F73686F70204353352E31204D6163696E746F7368223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E636549443D22786D702E6969643A3645363641353330314532303638313138384336383637333344333342324641222073745265663A646F63756D656E7449443D22757569643A3935384142334635393830324445313138323146393639463943424337443431222F3E203C2F7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061636B657420656E643D2272223F3EFFEE000E41646F62650064C000000001FFDB008400010101010101010101010101010101010101010101010101010101010101010101010101010101010101010202020202020202020202030303030303030303030101010101010102010102020201020203030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303FFC0001108005001F403011100021101031101FFC400E40000010403000301000000000000000000060005070803040901020A0B01000202030101010000000000000000000405000301020607080910000103030204030404060A0F040B010001020304110506000721311208415113612214097181B13291C142231516F0A1D152D6175898190AE1F16272C233435383243426B718788225283892D263A3354566374768293911000103020402050805050C070803000001000203110421311205410651617122138191A1C1D1321407F0B142D293E123941516F15262728292337354557508B2435383B344B42434647435263637A22527FFDA000C03010002110311003F00F9B0D7E8BAF9352D4512D4512D4512D4512D4512D4516E41B7CFB9BE22DBA14B9F24A16E7C3C28EF4A7BD36C7538E7A4C216BE86D22AA34A01C4EAB9A686DD8659DED64638B8803CE56CD6B9C68D049EA4ED79C4F22C7F1A672DBB5AE4C4B248BB9B1B721D484AFF0048FC17E900CADA27D4475C4054091C7A4EB93DC39E762B193C063DD34E454060C3F9C683CD545476370F1A88D2DEB4296D948B9A5C5C742D696E9D61295296906BEF14502BA7873029AE66EBE60DEB8D2D2DE360391792E3E8D23EB568B360F7C93D88931F86C4B4495CA5B2B90CAD5D10955EA536A354B9EEA93F9B424815F15682879AB7FBCBD862F1036173C5435AD1871C684FA561D0C0DB79653839AC34ED380520DBADB6AA24B96D8BD40120AD86DE4D6878A8381551F511AF47B7BC91CDABC9AD17217125C568D7BBC8485A76EC4703BC6453E3645935E311B7A9A6DB8F2EC56D5642A33882A2DFE8672EF6848438BA26A890D048FC93A4133E39EFA663EEEE6114686E991F4D44E3854F98695736FEF2085874B6418D6A0569C31F6D560B86DB3F09E9ACDAE7CBB95BDA748853C5B83D7298D858E85C8B4BD74EB84B520F16DA76484F1AA8F03A2AEF69DE606B9B65733C91F076B717795A5F87637576AD61DF6D6570F1FF0036EE8C9BFCEA53CF44D2C5B6331D487A19725A55D09548429942522A0A9C864A8177C81240F1AD342327BB6374CAF9BE2474C8F0074F76B89ED573EE5C7DC77E6CF463E94F906D76E5ADB12A021C67A87AC23B2D26474F0AFA2A28E92E7903C09E7A25971707FA5926F0F8D1EE07C942857DC4A3DC79AF6944ACE35063C886AFD052130641932585DDED6C34F3AD92DA1B6CD1B2D388143D34E7CE9A904D74D9A31AE73092E70D65C2A30001A935010D3DC4FA1D491C1D80C1C73E25195AAD5674CE6BE1714B0DC9E6E33EEB9126DA623B1D68144F53890D0E90800ABAAA294D35F899DD386401CF786125A5C403C3A7B4A58FB8BB1192E9A50DAD2A1CEA8F4A3AC7A0E15726D5F1585E30C3ED3852F21AB1DB1D4A2AA20512F462BE9E14E2A274FB68DCEDEEE22D9E26B65660698F971C4F9CA477D26ED0BF545773963B2ABDE3EA34F4233838BE0732E0FDB3F54B0F88FA12DB919C9760B474BA922AB2B41888AF02084A544915F1D1D1DCC535DC962D6C71CA05585C063D35CBC94297C97DBBC5136675CDCB9A4E3491E69E928D9ADB6C7A3A999B1B6EB0C956F6D4DA26C97B11B24A4A1B7BAC178B2A84E32D228D9E9512A209FC245DDBCF1BE2608D861711A9C05091C480DC875D50B1EF57E43AB7771AC0C0191DE6C4E6B3DAF6A308B85B1219C3B104CB9111D7DB326C9646820BA4A903D77E18A290850E9F7ABC386A98ED3C4DB35460FC43D848E9EF56989CA83AD6CFDF3746DC51D7337861D43F9C7F0CF23C5101DBEDBC744282ADB2DBE8CF454FA529C8B61B64B54F294F4879D93E9100ABEF7E6BA057543585E044F68649952B53E7145B1DE3736D5E2E6E0B7FAC78F45512C4DA3DB95341A4EDFE11D255D5D4AC42C6EAF90F77D6761ADD29F1E7A66CB18D8C0C3434E2454F94A0DDBFEE84EA371703FDEBFDA89E16C9EDBCA8B259FD41DB661CE9EB6DE99885A5123D4095043518B16F5B642C9F7BD4141C3435CDA388FCC81C7853861967E55967306E5ABBD737032FF5AEF6A7DB6F6EF85CF7604781B5D853C5C4B89F8938363D21A2F36C14B4DACAADAEA1C5BCF28501FBCA206869A1633440D751D43524740E3E53E8506FFB9D1CF75CCF4AE5E2BB89FE374238B2F6A3699A9911DDD86C584D8E549519380E331595D6BE9AD2A7ADACB452A208F749D5703E2F008969E2824034CFA0E0A99B98EF992E917B281C478CEA8EDEF22DB476838A4984F489FB3FB61695B054C4876E58DE121B656DD2AE263B709E7D5D657C484A800380F3DE3687C63502272DA014AE3D3D18F5A064E70BB692E65DDD3E369C68F93CD8915F222AB5768FB3CA2E357AC2B6961A948691EBC2DB5C76E694A44641F886922D9001F556AAF81F1F66B616B318DC000642DA701420509F3A04F3BEE4E907872DE68CEAE95C3D01C51FC4ED7BB71690D265ED36DADD0B290D0713B7383DA997D208A2D686ECCE4BEB20712A7093ABDB6B56012690EE34FA7AD032F38F33B9C7C2B995ACE075C84FA5D4F423181DBDF6D51D4828D85D9048AA41549DB2C2EECA4D294516665A96D387C48340AF1A6A3ADA3A1199F37A46285FDA2E687B839F7F7B81E12BC0F3022A9D53DB7F6D921FE94EC76C89657202D7217B49B7B14A185102A98CD59DC03A08FBA951E153AD7C36B19EEB75F456BE923D4B7FD7FCC5A8917D7D4EB9E5FAB5E09E22F6BDDB92A2BC93B21DBE890C38A0D15ED8604B54A6D2AEA4A927F579491EA27871A53549D208018E20F50C3B55BFB41CC00FFDFAF69FD74BF793E2BB58ED8D6A60B5B15B10F12D214E351F69F065A7DE520AD3D471E4ACBE9A11403A68781E14D55534356102B99A7D29E95BB798B9807FCF5E1FF7D27ADC9DD9ED7BB616FABFF0F3B1A42D492A43FB3DB78AF4D600146D4AC6BD54A0A4D4A49A1E7A15D5273F313ED57B7983980803E32EFF001A4FBCB7BFE583B5C474F576E9B0E4AF8269B3FB7B5F1151D58DA81353E2343BCC943A49F3A2E2DF77D342EBCBBA7F5D27DE595BED33B6829FFCB9EC5F50E9201DA1DBFE202AAA0AFF0077FCBCB413EE5C0E0E3E728F8F7ADE8E77775F8AFF00BC9C98ED43B603F7BB70D8657511FF00E1FDBE252056A00FD5DA024E8592E26193DDE728D66F1BB9FF009AB9FC47FDE4576FED13B5875A6D63B6AD805AAAA6D45CD9DDBA20A8004D50BC709E0792BC74BE5BF9D8EA1924CAB99F6A323DD3777FFCCCFF0088FF006A7667B3BED75D5AC7FCB276F84020506CD6DCF88A8A531BE274249B95C0C7C5947F28FB51F1EE5B9646E263FEF1DED4E4C7665DACD561CED93B7D494D412AD96DB80904A4A811D78D5391A7868576E775989A5C7F86EF6A363DC770C8CD313FC777B53BC3ECDFB483D45DED9FB711C0A7F39B35B6447003904E38A5051FA343BF74BD194D37F3DDED46C57BB83BFD64DE772738FD9F768249AF6BFDB72BA494F1D95DB3557DBEEE2CAF3D50EDD770E134DFCF77B51B1DCDF9CDF2F9DDED4F6C766DD9DF1EAED6BB6C592073D92DB7E1C8F00313E0786857EEDB97FB79FF0011DED47477178733279FF2A7967B2FECE9553FF2ABDB39AF100EC6EDA7B070EAC4F968676F1BA570B89FF11FED47C735C615D7F4F2A7963B26ECE55CFB51ED997C454FF119B5BE35E5D58A81E1A11FBC6EDC2EAE3F11FED47C72BF220F993BC7EC83B38553FF00097DB2AB8D3FFB15B52BAF2FFE96D0CEDEB78AFF00DEEE69FD6BFEF261148C398F427C8DD8D766A69D5DA1F6C8A1CEA76076AD40FB2BFAA8742C9BDEF232BCBAFC57FDE4CA2F8739B59E608863F62DD9774254BECFBB5DE27F2BB7EDA8E35FA712E1CB41BF7EDF2A40BDBBFC693EF2651436CEFF0056C23B07B1145ABB11EC91CEAF53B38ED59CA74FDFEDEB68D5E26BF7B10F1D0B26FF00BF0CAF6EFF001A4FBC9832D6CC9158A3FE68F62288DD85F636A23ABB30ED44FF007DDBAED09F13E787E8377317300AFF00DBAF3F1A4FBC8E8AC6C8E70C47F90DF62208BD82F62AA03ABB2BED315C073EDC7678F979E1BA0E4E65E6215A5FDEFE3CBF79318B6EDB8D2B043FCC6FB11246F97F761CAFBDD93768C7E9EDBB66CF979E19A01DCCFCCB5FFD46FBF1E5FBE9843B56D848ADB41F86CF627F8BF2F8EC21453D5D907684AE3E3DB56CC1F3F3C2F414DCD5CCE32DCAFF00F4897EFA611ECFB49CED6DBF0D9F751344F978F600AA757635D9E2B97DEED9B658F979E13A5F2736F350386E7B87E9137DF4C62D936539D9DAFE147F7511B1F2EAF97D149AF629D9B9E3E3DB16C99FB708D0527387368386E9B8FE9337DF4C19B0EC45A2B6569F831FDD59FF00A3A3E5F3FC84FB36FE6C3B25FC08D57FB61CDDFDEBB8FE9337DF5BFEA0D8BFB15A7E0C7F752FE8E8F97CFF00213ECDBF9B0EC97F02353F6C39BBFBD771FD266FBEA7EA0D8BFB15A7E0C7F752FE8E8F97CFF213ECDBF9B0EC97F02353F6C39BBFBD771FD266FBEA7EA0D8BFB15A7E0C7F752FE8E8F97CFF00213ECDBF9B0EC97F02353F6C39BBFBD771FD266FBEA7EA0D8BFB15A7E0C7F752FE8E8F97CFF213ECDBF9B0EC97F02353F6C39BBFBD771FD266FBEA7EA0D8BFB15A7E0C7F752FE8E8F97CFF00213ECDBF9B0EC97F02353F6C39BBFBD771FD266FBEA7EA0D8BFB15A7E0C7F752FE8E8F97CFF213ECDBF9B0EC97F02353F6C39BBFBD771FD266FBEA7EA0D8BFB15A7E0C7F757E4FDAFBC97CC096A2896A2896B0A25A8A55627DF66336A79F710D349FBCB590948F671E64F96A8B9BAB6B384DC5D3DB1C0DCDCE340B78D924AF0C8C173CF0015FCECF3B50C5B7E71BFE31B2AC867271966F972B3338FDA5B30E6CE7AD5E82643B32E4F25463C6716FD109691D6A09AF526A35E3BCCFF3585ABCDAEC31873BFDABC1A7F25999ED750752E92CB602E1E25E3A83F7A295F29F62EC7629B23B5F866393717C5B0CB3D92D574B7BF6CB8982D29AB9DC634A67D192997762B55C9F5B883F794E920F2235E3579BF6EDBADE7C56E17324B30702038D5ADEC68A340E9C13E6DADBDBC7A22634371CB33EB2B9B3F30ADA0C436CB62F18898733718916EBBA71E6CD4DCAE32AE65B759C46E70DBF49C94A5BE86D2CB62A9A9A9E3A6B637F717572CF88A1D2D2050015A9AF0CD032C2C8E1796545405C8EC6638690FAE1C9F5CA5C48F5129F48B6BA248F4CAE8B2788F66BA526B4A8A5527771A62A4CB5B6DB4E556865090C75179355BAB2487085A8BAAEAA9353C3E8D35DA2E2DEDAEC5C5C6AD201A53A4A02F1B2BA131C5C695EC46D11F8ED1E0E94ABD30B414FB48F76A142848F0D770CE66DB83684484F50EB5CF49B75C39D9B7CAA7DC52CB97E698565590C6C89B6ECD8A402A9B1DD8D152EC96D87FE0D51A3BAD464B8B5A12841254A3EEA871AD7544DCE3B6413C713A179924381A37A2B8E0B0365BA9A273C3DA18C188C7EA51A43B9367D2F510B575F5F151E8523A4A87129E049E93E15D3A6738C4DC3C273861C424CFD95CEC4380F214FEDA2D9730D226454BA92E7A5492DA565A45426A8769EA343DEFC952797B35BCDCDF6D3B743ED83853ED387A0D2A3C842A5BB35CC66B14C5A78E907D38D3D08FB6F7662D1B8171BC4487719F623678F1E439210C267C65B8FC5BC496980875F8EEB4A58B4703EA2F8151A701A5179BF43146268202D71396BA8E1D55E3D25176F6D3BE4314D20701C69438D7AFD41468AB5DC9150A499A968A802997EF7B848F71A7949528D057DD069A28EE9774C236387F18FD46886FF00B313DF7B986BC40A79F14EF6E9EBB7488921A8B1A1CC8A1282EBADA03925A2E29DF4A721F5AE3CB67DEE928523A148F75408D6ACDF2F2093C4644C6CA052BDECAB5C45687CCB26D60919A7592CEAA2B2DB2B626B3CC86F37198D4284F5B1886B4BF62B2636CFA8E4B5BCDABD560DAA4C2E84A19A8AB35A9AD754DC733EE368E1770C500B871353A29E8042D1BB65ACD589EE79634655F5D2AAD0C9C131E61C8D266BB3E63D0941D65C5B16188E30A6CFA890DAA0D8A3292A278F8D002694AEAB6F396F7753091ED80C8327787523CA4AADDB25835871928786A4453E162B75B05E2EF6F17A999358ED331DB756E8F3B262CB6D92F30530E3A23A1F429C21481D2B42C114A83A38735731B276F8AF63637102A18DC5A731925B2EC9B6491B835A4902B424E6AB9DB1ADC894F9F56D992B700AEAB755642B28689A28A50F4724800D694D746CE6ADC34861B9C001851BEC5CF4BB0DB6A2EF071F28F58523DBB15DC45C84BCC6312D092105B2AB75B8829A024F5CA4A9C35AD78EA9FDA19B51709C6AE9A37EEAA8EC91E9D26377F39DF794A70316DCE5BD1C22C5E8321B3EA9718B200A5D1412A521BE8269C3E8D5D1731CE01D771524FEF7F220AE361B67B86984F95EEFBCA40B6629B92DD15F00CA29D2689720304107894FA4EA426BE63561E6173F0333BCDF9100EE5CB4AE3083DAE27D688AEE9DC8B358A6CF7DF5C48F0DB4C8794D5C07586D2EA01E94B4E15155154E7AC45B8453CC01739C4F4AC3F6C8A28E8C8D8D03AAAA37FD6DBC4CAAE54D90A078D54FBAAF1E00F52967883A6F1CEE68EE6495C9610B9D57015EC08F7139CF4A4DCD4E043C59B64875B539D4E290E0428A5692A550114F2E7ADA49E571035118AD1B676E2B85705243603AC5A82503A8B0D2DD584BA9053F0C9250549094A8AD42BCEB5D55DE3501D89EB5989903250E73039A06545944392B29F49890A1EA9E6872A0F1F150E40F868B8C818138D1532C6048430618A31B6D92E8FF00404437380E6452BC0509E3E1AD8CD137DE345518642280290E06257C752DF4C5A55B038D7915A8FDA7559BDB56FBCF0B436B31C823EB66097C201532523D323EE93F927CF54BF77B26FDAC6AB53673E38233B36257EB63CDC98D21C8AFA07B8E36DA091C287DD712B41A83E20EA89F73B19986378D4C2B4F8799A6B91456719992FAE5DC25FAB29D73A9C53890971C210DA42C86C2114205050786969BF898E11C0DA4607B55CC61CDE7BD5E2BD5EB1C261E888912A34405684AD721E4B4495AC02AE97569242471A27C3549BD76979C49E14FC9EB475BC2F95ED6B1A4D48C6869DA8E5FB662D1289FD616A628074911213EBE09AD4FA8E38D2155200E0A3CF48BE26E9E6BE1E9ED23D40AEADBB33194FCFB5C7A9A7D6421746451D0D25A8B6C2405A497242D002E8A5104A1A6FABC7FCE6AB97C473CBEA88876F6D007BB1EAFCAB2B37D9EA24A0C58DD6B5921B690A3C471E2F97940FD1A19E1DC6B82690D85BB7838F6FD0279897296B042E53EE0245425C5B69AF87BA8E94F3F668491A4A6715AC4DC1AD68F32768CE15A9C2A4924A8D7AD5523DC239D4D7868620F04C238401C11142654A4552D0A12BE5ECA034AD396A8909AA31908CEA9DA2347DEA213C55E47CFE9D0CE7145B206A248E858FC94FE03E5F49D0EE7229900AA20642A8014A683A78F49AF3F3AF1D0C4F7916C842208A28780E154F3E3E0AD0EF453221E84FD14F04D53F954E7F47853423B33D88C647D68A222BA48A8A73E35F33F40D092628E6331468DAFF32C0EA34E1C0F2FBA4D29CB40B850947C6D14A5314476B095055120FDDEAA268799F1001D0925530881EBA22A8ADB754F02380E4A3E7E46BA05E4D53385CE1E744519BE0284721F787B3CC6819B34D6279A0AA218ADABCBCB91AF8FE1F0D00F23826D0B85510C41423D847EDD7404B884CE23922A87E1F57F83A5B2E69AC392288FF70FD3A5F2FBC9947EE05B1AAD6E96A2896A2896A2896A2896A2896A28BF1B3EA1E7F6EBF44B15F25D0A5D43CFEDD4C54A14BA879FDBA98A9429750F3FB7531528559BEDF3B60CDF7E2E4244642EC18543740BAE5535957A4AE923AE1D9D85749B84E572E1F9A6EB55A8723C1F39F3F6D7CA36E5921136EAE1DC881C7B5E7ECB7D27804EB69D8EEB747EA1DCB607171FA87495D71B0F66DDBEDA71D8F8E4CDBBB26465A61689577C818FD23799CEBBFED0F99EB5A5514ACA474218F4D2D8E007327E59DF39BF99798AF4DDDEDCBC32BDC634E98E31C006F13D24D49E95E8967B6D8EDF108A060D5C5C712EED3EA53EEDAED8E0DB578EB78C6038E41C66C8DCA7E70B6DB4381954F9653F13289756E954892A424AD449AA86838A49E4D2EB876B7D3DE3EBF62AE40DA92D1418E014B4D84501F13D255D29AF8D4711C8F1E3E234645A850625BD7965E9EA414B4C72042E6D7CD29AEAD8DC3A80A48DC36C74927A4D71DBD500279F2D3FDA6A2E1B5C7AC25774291BA8725467B76ECC0EE86DBE3FB80E658FDBE3DFDEB8ACC162DAC3AE32AB75CE7DA949F8975D21615F0495805229D47D9A797FB9C96B2686C7AA80635EAAA060B464CCD4E711D415A081F2F7C7DB4C7F5F36C85403BD4FFA30EDE8EB8FD4AA34DD5A596DDE9081D47A8541E1C78003982E89A3626569D255AEDAADE9A8BDD5F222C8BD86E16CF4FAD94E52F14CA2E502EDED831BA1410C9098448710A20F5D68694E915D5F1EF77A69F9B6014EBF6A19FB75AE2753E95E9FC8A64C43B5EC5F13C6727C519BC5FE6D9B2C8C634C61E92D36F45065C896EAE1BA8642595BE5E4073DCA2FD3075996FEEA69639DCD607C788A71C298AA9B6D0C71BE3AB8B1F81C50B45ECDB6C62B6A42C5FE4D54DAFA9DBB3A9FB81B053D2D2508215E99AD457DE34A70A3466EBB83883DC1FC90973AC6D1B80AD3B4A2567B5ADAB68BBD56075EF590104BF719CEA9068A1D4DF548242C95F126BC40D12CDC37034A3E9E408492D6D057BA09ED2A41C4F64F00C42E3FA56C98E42833BA3A7D66927DE41624475B4E05157A8DBCCCA5A5695542852BC86AE1737B333448F258A830DB46753583523183B7BB6F097546DC60B5EAEA52D18BD990F157554ABAFE0942A4F1E5A39B2DE11DE964FE71F6A5EF8EDEB40C603FC51EC46712CB83B494368C5B1B8C84726D58EDA16C03EC4084B6F99E652344B44EE1DE7BC8ED3ED423B4B4D5A1A0F604FACE3D89AC02C58EDB1ABC54E59822DAA2478A9A8C0C31C4F2F4781F2D58D8B83B13D6857CAE19D7CEA39CFB138B1613B3A2C89622702E2A4466E6371A841E994EC6536EB2C8A543DE8F420A4554D1217A79B6C513A4113F0938578F61F567DA97DE4F2B19A9A2ADA7947E44B6D36CD50ED1FA65D5C272E179ABADA4494C3931ADC1655199F42E08885B724AC17D694A40EA58142A05448BF2C74BE0B08D2CC3B4F1F36482865735BE2381ABB1C73A2941389DC99014634D0907EFFC3ADE6EA47F9E66ADFE0AEA86C6CCC2C3E775715B8C5B243669541238D0F5A543E90A48A703A25918E841BE507A53EC7832811F99278734A92AAF21C92A2468A6C753C108F9001504A7E8D15E484F532EA7FD11E1C7C6BC34536D9EE3C12F92E636D6B54DB9C58DCB8E177F8E9EA42DD82940EA4814AC8638915F21A36D6274570D24615F5140CB232561A1A2AD88DB5B83412B71C4A901295015153C8F01C789D747039B21001A14A6E290F78E2149784632CC466F1EA24A8B96E7D14A1F147114141F95A2E6B7702CA1CDC12A3B8442B870526DB9DBBB90D8616EBEEC48C84A1B6CA5010DA5A4A114E9E915E94D3CC9D63E02DDB26A0078878A11DB930648B627C4BDE98524282547A3AFA78540AF0F775B8B68D9F910AFDD1D5A0A23FB53329BE852FA1A6F9159484A0003995A87401F49D0D3470509E3DAAA1B8CD23B483E652A5AEF18FC30D19B78841496C7521A75325551C68511048503F481AE76EDB2622369CFE99AE92C619A5A17921BD782326370B188C8223479B396949A1F4DB8CCABDA1C756A74034FF35A48FB6BA73B8015FA7D2ABAEB6B5B26C7DFC5D4FA7D2898AE1B9D2DCAA6140B7C241068A7D4E4A747856B5618FA8A0E898AC9E31739C4F99572DBD93B260FA76507A107CACA2EF70E2F5CE52D24905B89FEAED1F34F4444B2DABEBAE983226333F4FE5430B38410591B73E809BD978265C75AD0EB7F9D6D6A75C4752C00E54B81B554B85343C09A1235B9D34CD171C2453823A977B75C51F42E37076A8523ABA198890146B4E94256A209F0A8D0E5AC46B5AEEB4DADB525280A59A85F4915502686A470AD788FA3543C30E015EDAB72A2DF8C169A1E3CD47CABC3E9D54E634A203DC022682A553891C481C38F2A795743C91B714546F71E28AE021C515748592A57834E28F007974A7C74048D08F88B8A39B6225065284455AB839552D3D23DE3C382BA78A7F6B40CA404C6204F627FB64090FA7AD084F495A81256902A9571E1C49034BE4201C532885516C7B53BE99714522A904712798A0E4079E8373B146B1BC53F3368E92905CE64D688FDE8AF0AA8F33AA2A6A886B56EFC308EE7485150E0493C38D3970F2D5671ED57373A7527D8D1D0188CBA1EA5B89A9AF87550F2F60D0EE18945332459163B40F16D3CBC457C4F9D7CB42488D612892222A1BE1C81E14F653CB868178C5308D155BC1403514AFD5E2741C81308B24511797D43F1E97C99A671FBA9FE2529EDA0FB3414A2A5308B21D089628E5F57DBA5AF143E44D22C51146152052BC47E3D012E0995BF04491122BC3871FDCD2E71C53784E08963FDCFA4E8093DE4D63F742CFAAD6E96A2896A2896A2896A2896A2896A28BF1AEAFB75FA1FA97C9D8255F6EA6A5304ABEDD4D4A60AECF6AFDA95C377E63397E5EDC8B6EDDC0900A523A9A97933ECAAAA890D4402DC0491475E1CFEEA78F1D7947CC2F991072D4676BDB08937C78ED1103F69DFC2E81E52BA9D8797A4DC48BAB905B640F95E7A07574AEDE58ACD69C6ED106C961B7C5B55AADB1DB8B0E0446D2CC78ED369A04B696D1427C544F126A49AEBE5AB9BBB9BCBB7DD5E3CBEE5EEA97125C493D67E8382F4611C70C4228406B46000C2811134BE200E20835A834F0152091C4EB2D602DD4EC48F2D3C9D68579230E29D983EE8038279FBB50906A6A0F8A49F66984601181A9E232F476201F83E94FA76A7D689504A69C00015D352491E74155254344B283115D5E841C9E4A71A2E737CD0DB0BD8BC44F524846E246205294AE397E15F13AE8F6535B9A50834CFE9825779411E19229EC4980BED736D7DC008393A6BC38D32DBE71A9A73AE99EE0CD57249E81F5216DDDA6218F157150D5134E914A53801CCFD95A68110027256B9E74F52C2A6F89341C29C801FBBCB46C56F9018A0A4969524AF21342052BC491ED06BCFDA3450830A7042B9E29D4B0B8D8A72E3FB068E8E1C50323F0AF15842135E42BF60FDCD1CC80A09F20AAF729013CBF1D7FB1A2E2B6F3211F2E1C10D643915AF1788C4DBA9941A97399B74711223B2DC725C8AFA0C86DA0540BA41009E15F1D35B7B47CA74B29502B89A76A592DC36315756955A50738C7272D0C97E44396EAA5A5B817088F449CE0828438FB898EB0545A0875242BC6A29A3858CCDC68081D19208DD30F485AE9DC7C53DFF004A5C95BC8B77E966E3A61C84489107A8A54EC56D694178A48E201A80479E896EDF28C5C069AD108EBB8AB856B45998DD6B2AA43B0DC1776D94C9896E7E44DB705DBD122E0C36F468CFAD6E3A501F6DF48A947454F4923450DBE4A02082684E78E0853731E441A26EBA6EE5C7E196FE3B6DB7BF0E2CF5DA65C8B8990CADB949991E23498F1632A9E9ADA7C3A92A526ADD2838E8B8AC19A878B5D44570FCA8096624D63E95923EEB6470E649666C9B45BE4DB9982FB916330F95CF2A0FBF2DB8EFAAE0DBACD6346516D5E9AFA5478834D18CB2B62D04071070EC42492CDAA9518299714C97229B1EDB789F91C8911EE5676E52ED4FB21D6214997E8498E98CE3A874ADA663294DABAC924F114E5AD258616D63634070767D41563C5CDC6B519290D9C8DCA7BCAB5B95FDF4182D126A0F369A6544FB79EA361C70AD7CAA87EAE8F427763255000FC05A9DE24F012D04F1E207A33909F0E1C386AF6C6EAE04842BF49142D085B70B317A3E197F5B76D8093F0CD0052E4EA82A971C0E3F167957C46985A445B3B5E4934ECE84BAE98D923318A349E233CFAEAABD47DC5B906908306111D291EF39388A5003CA5274E98456A0005257D9EAC1D2BE9D8DF622DC6F7025A23DDC0816DEAF81797D4AF8D573A00948F8E008F77C6BAB6491EF2D35A50A1BF5640DD40B9E6A29C3CFEEA75B7EE1CF7580D830D9290A52C2224773A42949A142A4A9F255C398E206B673DC5D50EC7B557FAA2D00C5AF34E927D545BECE77735F4D6E721B35344C5098C3957808A86870D68E7B8E655ADDAAD01C2269EDC7EB2538B192BCFA81599329753EF3A54EA8F8F3595AB55B9F546C76CC8C518D6B7B07B115C3BEDC96522344748000594B4B594A880403D291D2A20D75439AD39A31ADA65544F1A7DF5482A5372D09E902A525B03A8848F007893AA1EC8C70089655144283787C8F51B0091CD6ED4FD74A9D50F701904631A4A3DB442B80692D84B1F9A79755153AAAABDDA8E9484A69C79D74BE51A9F5AD118C8D3D39024197143AA0A5387A3DC4148480A27F294A24D567541706369528B6309A22E6AC69082545D34493C0247215F007557898E05102320649EE15A1B5A192E25C59286CD14A514F14F203870D60B870534AA85DED6EF6F276C3B05B87DC1EDA58B6BB35B46D9D963DF6FB8466B0F26B4DD665B53758F06E736D5965A2F52612DF8D1A625D6E1BB6C6FAC34A1F1054A4A4749CAFB6ED9BE6ED0ED17CE9E2927716B5EC2D201A1201616D69514A8771CB34FF0097F6FB0DD2FE2DBAE8CAC7CAEA07374915A5402D22BE5D5E455FBB2EEEA7BEBEF2761B19EE036FF6E3B46C571ACAAEB945BE1D9B2ECC378517C8CEE33904FC7E5AE40B2E237381E8BF26DEA5B5D0F28FA6475006A34DF99797F957973759369BB9B709268DAD25CC6434EF343852AF07007A13BDDB67D8764DC1FB74F25E3E5606925AD8E9DE00F1703C54C76DEE47BDFDB2EE9BB75D9EEE0766B6098D9CEE0326CDB0F85BC3B439B67D7D363CC31EDADCD33FB262F74B2E598F5824C1BAE46F622A4307D37E339150F2C3C95B6A4254C9B1F2BDF6C37BB8ECF7377FACACD8C79866646DD4C74AC8DCE0E639D50DD78E20D69850ADA3B0D96E36CB8BBDBE6B8377035AE31C8D68AB4BDAD2E05A4D40D58E46B4C28BAD16E6D5E9857493FE30F23FBE34D79BCCDAA59090886C0D2FE09B574FDE53A7CBFCA2ABF66974AC24A650B823165859652380F75AAD7FECD741BA328F63C513C2194F524A960501F21CFA4789D51A31440764BC2E3A1C75653D6A20D0748A83EEA29F8F5A1000EB56B6B5C13E311FDC8A0209F4D7D4AAF3A71F3A54D4E8677A914D28923798484D4F8FF6068592944647F4F3A208D5F7788E47C3D87DBA05F812984411144350389FD8740C8734CE2C02268BCBEA1A5D2669947EEAAD9DEF770994F6ABDA66F3EFEE0B86C5DC4CDF6FF1EB53D866053177143599E5B90E4F62C4F1BC611FA21B7AE6B977CBD5F988CC2184A9C71F7109038E9D7286C56DCCBCCF69B1DECC6DECE790F8928A7E6D8D639EF7F7B0A35AD24D700014C21E01520C97B83F9D96DFEC2E63BFB9D76DDF2E1C4ED9806D7E57BAB96E0171EE1BB86B8EE0DA6D38663772CA6F16028C6B64EFB82CCC97E02D6E36D223DF5D82B7D49499494F52D3D541B17C9EBFDF22D8ECB70E609649EE590B2516B6A2273A478635DDFB86C8195209AC61D4FB3C1328CB80A8A64ABCFCB57E685F356F9A1EC8655BFDDBF76F5F2F9C430EC43762F7B3D72B6EF1EF6771D8FE4AFE4D60C4306CD264E830F0AD98DC1B5BB6276D5B810DB69D7263520C869E4A994A1285B8E3E63FCB6F963F2DB798B62DFAFF007E96EE5B56CE0DBDBDA3D818E9248C0264B889DAB544E240691423BD5A8065B3E67B6AC0DA03C49F62E847663DD7FCC1379B7A3BB5ED8FBA1D92D87ED8F7976131CD86CF76CEFD8D4CCDB79F6DB7876FB7667EF0DA6E795D99D5645B737472CF6FBC6D9B309B74BB1A54494EBEDC987D6D846BCF79C395B90F67D9F6AE64E5ABDBEDCB67BE7DCC5335E23B79ADE5805BB831DDC95BA8B662E2285AE68696BE86A9ADB493BDEE8E40D6B9A011C4106BD9D0B9FBDA87CE63E639DD8FCC2FBA2F972E1BDBCF66189EE776B10F76EE993E6D996E1EF52309C9ED9B4FBB1876D44A938F0C771ABFDE9A7322979BC3B8446E547694DC40B4BFE9BE9F4CF6FCD7F27BE5E72AF20ED9F30EF370DE25DB774740D6471C56FE230CF049380FD6F6B7B823731C5A4D5D42DAB7156DB5FDDCD72FB46B630F603892698103876AEAB66192FCEA6C78BDF2F18B6D3FCB5F37C82D96E9136D58846DDFEE42C13323931D3EA0B3C0BC5EF6B99B2C1B8CD425488EA98EC7885F284BCFB0D953C8F2CB4B6F9353DCB21BABBE6382DDCE01D21B7B470603F68B5B36A2071D20BA95A35C680B071DC03496B6127A2AEF62B27D84771996F769DA26CAF705B818542DB7CFB3FB1DE8E75B7F6F7AE0FC5C2B34C5B2FC8B0ACAB164BD744227B8F58AFD8E488CE97057D56D542534279CE7BE5EB4E54E6CBDD82C2675C585BBDBE14A680C91BE3648C7F770EF35E08A70215D6B2BA781B2B851C4623A083421515EEA7E7010710EEAE17CBCFB19D9593DE8F7CD2213D72CCF138B97C6C03657B7CB030C417AE194EF9EE9BB6BBEFE8F4D863DDA2BF22D56E88FCA5ADF6A129F8F3E5448EF771CAFF291F77CACEF981CEF7A366E480E023798CCB7174E24D196D06A6D7516B807BDC00A1786BA36BDC069EFC367F85B66F8973C45681BD64FABD6A5E660FCEB60D94E41332CF95E6497E43264AB69EDDB6FDD66256F79D4D1C3698FBF73776F2D7429C4A0B489AE6DD213D4E05AA3808285A92FF932F9BE1D91733470569E399AC643FC636A208FB748BB395356351BD37102B5849E8A387FF954FF00A2A2CEC0FE685BC5DDB7793DCD767DBE1DA3DE7B4BDC0ED836BB6FB23CB719C8B31677065DF72ECA325BFDBEED73C5331B65B31DB1DFB6BA4D8D1699561B8B307D4BAA24BCF28B48421B533E7CF965B472A727EDBCDDB26ECCDD6C373BA9591BD91F841B1B18D2D0F8CB9EE6CC1DADB2B0BA8C200C4925696B7924F70F8248F4398D15C6B89E83D1953A5767B5E3A9825A8A2FC68FAC7B75FA15A97CA3A4A5D63DBA9A94D255A3ED7F60656F565A255D9A7E3E098FBCD3D7F9A096FE39DAF5B3668AE03D5EA4909AB8A4FF008B6EA7991AF3AF989CF11F29ED9E1DB39A7799C111B4E3A4717B8740E1D25745CBDB13F76B9D72822C987BC7A4FEF476F1E85DDEB043B6D92D50ACF668716DF6DB732989021C46C331A345613D0D32CA13C1284A470E649E278F1D7C8B7371717772EB8BA7992E1F4739E4924934A93D352BD51AD8E18C451340601403800889A91D4398A0E0929AF3E141E016A279FD1ACB48341957A07421E43406B8A728EE5403D4491EDA713ECFB6A7C3464468298769CFE9EB403CF14F6C3B400F23C39D00200E0154E15F6E8B8B134390E39F95052E0704FEC394208E00D3A8F23400F1A9E0401F6E8C6574E23141BF32064B9E9F3366C3BB178C394002770E2D7DBD58EDF7F0F14F3D743B3B9C2E03714A6F48D3E546FD88B0076B9B6A4822AACA15C4000D32EBE81C4731C35D0DCB03E724654F520586910E9A9570148A0A72F3D54D841C4E6B5321A1AE755ACE37C0D3C48FB79E8A8A20288395C403DAB074ABA87D04569F5F1F0D18D8DA8573AB885E8A6D441FAABC283EAD191443008495D86257A96781247B797E1AE8F6478D12E7BAA12F4ABC7F73C85345B5872E0867BB0EB50FEF1201B263ACFC47C22DECD6C096DE4FA45C414BAF28ADB4BA95B6A5239F14A80F11A7360C0242ECC0614A6ECD63A7F09073D679D64BBE352E58BA5CE3B0CE4ADBD714C27643CA7AE0F224C46DE4C567A12A5228DA6894A494800014D328CB1EC73450134C2BD1D096BC1043B139ACEFE0775BA5AA4AE241911725B2DAED2ED9DE90C38D4695EAB6FB575B4ADDA0F550FC5708290474BC10AF0D58D958C70A9AC449AFA8AA0C65E0E7AB82CCFE0B964D46410E3DA56CA6E175B5CD6A54979969BF86B7C1828586A8A52CC95C88FD280474806A4E8864B0B74B89AD01F495439921A8A742771B5591B08B8C682F467225C1DB15C0B9729803C8B85B94D332D2131A204865C871590934A95A4D4D35B8B98F02EAEA04E5D0552617E34A628C13B6D7076F5367BEF599C872DE835F523487A7A22C5696D3CDB4B50434DB9250F2856A4007C751B70DD2050D479956623A8E23D68FB1DC7655922C786E5D1EB8458315106036B8EDB05A8ADF425A329685ACCB92DB6D8405D103A7F26A49D47481E6B400F1559669E28B10C54014E1FB3D9AB1A686BC556E155B688A68294E2380D5C1D8D10EE6A07DCB60B785DED4403F9A8838FF00753A2A7D9C74531E3CA857B0E6AB5C64A7A451409A27857CC0D13AC21DD1925489894254866F090D92BF83480BF242C9414FD678EB3E2D083C154612558EB46D6D89A6DA5186EBCA294A945E90EB8092915AA53D09A7D5ADBC60B5F01DD08A3F51AD91A758DB66D919097673E1C019490B437024AC257D40F500B00FD2359F1874AC7807A148513188CCD3D284C229FBD61B4F87B11AD4CA32E0B6F00E6564B6D9FA65DE886E83E3984F04D00E8B743AF2FEFB58320A2DC446A6B54F0EDB80628527DE763A791F190D8E74D52F7ABE38C7108CEDF6E4A94289E7ECE1F668395E51F1440A3EB1D8D6EB6E290D29757DDFBA82AF1005680F9696C92E344CE28414E8FD86426E96C68B0A429C52BA438929EAA11522A072A6857C84A2D90D11E0C75F4B0E15FA49A2175055523DC51E341C388D55A8F0576814C53843B2B686D8EB5A78B4D2A894D4FDD4F9F96AC1A8AD08685CFF00F9AE418AC7CB73BB82147AC6D25C4A7A8A4124DD6D5C93404F3D761C823FF78EDE7FF103EA29F72A53F68ED29FED47D45523F91C770FDBB6DE7CB9B69319DC2DF1D9DC2B298794EEC3D3B1DCBF72B0CC72FD11999B9191CA84EC9B45E6F50E7B0DCB88E21C694A6C05B6A0A4D41AEBA8F99DB3EED79CE1713DA5ADC4B09645473237B9A691B41A1008C0E69EF3B6DD7D71CC534B04133E32C8E85AC7107B8DAE201182EAC76FDBF7B35DDDC8DCABE605FAA3B9387EC477072705C3B3EB33B1B20B1CFCAAC7B4980E4577CA719BB06D7114FDB25EE95CECCDCC84B7187D8656B69D5B4F555E7FBC6D7B972E8822BA1243717769ADEC3DD21AE964686B8678889AFA1C4122A010B9EBADBEEB6AF0A39F5C72CF00739A7021A5EF01AE19E3A03A8710730085CFADC8DF5EEE716F9BDEC5F64765EE572089B1DBABB1D3B7BEF1EBEDB6C849CE2D86D4D6EE467B15B5646BDB3F814DBE75D76D98597DF82F496E34A75B0B2E043C9EAED36AE5FB8F97777CCF25930EEB6F74201F9C9830D7C2EF16F8B5A8121C0380A8072A85D4DA59ED8FE5897777DBB7E2E39BC31DF9349AE8EF11AF3A3B206951D182EE5AED773918DAEC1172CBD58A72A23519BCAACF1B1A7EFF001DD6D6DADC9CCC7BEE3D79C60CB93D0A0B0E5B5C6005ABA1B4FBBD3E480864C24746C7C6093A497693D556B9AEA76381EB4822998D7076905B5C8D69E820FA6AB9EBDACB3DD4EF66CCEF94BC93BCBCDE06E2E35DC47735B31B7F95DB7693B7F6B1FB3DAF6437732BDACC5AF190E1EFEDA3CEE432AF0EE24A9B7369AB9424B8DC9F463AA32901F3D6730FECF6D5B95A361DB22364FB2B59A4619AE35133C2C95E1AF12F740D7A5A4B5D88ABB50345D35D3ECADAE620CB76F84E8637B86A7D497B0388075614AD0607A4D725573E539F361CDF7C73BCAFB41EF4245A2D9DCD58EE9945CB6AB3C8D61670DC73B85C1ACD7DBDDA6E0EE356B6E1C0B3AB21C6E6D8A584084109B8408EED1A126DF3D4A73F31BE5E59ED1671F3372B873B61735A268F56B75B48E6B48D4492ED2E0E6FBDEEB88C74BD89C6EFB3C76EC6DF5854D990350AD4B09008A9CE86A33C8F510BA33F315CCF7C36E3B6EC9375762378EF3B4599E2B906D7DAE324E13B6F9D631758B9BEEB61D81DD0DEACB9963171BAAE446B6654E3D1950AE505287D86CB89711D685707C950ED17FBEC7B76EF6ADB9B5919313F9C9637831C2F9069731E05096007535D8134230283DA8432DC8867607B08771208A349CC1EAE20AAA3F38BDF5EEABB17ECC21EFF00EC5F72D969CD318CEF09C3EF51F3BDBAD87C9AD196DB32A7EEB1A54E9516DFB558F3967BEC49423A9A7622D113D0694DAA329C73D743DF95FB5F2F7387361D9777B08FE1648647B4C72DC35CC2C00800999DA9A456A1DDEA90755050B5D9E0B5BDBBF0268C682D2450B8529E5387A7AD5CBB1EC7F7C574DB6C7F21C6FE60D7673706E78EDB6F2DA33BEDA7632F1B712275C2DC99BF07371DC3ECF82E64C412E3E847A8CE401C6C24ABA5CAF46B90B8DEF94A2BF921B8D91BF02D796FE6EEAE1B2800D2A1CF7491D7A8C58F566B66C96BE210611A2BC1CEAE7D26A3D0A12EC87E659BB596775F9FFCBAFBEADB6C2F683BC2C26D32329C1EFF00B6D3AEEFECDF70983C782ABBAB22DB96B249132FB6D9FF00ABC955C044724CB5391E34E0E8872604986865CE1C85B75B72D41CF7C9D712DD72B4CE0C91B28689EDA4274E997400D235777500DA12CA6B6BDAF2C64B363611756CE2E80E75CDA7A0D3E9E75DBB44E8B6C833AE776990EDF6EB7447E74EB84C90D44850614469C7E5CC992E42DB623458CC36A5B8E2D494210092401AF1ED2F95E238C1748E200005492700001993C005BC409C170E3E543F359CB3BCDEF2BBE6D81DCAB6CFC5EDF6C9586EFE768B65BDDA1AB35DAE3DAEE438D62B66B65D54D2A34298FC3C9ED972C6F328CA7BE29F52B319480E88F1D86D3EBBF337E5ADB729F2A6CDBE6DEE6C8F7092DAF5CD76A68BC6BDEE2DCC805844B01A507E61A69A9CE25DF8218C6D3B0F6E3FB9E45DF9BEE278E6696A62CB9559E1DF6D51AFD8A64ECC19E82E476EFF0083E5166CD713BA040526B26C59563F0A7315AA43D1D04822A0F86C7737169299AD9E592963D848CF4C8C746F6F6398E734F512AE8B0202863BE614EC7BBCB1FF00EA9F70FF00F08F30D1DC9BFF00CCF68FF13B5FF8F1A671FBA7B0AE0D7F53C3FF00F3537C3FEBA372BFE00F6CDAF66FF36BFF00D8765FE090FF00D55DA32C01D07F8DEA0BEAD60E1B8BB3984BDC06EC701BCD2E18DDB70E9B9225A22E72B17B3DCEE77BB5D91E7BAA8B8106ED7C98FB69A7BAE4859AFBC75F2DC979726D05817BBE0DAF3206700F700D73BB4B5AD07A804F6268AD78D17C3D7CACF77B69B65BFACEFF00374CA778F7436EF69B189F8BF761608391EE666B8D607619B7E95DD56C05C62D9225DF29B9DAADF26EF26DF6A94FB7190E29E5B319D58494B6B23ECEF9A1B4EEBBCFF96AE53B5D9EDAE2EEE5B2D8B8B218DF2B834595D02E2D60710D05CD04D29520664206C24647BB4CE91C1A34BB334FB4DE95F563BEBF355EC8769F1BC69CC67BA1EDD773770B3FDCADB0DABDBBDB7C1378F06CDB2CCB327DCBDC2C63058C20E3D86DF2F57B55BAC88C88CE9D2BD14C68B1D82A75C47526BF2D6C7F2BB9D775B9905CED9B85B6DF05B4D3CB34B6F246C632189F29ABE46B5B5768D2D6D6AE270053C96F6D98051EC2F2400010492481C116F7E7BE164EC07B00EEB7B80DBDB0E3F8E4BDA6DB1DD4DC1C3AD31ADD123585FDDECF2ED75B959275C2DE842233E9C9B787336E65C474F549765BCA355AF889C8BB2CDCFBCFBB56C3B849248CBBB982291C492EF0226B4380398D16F196B3F7A1A3805B5CC82D6D5F2B001A4123B4FE52BE767FA9E5B43FA53B70EF03BD2CD9D7F23DDFDFBEE4EE181DE335BEB9FA4B24BBD9707C631ECF6F1747AECFB8F4A2E6579DEEB4F76E15285CA936F69C77AFA1A23E83FF00375BB785CC5B4726D9011ED361B7095B1B70635D23DD135BA461DC8A0686F068790295294EC31D6192E1D8C8E7D2BD98FA495F635AF9093F5022FB7BC391DCEC4EEA2DE556DCF5DD8CBBEC3652D468ACFA59863073BC7B3EC2A55DA59507932700B946BE350929490E379148EB50F49B1A7A37FBC3CB4795E4EF588BE6DD32A4FE6DFE13E290346549418CBBA0C4DA66555E137C6F1C7BDA749EB15A8F363E753DE912B52D4517E32DEB7D3FB5AFD01D6BE57D289B0EC6AED9BE4B68C5EC8CA9EB85DE5B719B3D35430D93D4FCA78D404B11584A9C59A8F753A5DBB6ED6BB36DD2EE57869044D24F493C1A3AC9A01DA89B3B396FAE596B00AC8F34ECE927A866BBEDB498A5836CF09B1E29626D088902334E4B981A421CB8DC5E4A5C9736491D41C7DF78D482494A4015A6BE2AE62DE6F798B769B73BD357BDD80CC35BF65A2BC00F3E7C57B4D8D9C3B6DA32D2DC51ADCCF127893DAA5887714140E2824ACF1511D07A943A28820A813FD8D046176A1423102997018AAE420E1C53E3334747320F05294425283E6415724A790A0AF3D5AD67F378F5FD3A90523A83857827989281A152923A87BA0949278F2A0E24AABE1A2A834E06BE9FA5504F271A844115F0AFBAA151CC73000A83C280703A2A23C5D8FA3B50721E8CCA278CF0212924A891434FBD5F13CF9E8D8DA6BD03AD0AF38AA1BF3256FD4D89B056BEE6E0402014F024E3F9050541E3C8D74FF67A1BAAE15A7B12CBAFE8BBD957DA8F7B1368AFB5CDB6E14A2B2A4F107EE8CBEF9C47134E7AE9A51F9D3D141F5256D7111D3B55BB2C9A1F61E6397ECAEB5D38E4B1937AD605307F7A78F8FEEE898C0E942CA02F1F0C411C01FA39F8FB3443054550AE00E0BC18A7C073FAFF00168C881AD7340CD915EA622BCBFB7E1A3D99F5A0DF82C2B8C40E3F67DBA3598A0A4C0D08C16A2E236EF4075969DE851523D56D0BE850FCB47583D040F11C745B30EC403A99705B6862BC000003CA9C8FD8396886D3342B812B79B8A4903C0914AFD5AB5BD79AA4D75542DF6A09F2AF1E54241FC239EAF04943169CD6C8804D387E11F46ACAAACB7A56DB56E341C3F688F670F66ADD582A34E3D6B38B79F2A7D55F3D6CD779D54E6AD86EDCAA8A03E5CBF16AFD4877353822D8E5070A70AFF6CEAC6BBCEAA736880B74EDE51835ECF4150FFBBD3C0122A6E31695E7A2598A1A4A055760C561BA123CB98F1E1F66AF0C71A043BA4685346DFC43293776E330B7DC1123FB8D20AD7D25FA1240AF01E3ADC44E2705578CD0AF05B31BBAFA6D136F71B1D08E2E94200141E0555D582079E0B4370C4E1231E969BBE36DBAA61BEB937255028ACA7A2DAF713448E3EF6B716CEE2B5372DCC238631E40A7A92873FC96FF00195EB3F0C2AB5F8AAE4BCD96C36C2E5F1D90F39D28BBA925414940E8440B7F3A027993AAE48B48C382BE3943B35B5223E3E8B5FAE7D3F545C59482EC8A2BD14CB41AF495814F493C4D34048240704C2231F1A223853B1A8EDA17EB435953014A0D0F5141D53AD9E9EA1509286C1F1D032894F4A6513A11D0A51B0DEADC2184C484FBE54EBAE0F458013471C5293C535E1D34D2D707EAA13C53263A3A542D4BD3D739170837062D4F251052A002E8A0A2A575554050848F1D608A7BCB70470588DE2E0EA5D4497D888976A3A90C870F1052424ACD15507C29CF51B4E0B575561370647497AE921EF4C01E9A1418494A47DDA0511C69CB57B6BC02A1C42E7A7CD5AEF05DF976776AC21821C776A2E09429C7D6B57FF14B5105293C396BB3E431FF00BC36FF00EBC7D453DE52757992CFFAD1F515497E493B2FDBEE63F2F1DA6BFE7FB0DB379DE4D2F28DD46A6E47976DA61592DFE5B31771B228F0DA9575BCD8A74F7DB8915B4B4D256EA821B484A40000D74DF33776DD6D79BEE20B4BAB88A10C8A8D648F6B45636938070189CD3DE77DCB70B6E639A2B79E66441B1E0D7B801560E00D335D73EDD36636D3B691BBF69DA6C3EC18361DBA3BBAFEEC46C3313B745B26378DDC6E3B69B6B835E22D9ECB0A3C7B7DA62DC2E380B93CB11D0961B7262BA1291EE27CEF79DDAF37AF8792FDEF96E60B7F08BDE4B9CE02491E2A4E2481269A9C70C572F7BBADCEE4617DD39CF9A28B46A71AB880F7B8124E2681D4C71C172B379AF2A77FAC41DA1CF09356FB1EC9590091C6B71EE78D7CBFCA6BB9DBDBFF00F1CDC40FEF46FD56ABB3B07D790AE9DFF8D1F542BE8059BEBEB200013C3C4D7C7C85072D78CBD87A57291BCF91536F97C5D1C6F6D37CC513EF77CFDF9B9C40FBCBEED376D67C7CD5A7DCEB1D6FED3FC26C3FE9215D26E6EFCFC3FF0094B7FF0082C5CEC4760B6CEF7BE5DBB337AC1AF676C7BABD90CFB7EF35EDC77A2D72E559AEB8EE5503B8DDD0BB318D5E6F16C4AAE4D62F7AB9C3617EBB41722D535B6A63015D0F4793D81E729394F9DEEA2BC6FC472EDDC36F1DD404070730DB440BDAD386B68270383DA4B5D98737A56EEA76FDDA464835D9C8D6091B9D4786D1503A457CA303D23D22FCC36EFDD7F613BEBB25BFF646F6C7BDBEDE739EDFF16DFBDAFB9C666CF3EF2E5B7B90DA3B7B7B9F8B5A80690FE397F7BD354B4444AE3DBE5C86C20FC24A80EBF5BF9222E5BE72B3DDB657FC47295F4372FB7941D41B5B598F84F3FBE6E3A6B8B9A0D7BCD7806B76E6DA6E11CF6C75D84AD7963B3FB0E3A49E91D798EB0693B7F5929F5BBF2C0CA52AA01FC726D170028385DA7FB4E917C8614F9891FF00E566FF00442DF9747FFB007F805779F6BE4AC6DE6040D0FF00B9B8C53801FF00C960FB789D78B6E4DADF4FFD6BFF00D2285A77DC7ACFD6BE6AFE652B13FF00AC0FF294636EFD31BA5171FB449CD576A4955D4ED7C7CE37126CC66E45097522DE3128F9512080A4C771E5121252A1EF7C80347C91E6737DFF00A7191C23D5EEF8C6388023AF5987CA02E8EC6A36D9B5FB95C3B683D745D88F99F6F1336ADA5C1BB6483FC622AF7DDFE68D6DA65CEED16DB6EAEED6E162DDB5D95702EBDCD67166C1B65F13CCF70A781824D63166A4C1867F47DD32E8325C5A1A6D6A1E55F2EB6A326E73F30BFC0F076B87C5678F2C30C4FBA755B691BA49DF1C43F380CC439DDE642F68152162CDB57190D28D1C4802BC063875F917147E657BEDB59DAD77EBF2F0F9986C16DDF70982E0BB50F5BBB65EE620E69D99F763DBDE1CDEC54E43F63C71AB65CB7A76436DF06BD5DADB856477F8D0E0B72D7383D6BB57A2D96E285C7F5AE40D9772E64E4ADF7E5EEF73D8CD7B740DDDA18EFECAE64F881DE7D441712C8D6991919738B74D1F2D4D5D4736B704B0B1D42731883F515F677669F0AE9021DCED9322DC6DB718B1A7DBEE1064332E14E852D944889321CB8EB71895164B0E256DB885290B428104820EBE479D8F8DEE8E405B234904114208C0820E208398564598500F7CDFF91DEF2FFE94FB87FF008479869A726FFF0033DA3FC4ED7FE3C699C7EE9EC5C1AFEA781FFF009A9BE1FF005D1B95FF00007B66D7B2FF009B5FFEC3B2FF000487FEAAED19B79A467F8DEA0BEB6E2F103E9FC435F293F3F227F1639F42F86AF94D601826E37F5A07E6EF64DC2C2B12CEECB1710EECEEB16D19963767CA2D71AE8C775DDBDC466E4C40BDC39D1199ECC49CFB4979280E25B7969068B503F68FCD6BFBEDBBFCB4729CDB7CD2C1319AC5A5D1BDCC7169B1BA2412D20D2A01A65500F04BF6F6B5FBBCC1E011A5D9E3F69ABEB437FF00E5D5DA9EF8E2560B4A762F65F0FCB70ADC6DB2DD1C033DB06D66256AC9B0ECB36CB70718CF204CB2DDEC76FB45DE126E871CF819686A421B9112438DBA971B2507E53D87E61734EC97724BF1D7935A4D6F3432C4E9E4732464D13E221CD71734E9D7A9B5150E00820E29F4B69048D034B4381041A0C08355117CE1F6ADEEE8FE5A9DFA76F5B7B72897FDD26F60A665D1B08B15C204DCADCB9E2D253B9B865964595B5BF361399F4DDBB7A0DBCBCDB4996BF5034B1D0A5A1B7CA2DD072C7CC7D8B98370698F6CF8F11991C0866978F064707600F84250E7D09D38546201AEFD9E359CB13317E9AD38E188F3D1710FFA9ADBD78E651D89770FB0E9990866BB49DCACCCE275B5A5F4CCFD49DDBC030F898CDCE4B2B79C5B8A7F25DBABF31EA21286C2186D34EB0A52BDABFCE06CB716DCF1B7EFB477C15DEDA2307878904B217B41FE24B11A67524E592ED8240EB67C5F69AFAF9081EC2BEC175F23A7C9BA4DE2D30EE36DB44BBA5BA2DDAF299ABB45B24CD8CC5C6EA9B6B4DBF7155B613AEA64CE4DBD9790B7CB4950692A0554046AC6C32BE374AC6B8C4CA6A700486D7015390A9CAB9F058A8AD38A71D56B296A28BF181F881ECFD9F5EBEF4F142F983415D14ECE70C8D68B5DCF712E4D7FDE1756DFB658C964B8B8F6D6FF00DB253669EE198F80D8557EEA143C75E01F36B981F7777172FDB13E04443E4A7179F75A71FB231ED23A17A27286D9E0DBBF72947E71E0B5BD4389F29C3C8BA1569C82B1A2D5D20FA29536165054AAA6AA52423ABD35D082AAD081ED3AF1C74244841E95D7486988E845112EC9526AA5254952A85CAA421455C8F4D4AD000268479E8EF0C07E5C025EE70CBB51344BA0E03AC1A8EB0855083C828A566A12A008E93C8D4EAD11570C3F73AD2F94B71C112C19E8E0A4AE81478A8D3A893C949239A154FDAD6E23033C89F4A0DD8F6A2A8B3C70014147828D09A27AABC49F25574432368CC8A75F0423DC7246B01FEB09A9E1C3826BCF8F8FD5ABD8D071188078E5E642BCF0E854A7E62A8F57622C8026B4DC2B6F255695C7B233C479A88D3DD9B0B9CC1C3A3B30405E7F45D02A3D6A4BEC4183FF002B7B71C393D9681C2BC06617CA8E1E5AE9A5FE94F60FA92D6FF47E52AE0FC2920F03CBEDD695C31C96349CFA57A886A2782686BE47FB42BA2187CC8791A2AB3A2DE5447BA7DBC0FB7F068969AE2106E18E192CFF00A30D3EE81FB5E1C345C4E03AD0B28270192F0AB7507DD3FB39E8D63D00E650F5AD27A0D3F27CF87ECF33A2E328491A689BCC135E2923D9E638529F4E8D63B825CF6D325BAC5BCAA80249AD3983C75787D1505A1145BB19B8CD712889025495A8D12965871649FF00B29E3AB03EA683354B8531764A4181B499A49E9A58243295528B92E478C9A13CE8F3C8578F96896B6439028473E318177D3C9545D1762B24713D5224DA621FDE2E43EF2AB41C0FA11D681F84EAE6C129E80867DC443A48EC4F11F62E6229F13798281E3E84790ED3C7875966BABC5BC8ECC843BAE6319029D19D9AB431432EEF25D03F25A8C9457EB2B59D5EDB37939A15F78C6F029EE36DDE1B17A42A2CA96B15E2F3AE049E15E294290346C763C4D3CE817DFD706FD49FDBC671F888F523D9218A0142B67D43FF00BD2E71D5CDB78C3A9C552FB89482464A18EE014D39B5D904266036DA5D7ECE025B69284929BAC35241084A6B523869836D585A0EA012E92EDF5234925512B46D965B7335858C5C9F41A10BF8471B6E95E7EA3DE93607D7ADFC189B8EAA95489A471C5B4539EDC61574C59FBABF7EB60B725F86DB6C8764422EB8B6DF0B536965B92B77A8A795450D39EB0E21A70C9581A5D985671CCE61AD2945BADB3E5A8009140D23A88005421A5C8740FA52356B258CD2A553242F1904C92A7E5B3E74097171F759109528B4643886D2AF8967D12545E534A4F4A78F049D181D01C4A09ED9C60139A1BCEA4D3AE440842B53D3575605390A32524FD7AC992DC2D047707A68B19C3AF32D2E8937C7C87DD53EF36D85B6D38EA921054AE97054F4A40E5C868796483822E264F5C6A9CADB80B2C1FCF4C4C8A8F7BA9C5A0F0F2295549AF9E96CB230E54CD3285B20CD13B360850812CCA47AA948525A4B8D12A35A50FAA0A003ED50D2D9C9A26901D256B3B914D80E863E2243449F7590E2404D154E0195140E3A5EE8DA4D78262D9A89D91935D16508F5A538084F5A44822BD55E91CBDCE1C7C743B83066896CBE75E7F4A4E796438A5F024005457C01E41468081AA4B9A310AF690567E896E27ACB4B526A2A4529C49F2E3AC09DA3BB5C56AE682A8BFCC0B6F37BF7C3B69DD7D87D92DB1464B926E6E3B0F1D194E479762F8C61F65832AEB15FBB3AE29EBA49C9A6DDA3C184A4B2C8B7B7194E3C8517C84A907B0E4EDC76ADAB7CB7DDB76B8F0E081E5DA1AC7BDEE2010DE01A012713AAB865914F39727B0B0DD21DC6FA5D3142ED5A5AD739C48069C3481538F7ABD4A3DF957EC67717DABF6EF8D76E9BE1B5916D8FE3591E6372B5E77896738A6478E48B5E47739F94245F60BF70B4E436E9CD5C663911B4C3893DB701696B5349F50A1973EEEFB2EFFBCC9BD6D5705CD7B180C6F8DED755A037BA685A45054D4B78815C15BCDFB8ED7BB6E6FDCAC26AEA6B41639AE0EAB406E181691415C48E39AEAB34CA10415389FA100AFCC01D5C86B813205CA35D2138034EBC17367BCEED2F7572FEE0FB6CEF6BB6718A5CB7DFB6F17DB05CB6FB3CBBCAC7F1FDD7DB0CA20DDEDF78C5A26471E25C18C6726870B25BAA60C87D85452E5C3D47943E1DB4AFB4E5BE64DBADF67BEE56DF3C46ED37BA5C24600E7452B4821E5B51A9A4B59A8035EED07BC69D9EC1BAC116DF73B2EE65E2C6E6843D82A637B6843A87DE69A36A0638619AB0CE6FBF75B915A9AB461BD9565D84E6F35B445390EF36ED6C2B3B498FCC7941A5DD9F9BB49BA5B9BB9992DAADE4A9E119BC7ADB26621296FAA329656D21FD55CBD0C864B9DD2296D463A6086E3C670E8A4D1451349CABE2380CE8EA50EF0D86DB1BF5CB78D9221C18C9759EAA3D8C603FCA2075A98F65F6DEE3DB4EC2D8300B0B17EDDDC92C2723BE5EE6445E398EDCF39CFF007072EBEE7D9F650A6AFD7BB6D92C30AFB9CE55709EA8FF0016F1891DEF4DB0FA9090B51BAEE11EFBBBBEF26D16D03F4B5A0EA708E38D8D8E36F75A5CE2D8D8D6D682A454D2B81134ADBFBC74CFA46C340062435AD686B4602A68D005698F5212F97A623BD3B5BB018FED56F76DB3782E5B8C5F7716ECAB858B33C6B33C46ED0F35DCBCAF3780CDBE7C09312FECDC60C5C983321B916D698EA67ADB797D7D089CED77B56E1BD3F71DA67F1ADA4646DA398E63DA591323350416904B2A087138E2052A5D5FBAD6E2ECCF6CED51B8346208234B437B29874AAF3F324F95CC5EEBB2EDB0EE43652447C33B92DB9CBB026F2A7A3CC162B5EF5ED3D9B2BB35CAED86E612E3AA3A1FBDD863404C8B4CB925C69C6E39832125B5457A135E45F98A796EDAE362DD8197619E2934546A304CE63835EC06BDD71347B46209D6DC4383DDED1B8FC2C6EB59856D9C0D38E9710711DBC7CFD353BF9CBF6CDDC877AFDAD1EDABB7CDB9817BBB5E33BC2F30BBE6B97E718B6238ADB6D98D2EE72976F80C3B3A7E4973BE3D314CA5485C18D110CACAD321C582DE96FCAAE61D8794B993F5FEF970E644D8646363646F7BC97D054E0181B4AFDA2EAE1A40C519B44905ACDE3CA694691400938AB4166DCFF98041DBDB0E318B7665B676BCE20D8ADB628F76DC1EEAED48DBCB6488301305177B93D856D764B98DCE234B610E9891EDACB8F02A6C3ED503BAE726DBF925F7CFB9B9DDAE1D66E79716C5667C5209AE91E24CC603C35171033A1C95A22B3D65C5E4B6BC1B8FA4FAD00F655F2E2CAB6ABB84DC7EFA7BB7DD2B47701DE9EEADB3F57D37DC6AC536C1B53B1F83FC3C689FC5EECD58AEF2A5DCFE0510A1B7155769698F39D8614D9690EC9B8C89E5F36F3EDB6E5B1C1C9DCB16CFB1E52B676AD2F7074D712549F167734015A927436AD0EC6A43636B0E7CEC7C62DE26E98079C9E93F4F52977B79C47B9ABDF7E1BD5DC26FCEC42314C26E5B53866C9F6DB78B6EE6E0B96CEDBAC0AD174C8337DCB7B39C7E15C23BF6EC8B7773455A9721EB32EEA943167B6447AADC55CD52CDEEEB97A1E4CB4D8F66BDF16F1B72FB8BA6986460964735B1C4237106AD823D740FD18BE470C5C1809021110630E35A9C38F0F30527FCD33B79CB3BB9EC5B7CFB6EC2F6E5BDC9CC774F1E8B6DC3599F9263D89D9B12CCAC97681936259A5EAF77B9F1A53102C37FB347716DC0625C9942AC29B0C3AEAD2ABE5CEFB6DCAFCE765CC1773FC3DADB484C94639EE7C6E058F8DAD6822AE6B88AB8B40F7AB50022ADA81C0FD38A70F953633DE46D2769DB5FDBF779D8159ACDB81B21885A76FEC5B8789EE0D8337C7F3DC2F1A47E89C3BE39A8CA897FB3E5163C6588B0657ACC486267C2FC4FC4875E532817E66DC72A6E7CCF73BE7294EF7D8DE4AE95D13E2746E8E47F7A4A56AD731CF2E70A105B5D3A682A58B0349A853EF7D50F7D337ED837DF673603689DDCADC4DE1D97DC6DB7C76E97CCCB0CC336FB1AB8E798CDD310171CB27DDEFECE54FB76A62EEA9A98F6EB5C94CBF4832A9118AFD5473BC96FD96CF992CB77DF6EBE1EC2D2F2295C1B1C924AF11BDAFA3035BA06A2DD357BC69AD74BA9427B5B56D1A3121731BFABE9D99F7ABF2D1D89DCAEDA7B93D91B3CBB3E75BF12777B1BDC6DB0DD0C072989687328C1F02C16FD6FCCAC979BDE2F768B6DB431B7916530FDADABA497FE29E418E0B682BF40F9F3CDDC9DF3177AB7E62E5EBC789A0B1103E29A19585DA24964698DCD6BDA4B8CAE690F2C0280EAC4D0CB28DF18D2F1813EA5F46394E437DC6AC326E98EE11906E1DD9B5A1B8B8CE3771C46D57092E389212F2E7E6B9262D648D099581EB2BE256F2526ADB4E91D3AF9DADE086E27115C4F1DBC4462F7891C0792363DC4F4614E9213B8F01502A7E9D2BE4BFB29F97E7CDB7B4BF9B2F777F32691DA46C96798DF7551B7C6C8F6D533DD863D8D5F30CB16E9EEC619BA5637DACA5CC12FB02F377B1B98042832C1871D992992FBCDFA452DB47EA5E74E7DF953CD5F2AF69F972376BD82E76B36CE13FC0BDED91D041242E1A3C5696B5DE2B9CDEF1228D06B5250B696B7D05E3EEF434B5E08A6AA52A41E8EA5DDBCABB91F9AC7E80B98C27E591B45FAD2B8CE3766732AEFE715FD011A62C14B52AE6CDA363FF48CD8D1947AD51DA723ADF03A03CD57D44F865AF2EFCADF886FC6F32DDFC2D7BDA36B7EB23A1A5D73404E5520D33A1C93474D7B4EEC2DD5D6F1EC47DF2CFD8CEE3B67F61B27CAFBCDBCE3B7EEF07B85DDECF37BFB829787CC4DC30CB2DE6E6EC0C276EF04C1A51EB75AC2B00D9AC1F1CB5C18EA71E2C29877A9D79C538FBA0FCC8DEF97777DF62B5E4E6491F28EDF6915B5A890524735B59259651FED25B89257B8D056A3000068DACE39A388BAE28677B897532E8007500005C56EE1BE487DD97687DEBDEFE633F24FDC9DB9C1B33CE655E24EF2F681BBAA9565DA0CE62E412D9B964963C62659D31EDCAC5324BCB489E2C93DCB51B2DC1BF8AB65D58488F1237B2F2FFCEAE55E6DE4C67CBCF9CF6D713D9C01A2DEFE0A3AE232C14639E1D53AD8DEEF88D0FF0011874C913BBCF72F976E9E0B8377B7101C7369C8FE4EAC29C0AE876DA778FF003A0C9A245C7339F933E0D8065EAE880FEE05FF00E62DB203675727D4663BB90BD6EC170DDD0DD6B65A0853925301AB45C657A684B45EEB59523CFF0072E50F9396CF37163CE13DC5A66226ED373F114CF456592180BB21A8C8C6D71A505094CB8DC0E0EB701DD3E20A7A013E85797B71EDEF72B17CB321DFFEE6B702C7BA3DCAE6D8FB58A1FD4AB5DC2C7B3BB1DB786642BC49DA3D8BB1DEE44CC85163BADF6DD167645905D1D379CB6E30623D25B890E05AED96EE2398B7FDB6EAD23D8796ADDF6BCB9049AFF38E0EB8B99685A27B9734066A6B4B9B144C1E1C0C73C34BDEF9659098627B5C6598874C4530C80E81EB2713E4005C6D720884B5145F8B02EE0C47497A4296186BDF78A0557E9A4D57D1534EAE9E55E15D7DAD7DB8C561672DE4A691C4C2E3E40BE74B5B37DD5C32DE3F7DEE00795740301EE9B69D8B458AC16EBC48B7B3119896E6E1CCB74A61D6C06C21C7DD7121C608528ABA80591C49F1D7CA57972FDC2F64BD95D592590B89A6389AFB02F6365B7C3402D9A291B580798515CEC5B27B55E21369B55CA1495250D9712567F3A3DE29E84A9CAAC2071F7493C35B36D5B2FF0045427AFD9EC4BA699D18FCE0A0E1D1974A3A62F8B695D4D3C86CFB9D2E39D442982A01C4A1B1CD6A03DDE1F788AF0D5A6DCB5D4EA1C104E91A4619D517C4BE15205149E752054F5F4F25758E9AA9BF2F1E5AB443A6878212470209E28B6DB7CEA3D05443847DD584F5149152A41F78741AF2E241D5C21A9C92F7BBA11F5AA7BCBE9086DDE753D5C092AAF0F79090A4ABC287853568B72DC1B87E5423DC38E6A53B2FC53A11EE8A923815A42B813F9209E43567843ED62A8D55140AAC7CC1613A9D83B52DC2D22BB8767422AB2A5296E63F935134E9E544F0D32DA41374083871F6FB505778438E18FB54D7D81585E7BB57DBA20A3FDAB3107EF5411985EC6BA1B97699C8AF01F5216066A843875FD6AEAB58C3EA574A7A544D3800AAD797803AA0BC0E342B73138E09F626DE5F259A45B6CA7EB4A7A5164AABEDAFA446AE8DF5A52B443CB1690438845F0B64F3D940298C667292687A961B6053FD33AD9E3A36364CFC9A50323A167BCF6A268DDBCE76F805EB7C5863CE4CD8F51F4A5A5B8AE5A3E2B6BA3F6683AC84BA6B9B5193AA7B0A218DDB35CDC29370C86DF113F9498D0DF98E01C2A015BD1515D318ECA539B804B65BC887BA09F427E8DDB4E2CD50CFBCDD671F10DB71E120D2808A23D65806BFBED30659D3073ABE4A7B52E92F09F75A07A53A39B29B6B698AE3CAB0AE6AD9696E7FAC4D98E29D284750404FAE94052C8A0E1A30411B5A49A9F2A00CF2BDD8501437B51B7B16DD1275E2EF6A8E995709CF39061C9652EAADD0DB7DE0D213D6569AAC2811C2BD206ADB78C386A70C151732969D2D3829B3D16991D2D34DB49FDEB684A078782401A62000304B5C49189589CE63F6796AC6A1DD9AD35F23FDF1FC5ABC7A950E5815CC6AC192A5DC7C8B5954F66B6E2AB705854A480788E47F16ACD4071556934C02D55AD143E3A8656839AD4B0940F9D6351F32C7DFB0B931CB6A1F93024AA5C7650F3E830263331296D2B525092E29902A49A56B43AC4970EA51A54644DAD48AA8FEE3805A99654645EEEB35F6D216A76EB70B83CCF106A7D088F4768D48E54D546EA51F69582061FB2A289977B1E3921C43592D85B71B5D0B6D58E43AF268491D4EC96A4F572E753AB1933DD8E6AB7C6C0295A2F55EF22DA4FA0C5C6DF2857A5050C88AA572029D0CB6057DA357895E713508731B2B8629B5CDDBBD1594B525C07AA8529E9740AF9294D53F6F5B894F4AD0C2DE8C57BA371F259429F12FA6BC2A56D22B5079808E1AC3A6A66B221E80BC1C92FE57D6FCD9081E243DE2387E49FC5AA9D75C0059F0485E5ABCC89054573A53AA1EF28752F80AF13D5D4354BAEDCD38819AD8424E488A1C93E987BADD0A520D1B2EBA14A35A24120F0EA57D9A1A4BD7D74E0AF64206251DC3872240010C3BD44A4ADD5ACF50E54A1709AF41E279F3D2C977001F47115E84486341C5155AEC1759C1CF442C8FCCFA6F242CA5540AEAEA50A24555C38D28742CDB9C6CA5474E48960C30C918B385DD10B57A92594B291EEA94B2E3C0F2EA2D214514F1E75D52770611A803F915DDF68CC5138B36175900FAAE3890A4A4A967D26CF1E3EEA4F553EBD4F8D8DC324397CCE386016DB8E261A4FA40568AA8691C1440009EA254491ACC737887AAAA135E92B55A7A53EBA7A2EACA8F3214AE64914AD068932C6D15D415F1B4A736E34B342B69C4F982929F03CE8386A9F898C9C08463180704E2D32E023AB870A79F96B574A0E48C6353DC569751C01E03F61D52E911D1B49F3A248AC28D3DD03CFF0006867B91D134A2F83193C015F4F2E62BA02426B82670E08DA0B011D2A0B04123979F9534BE504E613385CDE28BA27A2520107AAB424035F0FAB4BDF1B814CA37B7A704FEC32D9A509E7E3FDB1A19F508E8C83927C8D1D3C28A3E3C8FB0FB742B9C78A3A3154516D63A7AF8D6BD3F69D0CF7551AD1445315B029EC1F5F03A11F9A3A244114F003D83ECD03284C2328A21FE2FC7A5B226B0E6114C3FFD5FB0E974A98C28A21F87D5FE0E96C99A690A288FF70FD3A5F2FBC9947EE05B1AAD6E96A2896A2896A2896A2896A2896A28BF12F992C2D92D9A9EB34E9E3EF01CC535F44FCC2DD0C3B18B561EFCF201FC96E27D4BC97952CBC4DCBC777BB1349F29C07AD323B1D97084A5A5A54546852929048E1D3EE815A0150453E9D789C54A2EFE6F7B8234C5F29CF7105B6FE377E9F6C4A55D6D34B9085C72B3FF00B091EAB2E73F149D328EB8714AE66B4FBD8D5588C53BC8DC4C4D296B278F69C8DB612DB41E92FBB6EB884255CBD6867D37506BC2AC2820D081E1A66C9C11A66A380F3F9D279AD2B8C350E3E6F62B6F8677EBB3572B7072F702FF008F5EC108309B4B776B7B8A524503572745BD0CB7EB0355B8D9504F81F1BEB6AF6F76A1DD14F5A5EFB7B90EEF0691D20FAB1528A7BB769D8A97F1BC621C984E1429129DBB256C94D2B408811949EB701E27D5A8F2E3ACF79A0003043982BEF3BD0BD5BEEBB709E296E1C5C62035EE86FD28535E5804A6A94B936E2FA4F107F240E27D875607389C85552FB7886275237C5FB9BDD39121A69FC99284101294C7B459D9F7AA7A95D7F00A782A801A75D0D396AD898D760E1AA9E4C3A70E297DDC0E0DAC24B7B287EBAA61EF1B72F2DC9363B1E4CDBCBCFA7F8CFC75CEAE96D095FF00BBB95A120A5084A02686B4A733A3ACC18E6D4DA0C3870CBA6A96C60C9A84AE738538D3A7A805F45FF28BDBDC12F5D856C9E477CC7E1DD2FB707F71173E64E7E73C1D5C6DCCCBA1C7088A25261B286E1C56D34436904824D54493D2436515CB44D302E79EBE8344B6EAF66B691D0C043583214AF005751E2DA31CB5D05BEC5638812689F460328A52B4E34AD453CF47476103300D144BA5BF9DFEF396FAAE0940212CC648A7F92011F50A12068D65B35A68DA84B9D74E39D0F956A3971411EF34470E695057ED109D5E20206078AA0CEDE20AD05CB8EBA8EB293C382D2479788EA4FEDEAF6C6E032433A465735AEE04382A3A5638F1042A9CBC4569AB1A482AA3423A5343CCA0F2A8FA38F8F91FA345071423DA1473913EC9931EDEA92CB65D502BEB712D9281D2080147C75892666A01D403AD6AC85D42E02AB79263B0C2405A02129480410A48000FCA4D47EDE8C8A78436BA853B52F922989F74AD05CF88A2425F6D47910950247872AFB3568BB81D8070287743281882B41D9CC0A807A88E60A89F1F1E435709AA3B8D2474AA1D1E347101353977687DD00A789AA0A5447B3A6B5D63E30034C8AD7E1EA10E4FCDAC56F3D13AE2CC458AFF00B4071BFAEA520506B6178D38038AADD6C4624609A1FDC0C64361CFD376C2D9F14CA6EA050AAA9495751151CA9E3A86E6A70382D7C02147B277EF6E19B91B3A7268EE5C68418A869F75693D3D54EA432A0091CB8F1D6C249436AD074F62ACB23D5A491A9643BB58EADB529AB8A05001EA3C9524924915E85250A51A8FDEEB01F2BB00B2E631B99509E6BBF975B73A98D60B95A5E5127ADE9911D0DA13D445006C254E2E9E541A223648FF007B2EA5448E63455BE9514DD77137172B68A23DF52B6EA0BA2044447410A04292954874553C7870AEAF1131A6AEAAA0C8E70A3547B22DB33D42EDCE47ACF150514CC94405ACA893FE296DF557C4569A206903054383BED2728535E8E1C4C662DAD5004A4B10D9794A5F24FE71C0E28579D6B5FAF55BDCC6915AD56017752784DCEE49A14248511D6E3C5A410AAD004A1BE8E848EB3C79927CB5AB5F1934AE3D15582E70C53E5BA3DDE7C8424242893C541B4A02943A6A9E91D292687F06879EF2DE169D67159D55C8A932D7845F663C10E250C28AD63A12DA9F74D142A5286EBCC72F03A56FDEAD5A68D0E71A7A541E293800A67B1EDD7C221A5CE4B08EA4A7AD534B51D2B03EFA4B43FD6082107F278E96CDB8CD71EE3486555B57C78CE58C1D668A458B8C636D04B6B901D1D22A88AD25284955149ABCEA7A893D351EE8A68412CC2A1F87D6B775C598146BCB8F565E73EC445199B4C4697F0B19254D2925A71E4FC47557A93D492E552147A7F279538EB21B19EF3CD4AAFE25BA498C1C0E0734ECCC9538921E75400E80B6CA5286D1C0F24A53D2424F9529AA9F1C6D3DC38AB2399F20A4A5DE5CBEA5B6B5B6DB9EECA70957A4A5064700B1C6A6A164050A733CB586F46AC110E20621C49C325B1F105C6C0712B2107F375A2454D7D8070F6F2AEB0F2D234D4E4B66C8EA52868BD9B42154712DA3974952811434E2134E7504D754124F67D6886924649DA2AFA5496874800F01D3CC71AD49F01F4EB058E28B8FA38A748CAEB27AD208293FDD50904F49E60827C472D52D0E0EA814E945C62A3159DCB409212B6C10E01C948E93E14A9E008AF8E898EE1CC18E21171B4795678D669A828AC65282C5429B50550051041151D24535778EC38D518CC2851146B5BC9A17016D34AD54529A0A78FBC48D52E9DBC1171B8648AA0454A0A52A7504541F742966BE5F7472D06F9C1CB3464647045F1184D3DD52AA69F75A48F31C8A89E03423E5A9A1474753C53EC78CC9A15B8ED6BC69403C3C853433A5A64023A327A53FC56D8453DF70F13CE9E7FDEE8491E4F04CA27D38A2488A613D3C5478781F61F66817EA25308E5038A2DB61697D74EAE013F943CD5FDCE847D4668F8E4D47044B19A41A7DEE00788F3FA342BC94746F20A7D8D19245428F21E00FEE68295F429944EAD112C466879F9787B7E9D2F91D5C533864C51344688E151E1F61F66974AE144D21385512C34F11F48FC5A5D21A94D22382278FF73E93A5F27BC99C7EEACFAAD5896A2896A2896A2896A2896A2896A28BF0D4C8F2C6ADD25868BE9EA2D75FA26A42CAD6A48EAE9E5C13C388E3AF4DF9817E64BE82D862D6C65C7B49A7D41719CA96CD65B4B29C1CE781E61ED2B5636E129344478ADA555AFAD23A9CA50F13D2820278F2F78EB8B8A5072C13C9A2A9A94EE8CB6F1724F409EE2BAD428D476CB65C3FBD0180953B53FBEEA3F834731EE70A1281918D0324496BB3DE6E1D264C54B2C38482E3CA2DA8711D454CA12EBE934E3C529074743139D98A14BA6958DC33EC5225BF6CAD32DB43BFA4E48907896994351D28E5EEA5C754F29C27FBD1A671DBB47DA24A5734E780A045967C725E2EF29FB5499AC3A54038A8F709519C79238D1F44775969F1EC52543F1B08A163701F594AA791EFCE8AC0621BB168B5A598F95EDD59F226DB294994CDE328B45C9D48E0B52D71EF0E415B94F10C22A7474515B3F07B057A4123D647A12A91F703DD79F2807D4AE66DD65DDB5E58FC564B93312B9B8B04C2BA5DEEB0D09253EEA58BBCE973ED6F291D3EEF594A95D54A1E0010DB088F7A3777BAFDB9209F7B72D044A3BBD381FAA84297FBA2DB6C2A56C362C31EC8EE4B5BFBAD89B28F8B976FBB321872C595B6E48684562DA5D42574A1EA0003427C4C8AD9DE39639BA06926B438E5D3ED42B6460699587512694C3E9C17D34FCA9B0C4E39D86ECBD9DAB83570111FDC3A485C75462B3237272D934280B7D4928F5A8789E23CB4EEDA6F0E26B48397AEA96DDC5E2BCC83027F73357D65DA9F4134689009A96941CF3A1A54ABF6B4C63B98CE2481DA94C96D20C87990BCA4A5B528158EA0388525493E5E5A31B73156A48A25D2412654354C522525BAD4D00F10A1CF8F913ABC5DC14CC215D04C381AA6772EA2A424F571A7104D4FD341ADBE2E323BB45518646FBC715A0FDF7D14F5BBD0DA523FC61712D01C857A9D5240FC3AD5D741B80556800E381AA6E772D8C0F4AA7C7A1AF075697053CBAD24D3FF004B557C5B1C68490AD6C6FA5695FA75A8DB305D82EF1D654FDAD8901254895D6D7B879027A94554EAFEE86965D31CF7EA8CB00E24D7F711D6B70580B5C1C4752AF578879ADB83CE41BED927C26FA9C4B0EDFA7C05A9B1452534320B3409E7EF5357C4C6E9A484EAFE081F52D64901358C0A7F0ABFB8A18B8774B2B6EA5FE8EBD5961CB90A2A4A05BAE31E73840A73722A6438480BF13A716BB499BBF139D4FE157F224977B835A744AD693FC1354277DEECA7E548758B7D8E55BC041E8724A5CA927800953C19AFD5A64DDB658CE2FF00325C6F6270A359875A8EDDDD9CEE23A5C8B364371540294F21F24A5452280C543E127DE1CFAB570B20EF7B3EB54BEF08C062D4776BEE490CC61072389719CEA51E9AE592DB248E092B6E3FC33A9053C48054A1AB7F5648455A41F2AABE3D80D083551FE4D7CD9CC81D76E3FA4F348F76512E25D432DC8692B5151500D8F4114A28D471A786898AD2EE31A5AD6D10F25CDB487BC482A2452607C538E5AE73AEAD74E996E455439445787AAB696E2AA072A1D306B25A779A0755500F7C75AB5C7CC89ADAFE6D015F1363912DF087104AA8FBACABA884852BAC942BDEA0E3CB5AC8D8C10D943457AD68247371613447EBCEB309310B39140B74F64A8A1B5AEDBE9A9F4A48A965C6DB0BA0E1E078EA86B2DCBFB8F15E38E4B575D9183B15AD6FC624658EAFF40D854874214EACB4A7BA14A4A8052108286FDFE351CEA06B335EDBDA504AFABB8002A5545C643DD6E2A43B3EC46E0C9696EA71BB93CA05BF4DB712CC24105254B3EBCE719475A52470493C79E8697736BC810823A49C3F756C2D6F5E2B1C66BD629F5A94F14D83CA5801EBD474D9BA1D0B2DAE4B7296A48AD161109521087403C38F8D34BA6BAB99BB800D1D2713FB8AE86C2F3398060EDF6554BD0B68ECCCA51F1B217309A75A586598F509505AAAB754B29E207E4FD5AA3E1DEE352F70A7460883631E6F713D987D6A44B5D8F15B391E8E38C4850A8F51C905E5905343D4D25B0C280048E5ECD6459B3ED627AD5C196F1651EAEB26BE8C91FC1B9C169A488B6A6E2A287F346346651D292534A3612A0934F102A357089ACC001E644B6700771BA7C802F57635AE7292A5B0C071445429A094D3AABC1C5A149A8F0E2359D23239550F232294D5ED04F585ECAC571C909A3C569501D4829710A038F57523D2754BEBA9E07C35911B3E9443BAC2CDF8B982AB59187FA480215CE4ADA0AAA1328B67C3A50082B429C4241E1535E1A1E4B485EED541E4C16836E8C0D31B9C1B5CB30939669CC2803D0E242684A55E9152803D353D4A04721F40D09258349C0AB3E09C00A1AFA1784449EDB9444151255D21C0EA3A020FDE3D2549712AA0E5420D0685362E6FBAB765ABDB90C7B56FA1B9885252A69F401EE05942CA15D5C0254A03813CB953CF5A186568A16F99122291B85304FB159908475109690542AB5008F752120F05D39FB35A0A0A8A502258C73734EF1D31CA8971D52D092024247471AF215E803872353ECD6457C8886353DC7F41B4025080000A1D6BAF3E2080909238F993AD0D07422994013B26414F451686F87301141C4748EB1C413EDD50F1922189C1979E7393A15420915F690471AA882395354F1CB8A259529E63B6DA8153A14AA701D745057B08F0D52EC4624845C6D4F0DB896C000214A34E90534A7B780AE860D1546C605538227B88E3D0902A013D2A00F302848AF0A6B42C04D11ACA0CD3947B89553850F852B41CBC0EA874401463289F233EEAF9ACD0A8922BCF8F8F9EA87B40F323A3288A213EE789E2389FA741BD308D1E58B93DFE8FFC3D072265170471187DDFA07DBA5CFE299C3927F6390FA13F6684911D16611146E7F58FB74B9E9A4202228BF787D23F1E97CD92690E5444D1078FB7F10D2F7E7E44D6108858FF00163E93A024F79348FDD59F55AB12D4512D4512D4512D4512D4512D4517FFD9)
end else begin 
update SModulos
set SMdescripcion = 'FundaTec'
,  SMhomeuri = null
,  SMmenu = 1
,  BMfecha = '20130228 19:06:15.587'
,  BMUsucodigo = 1
,  SMorden = 20
,  SMhablada = null
,  SMlogo = 0xFFD8FFE1001845786966000049492A00080000000000000000000000FFEC00114475636B7900010004000000640000FFE1036B687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F726520352E302D633036312036342E3134303934392C20323031302F31322F30372D31303A35373A30312020202020202020223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D222220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75726365526566232220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D704D4D3A4F726967696E616C446F63756D656E7449443D22757569643A39353841423346353938303244453131383231463936394639434243374434312220786D704D4D3A446F63756D656E7449443D22786D702E6469643A35343741374634374536333631314531394345324230463739353338444637302220786D704D4D3A496E7374616E636549443D22786D702E6969643A35343741374634364536333631314531394345324230463739353338444637302220786D703A43726561746F72546F6F6C3D2241646F62652050686F746F73686F70204353352E31204D6163696E746F7368223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E636549443D22786D702E6969643A3645363641353330314532303638313138384336383637333344333342324641222073745265663A646F63756D656E7449443D22757569643A3935384142334635393830324445313138323146393639463943424337443431222F3E203C2F7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061636B657420656E643D2272223F3EFFEE000E41646F62650064C000000001FFDB008400010101010101010101010101010101010101010101010101010101010101010101010101010101010101010202020202020202020202030303030303030303030101010101010102010102020201020203030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303FFC0001108005001F403011100021101031101FFC400E40000010403000301000000000000000000060005070803040901020A0B01000202030101010000000000000000000405000301020607080910000103030204030404060A0F040B010001020304110506000721311208415113612214097181B13291C142231516F0A1D152D6175898190AE1F16272C233435383243426B718788225283892D263A3354566374768293911000103020402050805050C070803000001000203110421311205410651617122138191A1C1D1321407F0B142D293E123941516F15262728292337354557508B2435383B344B42434647435263637A22527FFDA000C03010002110311003F00F9B0D7E8BAF9352D4512D4512D4512D4512D4512D4516E41B7CFB9BE22DBA14B9F24A16E7C3C28EF4A7BD36C7538E7A4C216BE86D22AA34A01C4EAB9A686DD8659DED64638B8803CE56CD6B9C68D049EA4ED79C4F22C7F1A672DBB5AE4C4B248BB9B1B721D484AFF0048FC17E900CADA27D4475C4054091C7A4EB93DC39E762B193C063DD34E454060C3F9C683CD545476370F1A88D2DEB4296D948B9A5C5C742D696E9D61295296906BEF14502BA7873029AE66EBE60DEB8D2D2DE360391792E3E8D23EB568B360F7C93D88931F86C4B4495CA5B2B90CAD5D10955EA536A354B9EEA93F9B424815F15682879AB7FBCBD862F1036173C5435AD1871C684FA561D0C0DB79653839AC34ED380520DBADB6AA24B96D8BD40120AD86DE4D6878A8381551F511AF47B7BC91CDABC9AD17217125C568D7BBC8485A76EC4703BC6453E3645935E311B7A9A6DB8F2EC56D5642A33882A2DFE8672EF6848438BA26A890D048FC93A4133E39EFA663EEEE6114686E991F4D44E3854F98695736FEF2085874B6418D6A0569C31F6D560B86DB3F09E9ACDAE7CBB95BDA748853C5B83D7298D858E85C8B4BD74EB84B520F16DA76484F1AA8F03A2AEF69DE606B9B65733C91F076B717795A5F87637576AD61DF6D6570F1FF0036EE8C9BFCEA53CF44D2C5B6331D487A19725A55D09548429942522A0A9C864A8177C81240F1AD342327BB6374CAF9BE2474C8F0074F76B89ED573EE5C7DC77E6CF463E94F906D76E5ADB12A021C67A87AC23B2D26474F0AFA2A28E92E7903C09E7A25971707FA5926F0F8D1EE07C942857DC4A3DC79AF6944ACE35063C886AFD052130641932585DDED6C34F3AD92DA1B6CD1B2D388143D34E7CE9A904D74D9A31AE73092E70D65C2A30001A935010D3DC4FA1D491C1D80C1C73E25195AAD5674CE6BE1714B0DC9E6E33EEB9126DA623B1D68144F53890D0E90800ABAAA294D35F899DD386401CF786125A5C403C3A7B4A58FB8BB1192E9A50DAD2A1CEA8F4A3AC7A0E15726D5F1585E30C3ED3852F21AB1DB1D4A2AA20512F462BE9E14E2A274FB68DCEDEEE22D9E26B65660698F971C4F9CA477D26ED0BF545773963B2ABDE3EA34F4233838BE0732E0FDB3F54B0F88FA12DB919C9760B474BA922AB2B41888AF02084A544915F1D1D1DCC535DC962D6C71CA05585C063D35CBC94297C97DBBC5136675CDCB9A4E3491E69E928D9ADB6C7A3A999B1B6EB0C956F6D4DA26C97B11B24A4A1B7BAC178B2A84E32D228D9E9512A209FC245DDBCF1BE2608D861711A9C05091C480DC875D50B1EF57E43AB7771AC0C0191DE6C4E6B3DAF6A308B85B1219C3B104CB9111D7DB326C9646820BA4A903D77E18A290850E9F7ABC386A98ED3C4DB35460FC43D848E9EF56989CA83AD6CFDF3746DC51D7337861D43F9C7F0CF23C5101DBEDBC744282ADB2DBE8CF454FA529C8B61B64B54F294F4879D93E9100ABEF7E6BA057543585E044F68649952B53E7145B1DE3736D5E2E6E0B7FAC78F45512C4DA3DB95341A4EDFE11D255D5D4AC42C6EAF90F77D6761ADD29F1E7A66CB18D8C0C3434E2454F94A0DDBFEE84EA371703FDEBFDA89E16C9EDBCA8B259FD41DB661CE9EB6DE99885A5123D4095043518B16F5B642C9F7BD4141C3435CDA388FCC81C7853861967E55967306E5ABBD737032FF5AEF6A7DB6F6EF85CF7604781B5D853C5C4B89F8938363D21A2F36C14B4DACAADAEA1C5BCF28501FBCA206869A1633440D751D43524740E3E53E8506FFB9D1CF75CCF4AE5E2BB89FE374238B2F6A3699A9911DDD86C584D8E549519380E331595D6BE9AD2A7ADACB452A208F749D5703E2F008969E2824034CFA0E0A99B98EF992E917B281C478CEA8EDEF22DB476838A4984F489FB3FB61695B054C4876E58DE121B656DD2AE263B709E7D5D657C484A800380F3DE3687C63502272DA014AE3D3D18F5A064E70BB692E65DDD3E369C68F93CD8915F222AB5768FB3CA2E357AC2B6961A948691EBC2DB5C76E694A44641F886922D9001F556AAF81F1F66B616B318DC000642DA701420509F3A04F3BEE4E907872DE68CEAE95C3D01C51FC4ED7BB71690D265ED36DADD0B290D0713B7383DA997D208A2D686ECCE4BEB20712A7093ABDB6B56012690EE34FA7AD032F38F33B9C7C2B995ACE075C84FA5D4F423181DBDF6D51D4828D85D9048AA41549DB2C2EECA4D294516665A96D387C48340AF1A6A3ADA3A1199F37A46285FDA2E687B839F7F7B81E12BC0F3022A9D53DB7F6D921FE94EC76C89657202D7217B49B7B14A185102A98CD59DC03A08FBA951E153AD7C36B19EEB75F456BE923D4B7FD7FCC5A8917D7D4EB9E5FAB5E09E22F6BDDB92A2BC93B21DBE890C38A0D15ED8604B54A6D2AEA4A927F579491EA27871A53549D208018E20F50C3B55BFB41CC00FFDFAF69FD74BF793E2BB58ED8D6A60B5B15B10F12D214E351F69F065A7DE520AD3D471E4ACBE9A11403A68781E14D55534356102B99A7D29E95BB798B9807FCF5E1FF7D27ADC9DD9ED7BB616FABFF0F3B1A42D492A43FB3DB78AF4D600146D4AC6BD54A0A4D4A49A1E7A15D5273F313ED57B7983980803E32EFF001A4FBCB7BFE583B5C474F576E9B0E4AF8269B3FB7B5F1151D58DA81353E2343BCC943A49F3A2E2DF77D342EBCBBA7F5D27DE595BED33B6829FFCB9EC5F50E9201DA1DBFE202AAA0AFF0077FCBCB413EE5C0E0E3E728F8F7ADE8E77775F8AFF00BC9C98ED43B603F7BB70D8657511FF00E1FDBE252056A00FD5DA024E8592E26193DDE728D66F1BB9FF009AB9FC47FDE4576FED13B5875A6D63B6AD805AAAA6D45CD9DDBA20A8004D50BC709E0792BC74BE5BF9D8EA1924CAB99F6A323DD3777FFCCCFF0088FF006A7667B3BED75D5AC7FCB276F84020506CD6DCF88A8A531BE274249B95C0C7C5947F28FB51F1EE5B9646E263FEF1DED4E4C7665DACD561CED93B7D494D412AD96DB80904A4A811D78D5391A7868576E775989A5C7F86EF6A363DC770C8CD313FC777B53BC3ECDFB483D45DED9FB711C0A7F39B35B6447003904E38A5051FA343BF74BD194D37F3DDED46C57BB83BFD64DE772738FD9F768249AF6BFDB72BA494F1D95DB3557DBEEE2CAF3D50EDD770E134DFCF77B51B1DCDF9CDF2F9DDED4F6C766DD9DF1EAED6BB6C592073D92DB7E1C8F00313E0786857EEDB97FB79FF0011DED47477178733279FF2A7967B2FECE9553FF2ABDB39AF100EC6EDA7B070EAC4F968676F1BA570B89FF11FED47C735C615D7F4F2A7963B26ECE55CFB51ED997C454FF119B5BE35E5D58A81E1A11FBC6EDC2EAE3F11FED47C72BF220F993BC7EC83B38553FF00097DB2AB8D3FFB15B52BAF2FFE96D0CEDEB78AFF00DEEE69FD6BFEF261148C398F427C8DD8D766A69D5DA1F6C8A1CEA76076AD40FB2BFAA8742C9BDEF232BCBAFC57FDE4CA2F8739B59E608863F62DD9774254BECFBB5DE27F2BB7EDA8E35FA712E1CB41BF7EDF2A40BDBBFC693EF2651436CEFF0056C23B07B1145ABB11EC91CEAF53B38ED59CA74FDFEDEB68D5E26BF7B10F1D0B26FF00BF0CAF6EFF001A4FBC9832D6CC9158A3FE68F62288DD85F636A23ABB30ED44FF007DDBAED09F13E787E8377317300AFF00DBAF3F1A4FBC8E8AC6C8E70C47F90DF62208BD82F62AA03ABB2BED315C073EDC7678F979E1BA0E4E65E6215A5FDEFE3CBF79318B6EDB8D2B043FCC6FB11246F97F761CAFBDD93768C7E9EDBB66CF979E19A01DCCFCCB5FFD46FBF1E5FBE9843B56D848ADB41F86CF627F8BF2F8EC21453D5D907684AE3E3DB56CC1F3F3C2F414DCD5CCE32DCAFF00F4897EFA611ECFB49CED6DBF0D9F751344F978F600AA757635D9E2B97DEED9B658F979E13A5F2736F350386E7B87E9137DF4C62D936539D9DAFE147F7511B1F2EAF97D149AF629D9B9E3E3DB16C99FB708D0527387368386E9B8FE9337DF4C19B0EC45A2B6569F831FDD59FF00A3A3E5F3FC84FB36FE6C3B25FC08D57FB61CDDFDEBB8FE9337DF5BFEA0D8BFB15A7E0C7F752FE8E8F97CFF00213ECDBF9B0EC97F02353F6C39BBFBD771FD266FBEA7EA0D8BFB15A7E0C7F752FE8E8F97CFF213ECDBF9B0EC97F02353F6C39BBFBD771FD266FBEA7EA0D8BFB15A7E0C7F752FE8E8F97CFF00213ECDBF9B0EC97F02353F6C39BBFBD771FD266FBEA7EA0D8BFB15A7E0C7F752FE8E8F97CFF213ECDBF9B0EC97F02353F6C39BBFBD771FD266FBEA7EA0D8BFB15A7E0C7F752FE8E8F97CFF00213ECDBF9B0EC97F02353F6C39BBFBD771FD266FBEA7EA0D8BFB15A7E0C7F752FE8E8F97CFF213ECDBF9B0EC97F02353F6C39BBFBD771FD266FBEA7EA0D8BFB15A7E0C7F757E4FDAFBC97CC096A2896A2896B0A25A8A55627DF66336A79F710D349FBCB590948F671E64F96A8B9BAB6B384DC5D3DB1C0DCDCE340B78D924AF0C8C173CF0015FCECF3B50C5B7E71BFE31B2AC867271966F972B3338FDA5B30E6CE7AD5E82643B32E4F25463C6716FD109691D6A09AF526A35E3BCCFF3585ABCDAEC31873BFDABC1A7F25999ED750752E92CB602E1E25E3A83F7A295F29F62EC7629B23B5F866393717C5B0CB3D92D574B7BF6CB8982D29AB9DC634A67D192997762B55C9F5B883F794E920F2235E3579BF6EDBADE7C56E17324B30702038D5ADEC68A340E9C13E6DADBDBC7A22634371CB33EB2B9B3F30ADA0C436CB62F18898733718916EBBA71E6CD4DCAE32AE65B759C46E70DBF49C94A5BE86D2CB62A9A9A9E3A6B637F717572CF88A1D2D2050015A9AF0CD032C2C8E1796545405C8EC6638690FAE1C9F5CA5C48F5129F48B6BA248F4CAE8B2788F66BA526B4A8A5527771A62A4CB5B6DB4E556865090C75179355BAB2487085A8BAAEAA9353C3E8D35DA2E2DEDAEC5C5C6AD201A53A4A02F1B2BA131C5C695EC46D11F8ED1E0E94ABD30B414FB48F76A142848F0D770CE66DB83684484F50EB5CF49B75C39D9B7CAA7DC52CB97E698565590C6C89B6ECD8A402A9B1DD8D152EC96D87FE0D51A3BAD464B8B5A12841254A3EEA871AD7544DCE3B6413C713A179924381A37A2B8E0B0365BA9A273C3DA18C188C7EA51A43B9367D2F510B575F5F151E8523A4A87129E049E93E15D3A6738C4DC3C273861C424CFD95CEC4380F214FEDA2D9730D226454BA92E7A5492DA565A45426A8769EA343DEFC952797B35BCDCDF6D3B743ED83853ED387A0D2A3C842A5BB35CC66B14C5A78E907D38D3D08FB6F7662D1B8171BC4487719F623678F1E439210C267C65B8FC5BC496980875F8EEB4A58B4703EA2F8151A701A5179BF43146268202D71396BA8E1D55E3D25176F6D3BE4314D20701C69438D7AFD41468AB5DC9150A499A968A802997EF7B848F71A7949528D057DD069A28EE9774C236387F18FD46886FF00B313DF7B986BC40A79F14EF6E9EBB7488921A8B1A1CC8A1282EBADA03925A2E29DF4A721F5AE3CB67DEE928523A148F75408D6ACDF2F2093C4644C6CA052BDECAB5C45687CCB26D60919A7592CEAA2B2DB2B626B3CC86F37198D4284F5B1886B4BF62B2636CFA8E4B5BCDABD560DAA4C2E84A19A8AB35A9AD754DC733EE368E1770C500B871353A29E8042D1BB65ACD589EE79634655F5D2AAD0C9C131E61C8D266BB3E63D0941D65C5B16188E30A6CFA890DAA0D8A3292A278F8D002694AEAB6F396F7753091ED80C8327787523CA4AADDB25835871928786A4453E162B75B05E2EF6F17A999358ED331DB756E8F3B262CB6D92F30530E3A23A1F429C21481D2B42C114A83A38735731B276F8AF63637102A18DC5A731925B2EC9B6491B835A4902B424E6AB9DB1ADC894F9F56D992B700AEAB755642B28689A28A50F4724800D694D746CE6ADC34861B9C001851BEC5CF4BB0DB6A2EF071F28F58523DBB15DC45C84BCC6312D092105B2AB75B8829A024F5CA4A9C35AD78EA9FDA19B51709C6AE9A37EEAA8EC91E9D26377F39DF794A70316DCE5BD1C22C5E8321B3EA9718B200A5D1412A521BE8269C3E8D5D1731CE01D771524FEF7F220AE361B67B86984F95EEFBCA40B6629B92DD15F00CA29D2689720304107894FA4EA426BE63561E6173F0333BCDF9100EE5CB4AE3083DAE27D688AEE9DC8B358A6CF7DF5C48F0DB4C8794D5C07586D2EA01E94B4E15155154E7AC45B8453CC01739C4F4AC3F6C8A28E8C8D8D03AAAA37FD6DBC4CAAE54D90A078D54FBAAF1E00F52967883A6F1CEE68EE6495C9610B9D57015EC08F7139CF4A4DCD4E043C59B64875B539D4E290E0428A5692A550114F2E7ADA49E571035118AD1B676E2B85705243603AC5A82503A8B0D2DD584BA9053F0C9250549094A8AD42BCEB5D55DE3501D89EB5989903250E73039A06545944392B29F49890A1EA9E6872A0F1F150E40F868B8C818138D1532C6048430618A31B6D92E8FF00404437380E6452BC0509E3E1AD8CD137DE345518642280290E06257C752DF4C5A55B038D7915A8FDA7559BDB56FBCF0B436B31C823EB66097C201532523D323EE93F927CF54BF77B26FDAC6AB53673E38233B36257EB63CDC98D21C8AFA07B8E36DA091C287DD712B41A83E20EA89F73B19986378D4C2B4F8799A6B91456719992FAE5DC25FAB29D73A9C53890971C210DA42C86C2114205050786969BF898E11C0DA4607B55CC61CDE7BD5E2BD5EB1C261E888912A34405684AD721E4B4495AC02AE97569242471A27C3549BD76979C49E14FC9EB475BC2F95ED6B1A4D48C6869DA8E5FB662D1289FD616A628074911213EBE09AD4FA8E38D2155200E0A3CF48BE26E9E6BE1E9ED23D40AEADBB33194FCFB5C7A9A7D6421746451D0D25A8B6C2405A497242D002E8A5104A1A6FABC7FCE6AB97C473CBEA88876F6D007BB1EAFCAB2B37D9EA24A0C58DD6B5921B690A3C471E2F97940FD1A19E1DC6B82690D85BB7838F6FD0279897296B042E53EE0245425C5B69AF87BA8E94F3F668491A4A6715AC4DC1AD68F32768CE15A9C2A4924A8D7AD5523DC239D4D7868620F04C238401C11142654A4552D0A12BE5ECA034AD396A8909AA31908CEA9DA2347DEA213C55E47CFE9D0CE7145B206A248E858FC94FE03E5F49D0EE7229900AA20642A8014A683A78F49AF3F3AF1D0C4F7916C842208A28780E154F3E3E0AD0EF453221E84FD14F04D53F954E7F47853423B33D88C647D68A222BA48A8A73E35F33F40D092628E6331468DAFF32C0EA34E1C0F2FBA4D29CB40B850947C6D14A5314476B095055120FDDEAA268799F1001D0925530881EBA22A8ADB754F02380E4A3E7E46BA05E4D53385CE1E744519BE0284721F787B3CC6819B34D6279A0AA218ADABCBCB91AF8FE1F0D00F23826D0B85510C41423D847EDD7404B884CE23922A87E1F57F83A5B2E69AC392288FF70FD3A5F2FBC9947EE05B1AAD6E96A2896A2896A2896A2896A2896A28BF1B3EA1E7F6EBF44B15F25D0A5D43CFEDD4C54A14BA879FDBA98A9429750F3FB7531528559BEDF3B60CDF7E2E4244642EC18543740BAE5535957A4AE923AE1D9D85749B84E572E1F9A6EB55A8723C1F39F3F6D7CA36E5921136EAE1DC881C7B5E7ECB7D27804EB69D8EEB747EA1DCB607171FA87495D71B0F66DDBEDA71D8F8E4CDBBB26465A61689577C818FD23799CEBBFED0F99EB5A5514ACA474218F4D2D8E007327E59DF39BF99798AF4DDDEDCBC32BDC634E98E31C006F13D24D49E95E8967B6D8EDF108A060D5C5C712EED3EA53EEDAED8E0DB578EB78C6038E41C66C8DCA7E70B6DB4381954F9653F13289756E954892A424AD449AA86838A49E4D2EB876B7D3DE3EBF62AE40DA92D1418E014B4D84501F13D255D29AF8D4711C8F1E3E234645A850625BD7965E9EA414B4C72042E6D7CD29AEAD8DC3A80A48DC36C74927A4D71DBD500279F2D3FDA6A2E1B5C7AC25774291BA8725467B76ECC0EE86DBE3FB80E658FDBE3DFDEB8ACC162DAC3AE32AB75CE7DA949F8975D21615F0495805229D47D9A797FB9C96B2686C7AA80635EAAA060B464CCD4E711D415A081F2F7C7DB4C7F5F36C85403BD4FFA30EDE8EB8FD4AA34DD5A596DDE9081D47A8541E1C78003982E89A3626569D255AEDAADE9A8BDD5F222C8BD86E16CF4FAD94E52F14CA2E502EDED831BA1410C9098448710A20F5D68694E915D5F1EF77A69F9B6014EBF6A19FB75AE2753E95E9FC8A64C43B5EC5F13C6727C519BC5FE6D9B2C8C634C61E92D36F45065C896EAE1BA8642595BE5E4073DCA2FD3075996FEEA69639DCD607C788A71C298AA9B6D0C71BE3AB8B1F81C50B45ECDB6C62B6A42C5FE4D54DAFA9DBB3A9FB81B053D2D2508215E99AD457DE34A70A3466EBB83883DC1FC90973AC6D1B80AD3B4A2567B5ADAB68BBD56075EF590104BF719CEA9068A1D4DF548242C95F126BC40D12CDC37034A3E9E408492D6D057BA09ED2A41C4F64F00C42E3FA56C98E42833BA3A7D66927DE41624475B4E05157A8DBCCCA5A5695542852BC86AE1737B333448F258A830DB46753583523183B7BB6F097546DC60B5EAEA52D18BD990F157554ABAFE0942A4F1E5A39B2DE11DE964FE71F6A5EF8EDEB40C603FC51EC46712CB83B494368C5B1B8C84726D58EDA16C03EC4084B6F99E652344B44EE1DE7BC8ED3ED423B4B4D5A1A0F604FACE3D89AC02C58EDB1ABC54E59822DAA2478A9A8C0C31C4F2F4781F2D58D8B83B13D6857CAE19D7CEA39CFB138B1613B3A2C89622702E2A4466E6371A841E994EC6536EB2C8A543DE8F420A4554D1217A79B6C513A4113F0938578F61F567DA97DE4F2B19A9A2ADA7947E44B6D36CD50ED1FA65D5C272E179ABADA4494C3931ADC1655199F42E08885B724AC17D694A40EA58142A05448BF2C74BE0B08D2CC3B4F1F36482865735BE2381ABB1C73A2941389DC99014634D0907EFFC3ADE6EA47F9E66ADFE0AEA86C6CCC2C3E775715B8C5B243669541238D0F5A543E90A48A703A25918E841BE507A53EC7832811F99278734A92AAF21C92A2468A6C753C108F9001504A7E8D15E484F532EA7FD11E1C7C6BC34536D9EE3C12F92E636D6B54DB9C58DCB8E177F8E9EA42DD82940EA4814AC8638915F21A36D6274570D24615F5140CB232561A1A2AD88DB5B83412B71C4A901295015153C8F01C789D747039B21001A14A6E290F78E2149784632CC466F1EA24A8B96E7D14A1F147114141F95A2E6B7702CA1CDC12A3B8442B870526DB9DBBB90D8616EBEEC48C84A1B6CA5010DA5A4A114E9E915E94D3CC9D63E02DDB26A0078878A11DB930648B627C4BDE98524282547A3AFA78540AF0F775B8B68D9F910AFDD1D5A0A23FB53329BE852FA1A6F9159484A0003995A87401F49D0D3470509E3DAAA1B8CD23B483E652A5AEF18FC30D19B78841496C7521A75325551C68511048503F481AE76EDB2622369CFE99AE92C619A5A17921BD782326370B188C8223479B396949A1F4DB8CCABDA1C756A74034FF35A48FB6BA73B8015FA7D2ABAEB6B5B26C7DFC5D4FA7D2898AE1B9D2DCAA6140B7C241068A7D4E4A747856B5618FA8A0E898AC9E31739C4F99572DBD93B260FA76507A107CACA2EF70E2F5CE52D24905B89FEAED1F34F4444B2DABEBAE983226333F4FE5430B38410591B73E809BD978265C75AD0EB7F9D6D6A75C4752C00E54B81B554B85343C09A1235B9D34CD171C2453823A977B75C51F42E37076A8523ABA198890146B4E94256A209F0A8D0E5AC46B5AEEB4DADB525280A59A85F4915502686A470AD788FA3543C30E015EDAB72A2DF8C169A1E3CD47CABC3E9D54E634A203DC022682A553891C481C38F2A795743C91B714546F71E28AE021C515748592A57834E28F007974A7C74048D08F88B8A39B6225065284455AB839552D3D23DE3C382BA78A7F6B40CA404C6204F627FB64090FA7AD084F495A81256902A9571E1C49034BE4201C532885516C7B53BE99714522A904712798A0E4079E8373B146B1BC53F3368E92905CE64D688FDE8AF0AA8F33AA2A6A886B56EFC308EE7485150E0493C38D3970F2D5671ED57373A7527D8D1D0188CBA1EA5B89A9AF87550F2F60D0EE18945332459163B40F16D3CBC457C4F9D7CB42488D612892222A1BE1C81E14F653CB868178C5308D155BC1403514AFD5E2741C81308B24511797D43F1E97C99A671FBA9FE2529EDA0FB3414A2A5308B21D089628E5F57DBA5AF143E44D22C51146152052BC47E3D012E0995BF04491122BC3871FDCD2E71C53784E08963FDCFA4E8093DE4D63F742CFAAD6E96A2896A2896A2896A2896A2896A28BF1AEAFB75FA1FA97C9D8255F6EA6A5304ABEDD4D4A60AECF6AFDA95C377E63397E5EDC8B6EDDC0900A523A9A97933ECAAAA890D4402DC0491475E1CFEEA78F1D7947CC2F991072D4676BDB08937C78ED1103F69DFC2E81E52BA9D8797A4DC48BAB905B640F95E7A07574AEDE58ACD69C6ED106C961B7C5B55AADB1DB8B0E0446D2CC78ED369A04B696D1427C544F126A49AEBE5AB9BBB9BCBB7DD5E3CBEE5EEA97125C493D67E8382F4611C70C4228406B46000C2811134BE200E20835A834F0152091C4EB2D602DD4EC48F2D3C9D68579230E29D983EE8038279FBB50906A6A0F8A49F66984601181A9E232F476201F83E94FA76A7D689504A69C00015D352491E74155254344B283115D5E841C9E4A71A2E737CD0DB0BD8BC44F524846E246205294AE397E15F13AE8F6535B9A50834CFE9825779411E19229EC4980BED736D7DC008393A6BC38D32DBE71A9A73AE99EE0CD57249E81F5216DDDA6218F157150D5134E914A53801CCFD95A68110027256B9E74F52C2A6F89341C29C801FBBCB46C56F9018A0A4969524AF21342052BC491ED06BCFDA3450830A7042B9E29D4B0B8D8A72E3FB068E8E1C50323F0AF15842135E42BF60FDCD1CC80A09F20AAF729013CBF1D7FB1A2E2B6F3211F2E1C10D643915AF1788C4DBA9941A97399B74711223B2DC725C8AFA0C86DA0540BA41009E15F1D35B7B47CA74B29502B89A76A592DC36315756955A50738C7272D0C97E44396EAA5A5B817088F449CE0828438FB898EB0545A0875242BC6A29A3858CCDC68081D19208DD30F485AE9DC7C53DFF004A5C95BC8B77E966E3A61C84489107A8A54EC56D694178A48E201A80479E896EDF28C5C069AD108EBB8AB856B45998DD6B2AA43B0DC1776D94C9896E7E44DB705DBD122E0C36F468CFAD6E3A501F6DF48A947454F4923450DBE4A02082684E78E0853731E441A26EBA6EE5C7E196FE3B6DB7BF0E2CF5DA65C8B8990CADB949991E23498F1632A9E9ADA7C3A92A526ADD2838E8B8AC19A878B5D44570FCA8096624D63E95923EEB6470E649666C9B45BE4DB9982FB916330F95CF2A0FBF2DB8EFAAE0DBACD6346516D5E9AFA5478834D18CB2B62D04071070EC42492CDAA9518299714C97229B1EDB789F91C8911EE5676E52ED4FB21D6214997E8498E98CE3A874ADA663294DABAC924F114E5AD258616D63634070767D41563C5CDC6B519290D9C8DCA7BCAB5B95FDF4182D126A0F369A6544FB79EA361C70AD7CAA87EAE8F427763255000FC05A9DE24F012D04F1E207A33909F0E1C386AF6C6EAE04842BF49142D085B70B317A3E197F5B76D8093F0CD0052E4EA82A971C0E3F167957C46985A445B3B5E4934ECE84BAE98D923318A349E233CFAEAABD47DC5B906908306111D291EF39388A5003CA5274E98456A0005257D9EAC1D2BE9D8DF622DC6F7025A23DDC0816DEAF81797D4AF8D573A00948F8E008F77C6BAB6491EF2D35A50A1BF5640DD40B9E6A29C3CFEEA75B7EE1CF7580D830D9290A52C2224773A42949A142A4A9F255C398E206B673DC5D50EC7B557FAA2D00C5AF34E927D545BECE77735F4D6E721B35344C5098C3957808A86870D68E7B8E655ADDAAD01C2269EDC7EB2538B192BCFA81599329753EF3A54EA8F8F3595AB55B9F546C76CC8C518D6B7B07B115C3BEDC96522344748000594B4B594A880403D291D2A20D75439AD39A31ADA65544F1A7DF5482A5372D09E902A525B03A8848F007893AA1EC8C70089655144283787C8F51B0091CD6ED4FD74A9D50F701904631A4A3DB442B80692D84B1F9A79755153AAAABDDA8E9484A69C79D74BE51A9F5AD118C8D3D39024197143AA0A5387A3DC4148480A27F294A24D567541706369528B6309A22E6AC69082545D34493C0247215F007557898E05102320649EE15A1B5A192E25C59286CD14A514F14F203870D60B870534AA85DED6EF6F276C3B05B87DC1EDA58B6BB35B46D9D963DF6FB8466B0F26B4DD665B53758F06E736D5965A2F52612DF8D1A625D6E1BB6C6FAC34A1F1054A4A4749CAFB6ED9BE6ED0ED17CE9E2927716B5EC2D201A1201616D69514A8771CB34FF0097F6FB0DD2FE2DBAE8CAC7CAEA07374915A5402D22BE5D5E455FBB2EEEA7BEBEF2761B19EE036FF6E3B46C571ACAAEB945BE1D9B2ECC378517C8CEE33904FC7E5AE40B2E237381E8BF26DEA5B5D0F28FA6475006A34DF99797F957973759369BB9B709268DAD25CC6434EF343852AF07007A13BDDB67D8764DC1FB74F25E3E5606925AD8E9DE00F1703C54C76DEE47BDFDB2EE9BB75D9EEE0766B6098D9CEE0326CDB0F85BC3B439B67D7D363CC31EDADCD33FB262F74B2E598F5824C1BAE46F622A4307D37E339150F2C3C95B6A4254C9B1F2BDF6C37BB8ECF7377FACACD8C79866646DD4C74AC8DCE0E639D50DD78E20D69850ADA3B0D96E36CB8BBDBE6B8377035AE31C8D68AB4BDAD2E05A4D40D58E46B4C28BAD16E6D5E9857493FE30F23FBE34D79BCCDAA59090886C0D2FE09B574FDE53A7CBFCA2ABF66974AC24A650B823165859652380F75AAD7FECD741BA328F63C513C2194F524A960501F21CFA4789D51A31440764BC2E3A1C75653D6A20D0748A83EEA29F8F5A1000EB56B6B5C13E311FDC8A0209F4D7D4AAF3A71F3A54D4E8677A914D28923798484D4F8FF6068592944647F4F3A208D5F7788E47C3D87DBA05F812984411144350389FD8740C8734CE2C02268BCBEA1A5D2669947EEAAD9DEF770994F6ABDA66F3EFEE0B86C5DC4CDF6FF1EB53D866053177143599E5B90E4F62C4F1BC611FA21B7AE6B977CBD5F988CC2184A9C71F7109038E9D7286C56DCCBCCF69B1DECC6DECE790F8928A7E6D8D639EF7F7B0A35AD24D700014C21E01520C97B83F9D96DFEC2E63BFB9D76DDF2E1C4ED9806D7E57BAB96E0171EE1BB86B8EE0DA6D38663772CA6F16028C6B64EFB82CCC97E02D6E36D223DF5D82B7D49499494F52D3D541B17C9EBFDF22D8ECB70E609649EE590B2516B6A2273A478635DDFB86C8195209AC61D4FB3C1328CB80A8A64ABCFCB57E685F356F9A1EC8655BFDDBF76F5F2F9C430EC43762F7B3D72B6EF1EF6771D8FE4AFE4D60C4306CD264E830F0AD98DC1B5BB6276D5B810DB69D7263520C869E4A994A1285B8E3E63FCB6F963F2DB798B62DFAFF007E96EE5B56CE0DBDBDA3D818E9248C0264B889DAB544E240691423BD5A8065B3E67B6AC0DA03C49F62E847663DD7FCC1379B7A3BB5ED8FBA1D92D87ED8F7976131CD86CF76CEFD8D4CCDB79F6DB7876FB7667EF0DA6E795D99D5645B737472CF6FBC6D9B309B74BB1A54494EBEDC987D6D846BCF79C395B90F67D9F6AE64E5ABDBEDCB67BE7DCC5335E23B79ADE5805BB831DDC95BA8B662E2285AE68696BE86A9ADB493BDEE8E40D6B9A011C4106BD9D0B9FBDA87CE63E639DD8FCC2FBA2F972E1BDBCF66189EE776B10F76EE993E6D996E1EF52309C9ED9B4FBB1876D44A938F0C771ABFDE9A7322979BC3B8446E547694DC40B4BFE9BE9F4CF6FCD7F27BE5E72AF20ED9F30EF370DE25DB774740D6471C56FE230CF049380FD6F6B7B823731C5A4D5D42DAB7156DB5FDDCD72FB46B630F603892698103876AEAB66192FCEA6C78BDF2F18B6D3FCB5F37C82D96E9136D58846DDFEE42C13323931D3EA0B3C0BC5EF6B99B2C1B8CD425488EA98EC7885F284BCFB0D953C8F2CB4B6F9353DCB21BABBE6382DDCE01D21B7B470603F68B5B36A2071D20BA95A35C680B071DC03496B6127A2AEF62B27D84771996F769DA26CAF705B818542DB7CFB3FB1DE8E75B7F6F7AE0FC5C2B34C5B2FC8B0ACAB164BD744227B8F58AFD8E488CE97057D56D542534279CE7BE5EB4E54E6CBDD82C2675C585BBDBE14A680C91BE3648C7F770EF35E08A70215D6B2BA781B2B851C4623A083421515EEA7E7010710EEAE17CBCFB19D9593DE8F7CD2213D72CCF138B97C6C03657B7CB030C417AE194EF9EE9BB6BBEFE8F4D863DDA2BF22D56E88FCA5ADF6A129F8F3E5448EF771CAFF291F77CACEF981CEF7A366E480E023798CCB7174E24D196D06A6D7516B807BDC00A1786BA36BDC069EFC367F85B66F8973C45681BD64FABD6A5E660FCEB60D94E41332CF95E6497E43264AB69EDDB6FDD66256F79D4D1C3698FBF73776F2D7429C4A0B489AE6DD213D4E05AA3808285A92FF932F9BE1D91733470569E399AC643FC636A208FB748BB395356351BD37102B5849E8A387FF954FF00A2A2CEC0FE685BC5DDB7793DCD767DBE1DA3DE7B4BDC0ED836BB6FB23CB719C8B31677065DF72ECA325BFDBEED73C5331B65B31DB1DFB6BA4D8D1699561B8B307D4BAA24BCF28B48421B533E7CF965B472A727EDBCDDB26ECCDD6C373BA9591BD91F841B1B18D2D0F8CB9EE6CC1DADB2B0BA8C200C4925696B7924F70F8248F4398D15C6B89E83D1953A5767B5E3A9825A8A2FC68FAC7B75FA15A97CA3A4A5D63DBA9A94D255A3ED7F60656F565A255D9A7E3E098FBCD3D7F9A096FE39DAF5B3668AE03D5EA4909AB8A4FF008B6EA7991AF3AF989CF11F29ED9E1DB39A7799C111B4E3A4717B8740E1D25745CBDB13F76B9D72822C987BC7A4FEF476F1E85DDEB043B6D92D50ACF668716DF6DB732989021C46C331A345613D0D32CA13C1284A470E649E278F1D7C8B7371717772EB8BA7992E1F4739E4924934A93D352BD51AD8E18C451340601403800889A91D4398A0E0929AF3E141E016A279FD1ACB48341957A07421E43406B8A728EE5403D4491EDA713ECFB6A7C3464468298769CFE9EB403CF14F6C3B400F23C39D00200E0154E15F6E8B8B134390E39F95052E0704FEC394208E00D3A8F23400F1A9E0401F6E8C6574E23141BF32064B9E9F3366C3BB178C394002770E2D7DBD58EDF7F0F14F3D743B3B9C2E03714A6F48D3E546FD88B0076B9B6A4822AACA15C4000D32EBE81C4731C35D0DCB03E724654F520586910E9A9570148A0A72F3D54D841C4E6B5321A1AE755ACE37C0D3C48FB79E8A8A20288395C403DAB074ABA87D04569F5F1F0D18D8DA8573AB885E8A6D441FAABC283EAD191443008495D86257A96781247B797E1AE8F6478D12E7BAA12F4ABC7F73C85345B5872E0867BB0EB50FEF1201B263ACFC47C22DECD6C096DE4FA45C414BAF28ADB4BA95B6A5239F14A80F11A7360C0242ECC0614A6ECD63A7F09073D679D64BBE352E58BA5CE3B0CE4ADBD714C27643CA7AE0F224C46DE4C567A12A5228DA6894A494800014D328CB1EC73450134C2BD1D096BC1043B139ACEFE0775BA5AA4AE241911725B2DAED2ED9DE90C38D4695EAB6FB575B4ADDA0F550FC5708290474BC10AF0D58D958C70A9AC449AFA8AA0C65E0E7AB82CCFE0B964D46410E3DA56CA6E175B5CD6A54979969BF86B7C1828586A8A52CC95C88FD280474806A4E8864B0B74B89AD01F495439921A8A742771B5591B08B8C682F467225C1DB15C0B9729803C8B85B94D332D2131A204865C871590934A95A4D4D35B8B98F02EAEA04E5D0552617E34A628C13B6D7076F5367BEF599C872DE835F523487A7A22C5696D3CDB4B50434DB9250F2856A4007C751B70DD2050D479956623A8E23D68FB1DC7655922C786E5D1EB8458315106036B8EDB05A8ADF425A329685ACCB92DB6D8405D103A7F26A49D47481E6B400F1559669E28B10C54014E1FB3D9AB1A686BC556E155B688A68294E2380D5C1D8D10EE6A07DCB60B785DED4403F9A8838FF00753A2A7D9C74531E3CA857B0E6AB5C64A7A451409A27857CC0D13AC21DD1925489894254866F090D92BF83480BF242C9414FD678EB3E2D083C154612558EB46D6D89A6DA5186EBCA294A945E90EB8092915AA53D09A7D5ADBC60B5F01DD08A3F51AD91A758DB66D919097673E1C019490B437024AC257D40F500B00FD2359F1874AC7807A148513188CCD3D284C229FBD61B4F87B11AD4CA32E0B6F00E6564B6D9FA65DE886E83E3984F04D00E8B743AF2FEFB58320A2DC446A6B54F0EDB80628527DE763A791F190D8E74D52F7ABE38C7108CEDF6E4A94289E7ECE1F668395E51F1440A3EB1D8D6EB6E290D29757DDFBA82AF1005680F9696C92E344CE28414E8FD86426E96C68B0A429C52BA438929EAA11522A072A6857C84A2D90D11E0C75F4B0E15FA49A2175055523DC51E341C388D55A8F0576814C53843B2B686D8EB5A78B4D2A894D4FDD4F9F96AC1A8AD08685CFF00F9AE418AC7CB73BB82147AC6D25C4A7A8A4124DD6D5C93404F3D761C823FF78EDE7FF103EA29F72A53F68ED29FED47D45523F91C770FDBB6DE7CB9B69319DC2DF1D9DC2B298794EEC3D3B1DCBF72B0CC72FD11999B9191CA84EC9B45E6F50E7B0DCB88E21C694A6C05B6A0A4D41AEBA8F99DB3EED79CE1713DA5ADC4B09645473237B9A691B41A1008C0E69EF3B6DD7D71CC534B04133E32C8E85AC7107B8DAE201182EAC76FDBF7B35DDDC8DCABE605FAA3B9387EC477072705C3B3EB33B1B20B1CFCAAC7B4980E4577CA719BB06D7114FDB25EE95CECCDCC84B7187D8656B69D5B4F555E7FBC6D7B972E8822BA1243717769ADEC3DD21AE964686B8678889AFA1C4122A010B9EBADBEEB6AF0A39F5C72CF00739A7021A5EF01AE19E3A03A8710730085CFADC8DF5EEE716F9BDEC5F64765EE572089B1DBABB1D3B7BEF1EBEDB6C849CE2D86D4D6EE467B15B5646BDB3F814DBE75D76D98597DF82F496E34A75B0B2E043C9EAED36AE5FB8F97777CCF25930EEB6F74201F9C9830D7C2EF16F8B5A8121C0380A8072A85D4DA59ED8FE5897777DBB7E2E39BC31DF9349AE8EF11AF3A3B206951D182EE5AED773918DAEC1172CBD58A72A23519BCAACF1B1A7EFF001DD6D6DADC9CCC7BEE3D79C60CB93D0A0B0E5B5C6005ABA1B4FBBD3E480864C24746C7C6093A497693D556B9AEA76381EB4822998D7076905B5C8D69E820FA6AB9EBDACB3DD4EF66CCEF94BC93BCBCDE06E2E35DC47735B31B7F95DB7693B7F6B1FB3DAF6437732BDACC5AF190E1EFEDA3CEE432AF0EE24A9B7369AB9424B8DC9F463AA32901F3D6730FECF6D5B95A361DB22364FB2B59A4619AE35133C2C95E1AF12F740D7A5A4B5D88ABB50345D35D3ECADAE620CB76F84E8637B86A7D497B0388075614AD0607A4D725573E539F361CDF7C73BCAFB41EF4245A2D9DCD58EE9945CB6AB3C8D61670DC73B85C1ACD7DBDDA6E0EE356B6E1C0B3AB21C6E6D8A584084109B8408EED1A126DF3D4A73F31BE5E59ED1671F3372B873B61735A268F56B75B48E6B48D4492ED2E0E6FBDEEB88C74BD89C6EFB3C76EC6DF5854D990350AD4B09008A9CE86A33C8F510BA33F315CCF7C36E3B6EC9375762378EF3B4599E2B906D7DAE324E13B6F9D631758B9BEEB61D81DD0DEACB9963171BAAE446B6654E3D1950AE505287D86CB89711D685707C950ED17FBEC7B76EF6ADB9B5919313F9C9637831C2F9069731E05096007535D8134230283DA8432DC8867607B08771208A349CC1EAE20AAA3F38BDF5EEABB17ECC21EFF00EC5F72D969CD318CEF09C3EF51F3BDBAD87C9AD196DB32A7EEB1A54E9516DFB558F3967BEC49423A9A7622D113D0694DAA329C73D743DF95FB5F2F7387361D9777B08FE1648647B4C72DC35CC2C00800999DA9A456A1DDEA90755050B5D9E0B5BDBBF0268C682D2450B8529E5387A7AD5CBB1EC7F7C574DB6C7F21C6FE60D7673706E78EDB6F2DA33BEDA7632F1B712275C2DC99BF07371DC3ECF82E64C412E3E847A8CE401C6C24ABA5CAF46B90B8DEF94A2BF921B8D91BF02D796FE6EEAE1B2800D2A1CF7491D7A8C58F566B66C96BE210611A2BC1CEAE7D26A3D0A12EC87E659BB596775F9FFCBAFBEADB6C2F683BC2C26D32329C1EFF00B6D3AEEFECDF70983C782ABBAB22DB96B249132FB6D9FF00ABC955C044724CB5391E34E0E8872604986865CE1C85B75B72D41CF7C9D712DD72B4CE0C91B28689EDA4274E997400D235777500DA12CA6B6BDAF2C64B363611756CE2E80E75CDA7A0D3E9E75DBB44E8B6C833AE776990EDF6EB7447E74EB84C90D44850614469C7E5CC992E42DB623458CC36A5B8E2D494210092401AF1ED2F95E238C1748E200005492700001993C005BC409C170E3E543F359CB3BCDEF2BBE6D81DCAB6CFC5EDF6C9586EFE768B65BDDA1AB35DAE3DAEE438D62B66B65D54D2A34298FC3C9ED972C6F328CA7BE29F52B319480E88F1D86D3EBBF337E5ADB729F2A6CDBE6DEE6C8F7092DAF5CD76A68BC6BDEE2DCC805844B01A507E61A69A9CE25DF8218C6D3B0F6E3FB9E45DF9BEE278E6696A62CB9559E1DF6D51AFD8A64ECC19E82E476EFF0083E5166CD713BA040526B26C59563F0A7315AA43D1D04822A0F86C7737169299AD9E592963D848CF4C8C746F6F6398E734F512AE8B0202863BE614EC7BBCB1FF00EA9F70FF00F08F30D1DC9BFF00CCF68FF13B5FF8F1A671FBA7B0AE0D7F53C3FF00F3537C3FEBA372BFE00F6CDAF66FF36BFF00D8765FE090FF00D55DA32C01D07F8DEA0BEAD60E1B8BB3984BDC06EC701BCD2E18DDB70E9B9225A22E72B17B3DCEE77BB5D91E7BAA8B8106ED7C98FB69A7BAE4859AFBC75F2DC979726D05817BBE0DAF3206700F700D73BB4B5AD07A804F6268AD78D17C3D7CACF77B69B65BFACEFF00374CA778F7436EF69B189F8BF761608391EE666B8D607619B7E95DD56C05C62D9225DF29B9DAADF26EF26DF6A94FB7190E29E5B319D58494B6B23ECEF9A1B4EEBBCFF96AE53B5D9EDAE2EEE5B2D8B8B218DF2B834595D02E2D60710D05CD04D29520664206C24647BB4CE91C1A34BB334FB4DE95F563BEBF355EC8769F1BC69CC67BA1EDD773770B3FDCADB0DABDBBDB7C1378F06CDB2CCB327DCBDC2C63058C20E3D86DF2F57B55BAC88C88CE9D2BD14C68B1D82A75C47526BF2D6C7F2BB9D775B9905CED9B85B6DF05B4D3CB34B6F246C632189F29ABE46B5B5768D2D6D6AE270053C96F6D98051EC2F2400010492481C116F7E7BE164EC07B00EEB7B80DBDB0E3F8E4BDA6DB1DD4DC1C3AD31ADD123585FDDECF2ED75B959275C2DE842233E9C9B787336E65C474F549765BCA355AF889C8BB2CDCFBCFBB56C3B849248CBBB982291C492EF0226B4380398D16F196B3F7A1A3805B5CC82D6D5F2B001A4123B4FE52BE767FA9E5B43FA53B70EF03BD2CD9D7F23DDFDFBEE4EE181DE335BEB9FA4B24BBD9707C631ECF6F1747AECFB8F4A2E6579DEEB4F76E15285CA936F69C77AFA1A23E83FF00375BB785CC5B4726D9011ED361B7095B1B70635D23DD135BA461DC8A0686F068790295294EC31D6192E1D8C8E7D2BD98FA495F635AF9093F5022FB7BC391DCEC4EEA2DE556DCF5DD8CBBEC3652D468ACFA59863073BC7B3EC2A55DA59507932700B946BE350929490E379148EB50F49B1A7A37FBC3CB4795E4EF588BE6DD32A4FE6DFE13E290346549418CBBA0C4DA66555E137C6F1C7BDA749EB15A8F363E753DE912B52D4517E32DEB7D3FB5AFD01D6BE57D289B0EC6AED9BE4B68C5EC8CA9EB85DE5B719B3D35430D93D4FCA78D404B11584A9C59A8F753A5DBB6ED6BB36DD2EE57869044D24F493C1A3AC9A01DA89B3B396FAE596B00AC8F34ECE927A866BBEDB498A5836CF09B1E29626D088902334E4B981A421CB8DC5E4A5C9736491D41C7DF78D482494A4015A6BE2AE62DE6F798B769B73BD357BDD80CC35BF65A2BC00F3E7C57B4D8D9C3B6DA32D2DC51ADCCF127893DAA5887714140E2824ACF1511D07A943A28820A813FD8D046176A1423102997018AAE420E1C53E3334747320F05294425283E6415724A790A0AF3D5AD67F378F5FD3A90523A83857827989281A152923A87BA0949278F2A0E24AABE1A2A834E06BE9FA5504F271A844115F0AFBAA151CC73000A83C280703A2A23C5D8FA3B50721E8CCA278CF0212924A891434FBD5F13CF9E8D8DA6BD03AD0AF38AA1BF3256FD4D89B056BEE6E0402014F024E3F9050541E3C8D74FF67A1BAAE15A7B12CBAFE8BBD957DA8F7B1368AFB5CDB6E14A2B2A4F107EE8CBEF9C47134E7AE9A51F9D3D141F5256D7111D3B55BB2C9A1F61E6397ECAEB5D38E4B1937AD605307F7A78F8FEEE898C0E942CA02F1F0C411C01FA39F8FB3443054550AE00E0BC18A7C073FAFF00168C881AD7340CD915EA622BCBFB7E1A3D99F5A0DF82C2B8C40E3F67DBA3598A0A4C0D08C16A2E236EF4075969DE851523D56D0BE850FCB47583D040F11C745B30EC403A99705B6862BC000003CA9C8FD8396886D3342B812B79B8A4903C0914AFD5AB5BD79AA4D75542DF6A09F2AF1E54241FC239EAF04943169CD6C8804D387E11F46ACAAACB7A56DB56E341C3F688F670F66ADD582A34E3D6B38B79F2A7D55F3D6CD779D54E6AD86EDCAA8A03E5CBF16AFD4877353822D8E5070A70AFF6CEAC6BBCEAA736880B74EDE51835ECF4150FFBBD3C0122A6E31695E7A2598A1A4A055760C561BA123CB98F1E1F66AF0C71A043BA4685346DFC43293776E330B7DC1123FB8D20AD7D25FA1240AF01E3ADC44E2705578CD0AF05B31BBAFA6D136F71B1D08E2E94200141E0555D582079E0B4370C4E1231E969BBE36DBAA61BEB937255028ACA7A2DAF713448E3EF6B716CEE2B5372DCC238631E40A7A92873FC96FF00195EB3F0C2AB5F8AAE4BCD96C36C2E5F1D90F39D28BBA925414940E8440B7F3A027993AAE48B48C382BE3943B35B5223E3E8B5FAE7D3F545C59482EC8A2BD14CB41AF495814F493C4D34048240704C2231F1A223853B1A8EDA17EB435953014A0D0F5141D53AD9E9EA1509286C1F1D032894F4A6513A11D0A51B0DEADC2184C484FBE54EBAE0F458013471C5293C535E1D34D2D707EAA13C53263A3A542D4BD3D739170837062D4F251052A002E8A0A2A575554050848F1D608A7BCB70470588DE2E0EA5D4497D888976A3A90C870F1052424ACD15507C29CF51B4E0B575561370647497AE921EF4C01E9A1418494A47DDA0511C69CB57B6BC02A1C42E7A7CD5AEF05DF976776AC21821C776A2E09429C7D6B57FF14B5105293C396BB3E431FF00BC36FF00EBC7D453DE52757992CFFAD1F515497E493B2FDBEE63F2F1DA6BFE7FB0DB379DE4D2F28DD46A6E47976DA61592DFE5B31771B228F0DA9575BCD8A74F7DB8915B4B4D256EA821B484A40000D74DF33776DD6D79BEE20B4BAB88A10C8A8D648F6B45636938070189CD3DE77DCB70B6E639A2B79E66441B1E0D7B801560E00D335D73EDD36636D3B691BBF69DA6C3EC18361DBA3BBAFEEC46C3313B745B26378DDC6E3B69B6B835E22D9ECB0A3C7B7DA62DC2E380B93CB11D0961B7262BA1291EE27CEF79DDAF37AF8792FDEF96E60B7F08BDE4B9CE02491E2A4E2481269A9C70C572F7BBADCEE4617DD39CF9A28B46A71AB880F7B8124E2681D4C71C172B379AF2A77FAC41DA1CF09356FB1EC9590091C6B71EE78D7CBFCA6BB9DBDBFF00F1CDC40FEF46FD56ABB3B07D790AE9DFF8D1F542BE8059BEBEB200013C3C4D7C7C85072D78CBD87A57291BCF91536F97C5D1C6F6D37CC513EF77CFDF9B9C40FBCBEED376D67C7CD5A7DCEB1D6FED3FC26C3FE9215D26E6EFCFC3FF0094B7FF0082C5CEC4760B6CEF7BE5DBB337AC1AF676C7BABD90CFB7EF35EDC77A2D72E559AEB8EE5503B8DDD0BB318D5E6F16C4AAE4D62F7AB9C3617EBB41722D535B6A63015D0F4793D81E729394F9DEEA2BC6FC472EDDC36F1DD404070730DB440BDAD386B68270383DA4B5D98737A56EEA76FDDA464835D9C8D6091B9D4786D1503A457CA303D23D22FCC36EFDD7F613BEBB25BFF646F6C7BDBEDE739EDFF16DFBDAFB9C666CF3EF2E5B7B90DA3B7B7B9F8B5A80690FE397F7BD354B4444AE3DBE5C86C20FC24A80EBF5BF9222E5BE72B3DDB657FC47295F4372FB7941D41B5B598F84F3FBE6E3A6B8B9A0D7BCD7806B76E6DA6E11CF6C75D84AD7963B3FB0E3A49E91D798EB0693B7F5929F5BBF2C0CA52AA01FC726D170028385DA7FB4E917C8614F9891FF00E566FF00442DF9747FFB007F805779F6BE4AC6DE6040D0FF00B9B8C53801FF00C960FB789D78B6E4DADF4FFD6BFF00D2285A77DC7ACFD6BE6AFE652B13FF00AC0FF294636EFD31BA5171FB449CD576A4955D4ED7C7CE37126CC66E45097522DE3128F9512080A4C771E5121252A1EF7C80347C91E6737DFF00A7191C23D5EEF8C6388023AF5987CA02E8EC6A36D9B5FB95C3B683D745D88F99F6F1336ADA5C1BB6483FC622AF7DDFE68D6DA65CEED16DB6EAEED6E162DDB5D95702EBDCD67166C1B65F13CCF70A781824D63166A4C1867F47DD32E8325C5A1A6D6A1E55F2EB6A326E73F30BFC0F076B87C5678F2C30C4FBA755B691BA49DF1C43F380CC439DDE642F68152162CDB57190D28D1C4802BC063875F917147E657BEDB59DAD77EBF2F0F9986C16DDF70982E0BB50F5BBB65EE620E69D99F763DBDE1CDEC54E43F63C71AB65CB7A76436DF06BD5DADB856477F8D0E0B72D7383D6BB57A2D96E285C7F5AE40D9772E64E4ADF7E5EEF73D8CD7B740DDDA18EFECAE64F881DE7D441712C8D6991919738B74D1F2D4D5D4736B704B0B1D42731883F515F677669F0AE9021DCED9322DC6DB718B1A7DBEE1064332E14E852D944889321CB8EB71895164B0E256DB885290B428104820EBE479D8F8DEE8E405B234904114208C0820E208398564598500F7CDFF91DEF2FFE94FB87FF008479869A726FFF0033DA3FC4ED7FE3C699C7EE9EC5C1AFEA781FFF009A9BE1FF005D1B95FF00007B66D7B2FF009B5FFEC3B2FF000487FEAAED19B79A467F8DEA0BEB6E2F103E9FC435F293F3F227F1639F42F86AF94D601826E37F5A07E6EF64DC2C2B12CEECB1710EECEEB16D19963767CA2D71AE8C775DDBDC466E4C40BDC39D1199ECC49CFB4979280E25B7969068B503F68FCD6BFBEDBBFCB4729CDB7CD2C1319AC5A5D1BDCC7169B1BA2412D20D2A01A65500F04BF6F6B5FBBCC1E011A5D9E3F69ABEB437FF00E5D5DA9EF8E2560B4A762F65F0FCB70ADC6DB2DD1C033DB06D66256AC9B0ECB36CB70718CF204CB2DDEC76FB45DE126E871CF819686A421B9112438DBA971B2507E53D87E61734EC97724BF1D7935A4D6F3432C4E9E4732464D13E221CD71734E9D7A9B5150E00820E29F4B69048D034B4381041A0C08355117CE1F6ADEEE8FE5A9DFA76F5B7B72897FDD26F60A665D1B08B15C204DCADCB9E2D253B9B865964595B5BF361399F4DDBB7A0DBCBCDB4996BF5034B1D0A5A1B7CA2DD072C7CC7D8B98370698F6CF8F11991C0866978F064707600F84250E7D09D38546201AEFD9E359CB13317E9AD38E188F3D1710FFA9ADBD78E651D89770FB0E9990866BB49DCACCCE275B5A5F4CCFD49DDBC030F898CDCE4B2B79C5B8A7F25DBABF31EA21286C2186D34EB0A52BDABFCE06CB716DCF1B7EFB477C15DEDA2307878904B217B41FE24B11A67524E592ED8240EB67C5F69AFAF9081EC2BEC175F23A7C9BA4DE2D30EE36DB44BBA5BA2DDAF299ABB45B24CD8CC5C6EA9B6B4DBF7155B613AEA64CE4DBD9790B7CB4950692A0554046AC6C32BE374AC6B8C4CA6A700486D7015390A9CAB9F058A8AD38A71D56B296A28BF181F881ECFD9F5EBEF4F142F983415D14ECE70C8D68B5DCF712E4D7FDE1756DFB658C964B8B8F6D6FF00DB253669EE198F80D8557EEA143C75E01F36B981F7777172FDB13E04443E4A7179F75A71FB231ED23A17A27286D9E0DBBF72947E71E0B5BD4389F29C3C8BA1569C82B1A2D5D20FA29536165054AAA6AA52423ABD35D082AAD081ED3AF1C74244841E95D7486988E845112EC9526AA5254952A85CAA421455C8F4D4AD000268479E8EF0C07E5C025EE70CBB51344BA0E03AC1A8EB0855083C828A566A12A008E93C8D4EAD11570C3F73AD2F94B71C112C19E8E0A4AE81478A8D3A893C949239A154FDAD6E23033C89F4A0DD8F6A2A8B3C70014147828D09A27AABC49F25574432368CC8A75F0423DC7246B01FEB09A9E1C3826BCF8F8FD5ABD8D071188078E5E642BCF0E854A7E62A8F57622C8026B4DC2B6F255695C7B233C479A88D3DD9B0B9CC1C3A3B30405E7F45D02A3D6A4BEC4183FF002B7B71C393D9681C2BC06617CA8E1E5AE9A5FE94F60FA92D6FF47E52AE0FC2920F03CBEDD695C31C96349CFA57A886A2782686BE47FB42BA2187CC8791A2AB3A2DE5447BA7DBC0FB7F068969AE2106E18E192CFF00A30D3EE81FB5E1C345C4E03AD0B28270192F0AB7507DD3FB39E8D63D00E650F5AD27A0D3F27CF87ECF33A2E328491A689BCC135E2923D9E638529F4E8D63B825CF6D325BAC5BCAA80249AD3983C75787D1505A1145BB19B8CD712889025495A8D12965871649FF00B29E3AB03EA683354B8531764A4181B499A49E9A58243295528B92E478C9A13CE8F3C8578F96896B6439028473E318177D3C9545D1762B24713D5224DA621FDE2E43EF2AB41C0FA11D681F84EAE6C129E80867DC443A48EC4F11F62E6229F13798281E3E84790ED3C7875966BABC5BC8ECC843BAE6319029D19D9AB431432EEF25D03F25A8C9457EB2B59D5EDB37939A15F78C6F029EE36DDE1B17A42A2CA96B15E2F3AE049E15E294290346C763C4D3CE817DFD706FD49FDBC671F888F523D9218A0142B67D43FF00BD2E71D5CDB78C3A9C552FB89482464A18EE014D39B5D904266036DA5D7ECE025B69284929BAC35241084A6B523869836D585A0EA012E92EDF5234925512B46D965B7335858C5C9F41A10BF8471B6E95E7EA3DE93607D7ADFC189B8EAA95489A471C5B4539EDC61574C59FBABF7EB60B725F86DB6C8764422EB8B6DF0B536965B92B77A8A795450D39EB0E21A70C9581A5D985671CCE61AD2945BADB3E5A8009140D23A88005421A5C8740FA52356B258CD2A553242F1904C92A7E5B3E74097171F759109528B4643886D2AF8967D12545E534A4F4A78F049D181D01C4A09ED9C60139A1BCEA4D3AE440842B53D3575605390A32524FD7AC992DC2D047707A68B19C3AF32D2E8937C7C87DD53EF36D85B6D38EA921054AE97054F4A40E5C868796483822E264F5C6A9CADB80B2C1FCF4C4C8A8F7BA9C5A0F0F2295549AF9E96CB230E54CD3285B20CD13B360850812CCA47AA948525A4B8D12A35A50FAA0A003ED50D2D9C9A26901D256B3B914D80E863E2243449F7590E2404D154E0195140E3A5EE8DA4D78262D9A89D91935D16508F5A538084F5A44822BD55E91CBDCE1C7C743B83066896CBE75E7F4A4E796438A5F024005457C01E41468081AA4B9A310AF690567E896E27ACB4B526A2A4529C49F2E3AC09DA3BB5C56AE682A8BFCC0B6F37BF7C3B69DD7D87D92DB1464B926E6E3B0F1D194E479762F8C61F65832AEB15FBB3AE29EBA49C9A6DDA3C184A4B2C8B7B7194E3C8517C84A907B0E4EDC76ADAB7CB7DDB76B8F0E081E5DA1AC7BDEE2010DE01A012713AAB865914F39727B0B0DD21DC6FA5D3142ED5A5AD739C48069C3481538F7ABD4A3DF957EC67717DABF6EF8D76E9BE1B5916D8FE3591E6372B5E77896738A6478E48B5E47739F94245F60BF70B4E436E9CD5C663911B4C3893DB701696B5349F50A1973EEEFB2EFFBCC9BD6D5705CD7B180C6F8DED755A037BA685A45054D4B78815C15BCDFB8ED7BB6E6FDCAC26AEA6B41639AE0EAB406E181691415C48E39AEAB34CA10415389FA100AFCC01D5C86B813205CA35D2138034EBC17367BCEED2F7572FEE0FB6CEF6BB6718A5CB7DFB6F17DB05CB6FB3CBBCAC7F1FDD7DB0CA20DDEDF78C5A26471E25C18C6726870B25BAA60C87D85452E5C3D47943E1DB4AFB4E5BE64DBADF67BEE56DF3C46ED37BA5C24600E7452B4821E5B51A9A4B59A8035EED07BC69D9EC1BAC116DF73B2EE65E2C6E6843D82A637B6843A87DE69A36A0638619AB0CE6FBF75B915A9AB461BD9565D84E6F35B445390EF36ED6C2B3B498FCC7941A5DD9F9BB49BA5B9BB9992DAADE4A9E119BC7ADB26621296FAA329656D21FD55CBD0C864B9DD2296D463A6086E3C670E8A4D1451349CABE2380CE8EA50EF0D86DB1BF5CB78D9221C18C9759EAA3D8C603FCA2075A98F65F6DEE3DB4EC2D8300B0B17EDDDC92C2723BE5EE6445E398EDCF39CFF007072EBEE7D9F650A6AFD7BB6D92C30AFB9CE55709EA8FF0016F1891DEF4DB0FA9090B51BAEE11EFBBBBEF26D16D03F4B5A0EA708E38D8D8E36F75A5CE2D8D8D6D682A454D2B81134ADBFBC74CFA46C340062435AD686B4602A68D005698F5212F97A623BD3B5BB018FED56F76DB3782E5B8C5F7716ECAB858B33C6B33C46ED0F35DCBCAF3780CDBE7C09312FECDC60C5C983321B916D698EA67ADB797D7D089CED77B56E1BD3F71DA67F1ADA4646DA398E63DA591323350416904B2A087138E2052A5D5FBAD6E2ECCF6CED51B8346208234B437B29874AAF3F324F95CC5EEBB2EDB0EE43652447C33B92DB9CBB026F2A7A3CC162B5EF5ED3D9B2BB35CAED86E612E3AA3A1FBDD863404C8B4CB925C69C6E39832125B5457A135E45F98A796EDAE362DD8197619E2934546A304CE63835EC06BDD71347B46209D6DC4383DDED1B8FC2C6EB59856D9C0D38E9710711DBC7CFD353BF9CBF6CDDC877AFDAD1EDABB7CDB9817BBB5E33BC2F30BBE6B97E718B6238ADB6D98D2EE72976F80C3B3A7E4973BE3D314CA5485C18D110CACAD321C582DE96FCAAE61D8794B993F5FEF970E644D8646363646F7BC97D054E0181B4AFDA2EAE1A40C519B44905ACDE3CA694691400938AB4166DCFF98041DBDB0E318B7665B676BCE20D8ADB628F76DC1EEAED48DBCB6488301305177B93D856D764B98DCE234B610E9891EDACB8F02A6C3ED503BAE726DBF925F7CFB9B9DDAE1D66E79716C5667C5209AE91E24CC603C35171033A1C95A22B3D65C5E4B6BC1B8FA4FAD00F655F2E2CAB6ABB84DC7EFA7BB7DD2B47701DE9EEADB3F57D37DC6AC536C1B53B1F83FC3C689FC5EECD58AEF2A5DCFE0510A1B7155769698F39D8614D9690EC9B8C89E5F36F3EDB6E5B1C1C9DCB16CFB1E52B676AD2F7074D712549F167734015A927436AD0EC6A43636B0E7CEC7C62DE26E98079C9E93F4F52977B79C47B9ABDF7E1BD5DC26FCEC42314C26E5B53866C9F6DB78B6EE6E0B96CEDBAC0AD174C8337DCB7B39C7E15C23BF6EC8B7773455A9721EB32EEA943167B6447AADC55CD52CDEEEB97A1E4CB4D8F66BDF16F1B72FB8BA6986460964735B1C4237106AD823D740FD18BE470C5C1809021110630E35A9C38F0F30527FCD33B79CB3BB9EC5B7CFB6EC2F6E5BDC9CC774F1E8B6DC3599F9263D89D9B12CCAC97681936259A5EAF77B9F1A53102C37FB347716DC0625C9942AC29B0C3AEAD2ABE5CEFB6DCAFCE765CC1773FC3DADB484C94639EE7C6E058F8DAD6822AE6B88AB8B40F7AB50022ADA81C0FD38A70F953633DE46D2769DB5FDBF779D8159ACDB81B21885A76FEC5B8789EE0D8337C7F3DC2F1A47E89C3BE39A8CA897FB3E5163C6588B0657ACC486267C2FC4FC4875E532817E66DC72A6E7CCF73BE7294EF7D8DE4AE95D13E2746E8E47F7A4A56AD731CF2E70A105B5D3A682A58B0349A853EF7D50F7D337ED837DF673603689DDCADC4DE1D97DC6DB7C76E97CCCB0CC336FB1AB8E798CDD310171CB27DDEFECE54FB76A62EEA9A98F6EB5C94CBF4832A9118AFD5473BC96FD96CF992CB77DF6EBE1EC2D2F2295C1B1C924AF11BDAFA3035BA06A2DD357BC69AD74BA9427B5B56D1A3121731BFABE9D99F7ABF2D1D89DCAEDA7B93D91B3CBB3E75BF12777B1BDC6DB0DD0C072989687328C1F02C16FD6FCCAC979BDE2F768B6DB431B7916530FDADABA497FE29E418E0B682BF40F9F3CDDC9DF3177AB7E62E5EBC789A0B1103E29A19585DA24964698DCD6BDA4B8CAE690F2C0280EAC4D0CB28DF18D2F1813EA5F46394E437DC6AC326E98EE11906E1DD9B5A1B8B8CE3771C46D57092E389212F2E7E6B9262D648D099581EB2BE256F2526ADB4E91D3AF9DADE086E27115C4F1DBC4462F7891C0792363DC4F4614E9213B8F01502A7E9D2BE4BFB29F97E7CDB7B4BF9B2F777F32691DA46C96798DF7551B7C6C8F6D533DD863D8D5F30CB16E9EEC619BA5637DACA5CC12FB02F377B1B98042832C1871D992992FBCDFA452DB47EA5E74E7DF953CD5F2AF69F972376BD82E76B36CE13FC0BDED91D041242E1A3C5696B5DE2B9CDEF1228D06B5250B696B7D05E3EEF434B5E08A6AA52A41E8EA5DDBCABB91F9AC7E80B98C27E591B45FAD2B8CE3766732AEFE715FD011A62C14B52AE6CDA363FF48CD8D1947AD51DA723ADF03A03CD57D44F865AF2EFCADF886FC6F32DDFC2D7BDA36B7EB23A1A5D73404E5520D33A1C93474D7B4EEC2DD5D6F1EC47DF2CFD8CEE3B67F61B27CAFBCDBCE3B7EEF07B85DDECF37BFB829787CC4DC30CB2DE6E6EC0C276EF04C1A51EB75AC2B00D9AC1F1CB5C18EA71E2C29877A9D79C538FBA0FCC8DEF97777DF62B5E4E6491F28EDF6915B5A890524735B59259651FED25B89257B8D056A3000068DACE39A388BAE28677B897532E8007500005C56EE1BE487DD97687DEBDEFE633F24FDC9DB9C1B33CE655E24EF2F681BBAA9565DA0CE62E412D9B964963C62659D31EDCAC5324BCB489E2C93DCB51B2DC1BF8AB65D58488F1237B2F2FFCEAE55E6DE4C67CBCF9CF6D713D9C01A2DEFE0A3AE232C14639E1D53AD8DEEF88D0FF0011874C913BBCF72F976E9E0B8377B7101C7369C8FE4EAC29C0AE876DA778FF003A0C9A245C7339F933E0D8065EAE880FEE05FF00E62DB203675727D4663BB90BD6EC170DDD0DD6B65A0853925301AB45C657A684B45EEB59523CFF0072E50F9396CF37163CE13DC5A66226ED373F114CF456592180BB21A8C8C6D71A505094CB8DC0E0EB701DD3E20A7A013E85797B71EDEF72B17CB321DFFEE6B702C7BA3DCAE6D8FB58A1FD4AB5DC2C7B3BB1DB786642BC49DA3D8BB1DEE44CC85163BADF6DD167645905D1D379CB6E30623D25B890E05AED96EE2398B7FDB6EAD23D8796ADDF6BCB9049AFF38E0EB8B99685A27B9734066A6B4B9B144C1E1C0C73C34BDEF9659098627B5C6598874C4530C80E81EB2713E4005C6D720884B5145F8B02EE0C47497A4296186BDF78A0557E9A4D57D1534EAE9E55E15D7DAD7DB8C561672DE4A691C4C2E3E40BE74B5B37DD5C32DE3F7DEE00795740301EE9B69D8B458AC16EBC48B7B3119896E6E1CCB74A61D6C06C21C7DD7121C608528ABA80591C49F1D7CA57972FDC2F64BD95D592590B89A6389AFB02F6365B7C3402D9A291B580798515CEC5B27B55E21369B55CA1495250D9712567F3A3DE29E84A9CAAC2071F7493C35B36D5B2FF0045427AFD9EC4BA699D18FCE0A0E1D1974A3A62F8B695D4D3C86CFB9D2E39D442982A01C4A1B1CD6A03DDE1F788AF0D5A6DCB5D4EA1C104E91A4619D517C4BE15205149E752054F5F4F25758E9AA9BF2F1E5AB443A6878212470209E28B6DB7CEA3D05443847DD584F5149152A41F78741AF2E241D5C21A9C92F7BBA11F5AA7BCBE9086DDE753D5C092AAF0F79090A4ABC287853568B72DC1B87E5423DC38E6A53B2FC53A11EE8A923815A42B813F9209E43567843ED62A8D55140AAC7CC1613A9D83B52DC2D22BB8767422AB2A5296E63F935134E9E544F0D32DA41374083871F6FB505778438E18FB54D7D81585E7BB57DBA20A3FDAB3107EF5411985EC6BA1B97699C8AF01F5216066A843875FD6AEAB58C3EA574A7A544D3800AAD797803AA0BC0E342B73138E09F626DE5F259A45B6CA7EB4A7A5164AABEDAFA446AE8DF5A52B443CB1690438845F0B64F3D940298C667292687A961B6053FD33AD9E3A36364CFC9A50323A167BCF6A268DDBCE76F805EB7C5863CE4CD8F51F4A5A5B8AE5A3E2B6BA3F6683AC84BA6B9B5193AA7B0A218DDB35CDC29370C86DF113F9498D0DF98E01C2A015BD1515D318ECA539B804B65BC887BA09F427E8DDB4E2CD50CFBCDD671F10DB71E120D2808A23D65806BFBED30659D3073ABE4A7B52E92F09F75A07A53A39B29B6B698AE3CAB0AE6AD9696E7FAC4D98E29D284750404FAE94052C8A0E1A30411B5A49A9F2A00CF2BDD8501437B51B7B16DD1275E2EF6A8E995709CF39061C9652EAADD0DB7DE0D213D6569AAC2811C2BD206ADB78C386A70C151732969D2D3829B3D16991D2D34DB49FDEB684A078782401A62000304B5C49189589CE63F6796AC6A1DD9AD35F23FDF1FC5ABC7A950E5815CC6AC192A5DC7C8B5954F66B6E2AB705854A480788E47F16ACD4071556934C02D55AD143E3A8656839AD4B0940F9D6351F32C7DFB0B931CB6A1F93024AA5C7650F3E830263331296D2B525092E29902A49A56B43AC4970EA51A54644DAD48AA8FEE3805A99654645EEEB35F6D216A76EB70B83CCF106A7D088F4768D48E54D546EA51F69582061FB2A289977B1E3921C43592D85B71B5D0B6D58E43AF268491D4EC96A4F572E753AB1933DD8E6AB7C6C0295A2F55EF22DA4FA0C5C6DF2857A5050C88AA572029D0CB6057DA357895E713508731B2B8629B5CDDBBD1594B525C07AA8529E9740AF9294D53F6F5B894F4AD0C2DE8C57BA371F259429F12FA6BC2A56D22B5079808E1AC3A6A66B221E80BC1C92FE57D6FCD9081E243DE2387E49FC5AA9D75C0059F0485E5ABCC89054573A53AA1EF28752F80AF13D5D4354BAEDCD38819AD8424E488A1C93E987BADD0A520D1B2EBA14A35A24120F0EA57D9A1A4BD7D74E0AF64206251DC3872240010C3BD44A4ADD5ACF50E54A1709AF41E279F3D2C977001F47115E84486341C5155AEC1759C1CF442C8FCCFA6F242CA5540AEAEA50A24555C38D28742CDB9C6CA5474E48960C30C918B385DD10B57A92594B291EEA94B2E3C0F2EA2D214514F1E75D52770611A803F915DDF68CC5138B36175900FAAE3890A4A4A967D26CF1E3EEA4F553EBD4F8D8DC324397CCE386016DB8E261A4FA40568AA8691C1440009EA254491ACC737887AAAA135E92B55A7A53EBA7A2EACA8F3214AE64914AD068932C6D15D415F1B4A736E34B342B69C4F982929F03CE8386A9F898C9C08463180704E2D32E023AB870A79F96B574A0E48C6353DC569751C01E03F61D52E911D1B49F3A248AC28D3DD03CFF0006867B91D134A2F83193C015F4F2E62BA02426B82670E08DA0B011D2A0B04123979F9534BE504E613385CDE28BA27A2520107AAB424035F0FAB4BDF1B814CA37B7A704FEC32D9A509E7E3FDB1A19F508E8C83927C8D1D3C28A3E3C8FB0FB742B9C78A3A3154516D63A7AF8D6BD3F69D0CF7551AD1445315B029EC1F5F03A11F9A3A244114F003D83ECD03284C2328A21FE2FC7A5B226B0E6114C3FFD5FB0E974A98C28A21F87D5FE0E96C99A690A288FF70FD3A5F2FBC9947EE05B1AAD6E96A2896A2896A2896A2896A2896A28BF12F992C2D92D9A9EB34E9E3EF01CC535F44FCC2DD0C3B18B561EFCF201FC96E27D4BC97952CBC4DCBC777BB1349F29C07AD323B1D97084A5A5A54546852929048E1D3EE815A0150453E9D789C54A2EFE6F7B8234C5F29CF7105B6FE377E9F6C4A55D6D34B9085C72B3FF00B091EAB2E73F149D328EB8714AE66B4FBD8D5588C53BC8DC4C4D296B278F69C8DB612DB41E92FBB6EB884255CBD6867D37506BC2AC2820D081E1A66C9C11A66A380F3F9D279AD2B8C350E3E6F62B6F8677EBB3572B7072F702FF008F5EC108309B4B776B7B8A524503572745BD0CB7EB0355B8D9504F81F1BEB6AF6F76A1DD14F5A5EFB7B90EEF0691D20FAB1528A7BB769D8A97F1BC621C984E1429129DBB256C94D2B408811949EB701E27D5A8F2E3ACF79A0003043982BEF3BD0BD5BEEBB709E296E1C5C62035EE86FD28535E5804A6A94B936E2FA4F107F240E27D875607389C85552FB7886275237C5FB9BDD39121A69FC99284101294C7B459D9F7AA7A95D7F00A782A801A75D0D396AD898D760E1AA9E4C3A70E297DDC0E0DAC24B7B287EBAA61EF1B72F2DC9363B1E4CDBCBCFA7F8CFC75CEAE96D095FF00BBB95A120A5084A02686B4A733A3ACC18E6D4DA0C3870CBA6A96C60C9A84AE738538D3A7A805F45FF28BDBDC12F5D856C9E477CC7E1DD2FB707F71173E64E7E73C1D5C6DCCCBA1C7088A25261B286E1C56D34436904824D54493D2436515CB44D302E79EBE8344B6EAF66B691D0C043583214AF005751E2DA31CB5D05BEC5638812689F460328A52B4E34AD453CF47476103300D144BA5BF9DFEF396FAAE0940212CC648A7F92011F50A12068D65B35A68DA84B9D74E39D0F956A3971411EF34470E695057ED109D5E20206078AA0CEDE20AD05CB8EBA8EB293C382D2479788EA4FEDEAF6C6E032433A465735AEE04382A3A5638F1042A9CBC4569AB1A482AA3423A5343CCA0F2A8FA38F8F91FA345071423DA1473913EC9931EDEA92CB65D502BEB712D9281D2080147C75892666A01D403AD6AC85D42E02AB79263B0C2405A02129480410A48000FCA4D47EDE8C8A78436BA853B52F922989F74AD05CF88A2425F6D47910950247872AFB3568BB81D8070287743281882B41D9CC0A807A88E60A89F1F1E435709AA3B8D2474AA1D1E347101353977687DD00A789AA0A5447B3A6B5D63E30034C8AD7E1EA10E4FCDAC56F3D13AE2CC458AFF00B4071BFAEA520506B6178D38038AADD6C4624609A1FDC0C64361CFD376C2D9F14CA6EA050AAA9495751151CA9E3A86E6A70382D7C02147B277EF6E19B91B3A7268EE5C68418A869F75693D3D54EA432A0091CB8F1D6C249436AD074F62ACB23D5A491A9643BB58EADB529AB8A05001EA3C9524924915E85250A51A8FDEEB01F2BB00B2E631B99509E6BBF975B73A98D60B95A5E5127ADE9911D0DA13D445006C254E2E9E541A223648FF007B2EA5448E63455BE9514DD77137172B68A23DF52B6EA0BA2044447410A04292954874553C7870AEAF1131A6AEAAA0C8E70A3547B22DB33D42EDCE47ACF150514CC94405ACA893FE296DF557C4569A206903054383BED2728535E8E1C4C662DAD5004A4B10D9794A5F24FE71C0E28579D6B5FAF55BDCC6915AD56017752784DCEE49A14248511D6E3C5A410AAD004A1BE8E848EB3C79927CB5AB5F1934AE3D15582E70C53E5BA3DDE7C8424242893C541B4A02943A6A9E91D292687F06879EF2DE169D67159D55C8A932D7845F663C10E250C28AD63A12DA9F74D142A5286EBCC72F03A56FDEAD5A68D0E71A7A541E293800A67B1EDD7C221A5CE4B08EA4A7AD534B51D2B03EFA4B43FD6082107F278E96CDB8CD71EE3486555B57C78CE58C1D668A458B8C636D04B6B901D1D22A88AD25284955149ABCEA7A893D351EE8A68412CC2A1F87D6B775C598146BCB8F565E73EC445199B4C4697F0B19254D2925A71E4FC47557A93D492E552147A7F279538EB21B19EF3CD4AAFE25BA498C1C0E0734ECCC9538921E75400E80B6CA5286D1C0F24A53D2424F9529AA9F1C6D3DC38AB2399F20A4A5DE5CBEA5B6B5B6DB9EECA70957A4A5064700B1C6A6A164050A733CB586F46AC110E20621C49C325B1F105C6C0712B2107F375A2454D7D8070F6F2AEB0F2D234D4E4B66C8EA52868BD9B42154712DA3974952811434E2134E7504D754124F67D6886924649DA2AFA5496874800F01D3CC71AD49F01F4EB058E28B8FA38A748CAEB27AD208293FDD50904F49E60827C472D52D0E0EA814E945C62A3159DCB409212B6C10E01C948E93E14A9E008AF8E898EE1CC18E21171B4795678D669A828AC65282C5429B50550051041151D24535778EC38D518CC2851146B5BC9A17016D34AD54529A0A78FBC48D52E9DBC1171B8648AA0454A0A52A7504541F742966BE5F7472D06F9C1CB3464647045F1184D3DD52AA69F75A48F31C8A89E03423E5A9A1474753C53EC78CC9A15B8ED6BC69403C3C853433A5A64023A327A53FC56D8453DF70F13CE9E7FDEE8491E4F04CA27D38A2488A613D3C5478781F61F66817EA25308E5038A2DB61697D74EAE013F943CD5FDCE847D4668F8E4D47044B19A41A7DEE00788F3FA342BC94746F20A7D8D19245428F21E00FEE68295F429944EAD112C466879F9787B7E9D2F91D5C533864C51344688E151E1F61F66974AE144D21385512C34F11F48FC5A5D21A94D22382278FF73E93A5F27BC99C7EEACFAAD5896A2896A2896A2896A2896A2896A28BF0D4C8F2C6ADD25868BE9EA2D75FA26A42CAD6A48EAE9E5C13C388E3AF4DF9817E64BE82D862D6C65C7B49A7D41719CA96CD65B4B29C1CE781E61ED2B5636E129344478ADA555AFAD23A9CA50F13D2820278F2F78EB8B8A5072C13C9A2A9A94EE8CB6F1724F409EE2BAD428D476CB65C3FBD0180953B53FBEEA3F834731EE70A1281918D0324496BB3DE6E1D264C54B2C38482E3CA2DA8711D454CA12EBE934E3C529074743139D98A14BA6958DC33EC5225BF6CAD32DB43BFA4E48907896994351D28E5EEA5C754F29C27FBD1A671DBB47DA24A5734E780A045967C725E2EF29FB5499AC3A54038A8F709519C79238D1F44775969F1EC52543F1B08A163701F594AA791EFCE8AC0621BB168B5A598F95EDD59F226DB294994CDE328B45C9D48E0B52D71EF0E415B94F10C22A7474515B3F07B057A4123D647A12A91F703DD79F2807D4AE66DD65DDB5E58FC564B93312B9B8B04C2BA5DEEB0D09253EEA58BBCE973ED6F291D3EEF594A95D54A1E0010DB088F7A3777BAFDB9209F7B72D044A3BBD381FAA84297FBA2DB6C2A56C362C31EC8EE4B5BFBAD89B28F8B976FBB321872C595B6E48684562DA5D42574A1EA0003427C4C8AD9DE39639BA06926B438E5D3ED42B6460699587512694C3E9C17D34FCA9B0C4E39D86ECBD9DAB83570111FDC3A485C75462B3237272D934280B7D4928F5A8789E23CB4EEDA6F0E26B48397AEA96DDC5E2BCC83027F73357D65DA9F4134689009A96941CF3A1A54ABF6B4C63B98CE2481DA94C96D20C87990BCA4A5B528158EA0388525493E5E5A31B73156A48A25D2412654354C522525BAD4D00F10A1CF8F913ABC5DC14CC215D04C381AA6772EA2A424F571A7104D4FD341ADBE2E323BB45518646FBC715A0FDF7D14F5BBD0DA523FC61712D01C857A9D5240FC3AD5D741B80556800E381AA6E772D8C0F4AA7C7A1AF075697053CBAD24D3FF004B557C5B1C68490AD6C6FA5695FA75A8DB305D82EF1D654FDAD8901254895D6D7B879027A94554EAFEE86965D31CF7EA8CB00E24D7F711D6B70580B5C1C4752AF578879ADB83CE41BED927C26FA9C4B0EDFA7C05A9B1452534320B3409E7EF5357C4C6E9A484EAFE081F52D64901358C0A7F0ABFB8A18B8774B2B6EA5FE8EBD5961CB90A2A4A05BAE31E73840A73722A6438480BF13A716BB499BBF139D4FE157F224977B835A744AD693FC1354277DEECA7E548758B7D8E55BC041E8724A5CA927800953C19AFD5A64DDB658CE2FF00325C6F6270A359875A8EDDDD9CEE23A5C8B364371540294F21F24A5452280C543E127DE1CFAB570B20EF7B3EB54BEF08C062D4776BEE490CC61072389719CEA51E9AE592DB248E092B6E3FC33A9053C48054A1AB7F5648455A41F2AABE3D80D083551FE4D7CD9CC81D76E3FA4F348F76512E25D432DC8692B5151500D8F4114A28D471A786898AD2EE31A5AD6D10F25CDB487BC482A2452607C538E5AE73AEAD74E996E455439445787AAB696E2AA072A1D306B25A779A0755500F7C75AB5C7CC89ADAFE6D015F1363912DF087104AA8FBACABA884852BAC942BDEA0E3CB5AC8D8C10D943457AD68247371613447EBCEB309310B39140B74F64A8A1B5AEDBE9A9F4A48A965C6DB0BA0E1E078EA86B2DCBFB8F15E38E4B575D9183B15AD6FC624658EAFF40D854874214EACB4A7BA14A4A8052108286FDFE351CEA06B335EDBDA504AFABB8002A5545C643DD6E2A43B3EC46E0C9696EA71BB93CA05BF4DB712CC24105254B3EBCE719475A52470493C79E8697736BC810823A49C3F756C2D6F5E2B1C66BD629F5A94F14D83CA5801EBD474D9BA1D0B2DAE4B7296A48AD161109521087403C38F8D34BA6BAB99BB800D1D2713FB8AE86C2F3398060EDF6554BD0B68ECCCA51F1B217309A75A586598F509505AAAB754B29E207E4FD5AA3E1DEE352F70A7460883631E6F713D987D6A44B5D8F15B391E8E38C4850A8F51C905E5905343D4D25B0C280048E5ECD6459B3ED627AD5C196F1651EAEB26BE8C91FC1B9C169A488B6A6E2A287F346346651D292534A3612A0934F102A357089ACC001E644B6700771BA7C802F57635AE7292A5B0C071445429A094D3AABC1C5A149A8F0E2359D23239550F232294D5ED04F585ECAC571C909A3C569501D4829710A038F57523D2754BEBA9E07C35911B3E9443BAC2CDF8B982AB59187FA480215CE4ADA0AAA1328B67C3A50082B429C4241E1535E1A1E4B485EED541E4C16836E8C0D31B9C1B5CB30939669CC2803D0E242684A55E9152803D353D4A04721F40D09258349C0AB3E09C00A1AFA1784449EDB9444151255D21C0EA3A020FDE3D2549712AA0E5420D0685362E6FBAB765ABDB90C7B56FA1B9885252A69F401EE05942CA15D5C0254A03813CB953CF5A186568A16F99122291B85304FB159908475109690542AB5008F752120F05D39FB35A0A0A8A502258C73734EF1D31CA8971D52D092024247471AF215E803872353ECD6457C8886353DC7F41B4025080000A1D6BAF3E2080909238F993AD0D07422994013B26414F451686F87301141C4748EB1C413EDD50F1922189C1979E7393A15420915F690471AA882395354F1CB8A259529E63B6DA8153A14AA701D745057B08F0D52EC4624845C6D4F0DB896C000214A34E90534A7B780AE860D1546C605538227B88E3D0902A013D2A00F302848AF0A6B42C04D11ACA0CD3947B89553850F852B41CBC0EA874401463289F233EEAF9ACD0A8922BCF8F8F9EA87B40F323A3288A213EE789E2389FA741BD308D1E58B93DFE8FFC3D072265170471187DDFA07DBA5CFE299C3927F6390FA13F6684911D16611146E7F58FB74B9E9A4202228BF787D23F1E97CD92690E5444D1078FB7F10D2F7E7E44D6108858FF00163E93A024F79348FDD59F55AB12D4512D4512D4512D4512D4512D4517FFD9
where SScodigo = 'FTEC'  and SMcodigo = 'param'
end -- if 
commit 
go

print 'Terminado SModulos'

print 'Actualizar SRoles (update/insert)...'
print 'SRoles fila: 1 de 1'
declare @n int 
begin tran
select @n = count(1)
from SRoles 
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'if (@n = 0) begin
insert into SRoles (
SScodigo, SRcodigo, SRdescripcion, BMfecha,
BMUsucodigo, SRinterno)
values (
'FTEC', 'FTEC-Admin', 'Administrador FTEC', '20130402 12:28:05.707',
1, 0)
end else begin 
update SRoles
set SRdescripcion = 'Administrador FTEC'
,  BMfecha = '20130402 12:28:05.707'
,  BMUsucodigo = 1
,  SRinterno = 0
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'
end -- if 
commit 
go

print 'Terminado SRoles'

print 'Actualizar SProcesos (update/insert)...'
print 'SProcesos fila: 1 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesos 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTCA'if (@n = 0) begin
insert into SProcesos (
SScodigo, SMcodigo, SPcodigo, SPdescripcion,
SPhomeuri, SPmenu, BMfecha, BMUsucodigo,
SPorden, SPhablada, SPlogo, SPanonimo,
SPpublico, SPinterno)
values (
'FTEC', 'param', 'FTCA', 'Costos Administrativos',
'/ftec/catalogos/CostosAdmin.cfm', 1, '20130402 11:50:57.413', 1,
null, null, null, 0,
0, 0)
end else begin 
update SProcesos
set SPdescripcion = 'Costos Administrativos'
,  SPhomeuri = '/ftec/catalogos/CostosAdmin.cfm'
,  SPmenu = 1
,  BMfecha = '20130402 11:50:57.413'
,  BMUsucodigo = 1
,  SPorden = null
,  SPhablada = null
,  SPlogo = null
,  SPanonimo = 0
,  SPpublico = 0
,  SPinterno = 0
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTCA'
end -- if 
commit 
go
print 'SProcesos fila: 2 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesos 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTET'if (@n = 0) begin
insert into SProcesos (
SScodigo, SMcodigo, SPcodigo, SPdescripcion,
SPhomeuri, SPmenu, BMfecha, BMUsucodigo,
SPorden, SPhablada, SPlogo, SPanonimo,
SPpublico, SPinterno)
values (
'FTEC', 'param', 'FTET', 'Tipos Estado de Tramite',
'/ftec/catalogos/EstadoTramites.cfm', 1, '20130422 17:29:17.420', 1,
null, null, null, 0,
0, 0)
end else begin 
update SProcesos
set SPdescripcion = 'Tipos Estado de Tramite'
,  SPhomeuri = '/ftec/catalogos/EstadoTramites.cfm'
,  SPmenu = 1
,  BMfecha = '20130422 17:29:17.420'
,  BMUsucodigo = 1
,  SPorden = null
,  SPhablada = null
,  SPlogo = null
,  SPanonimo = 0
,  SPpublico = 0
,  SPinterno = 0
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTET'
end -- if 
commit 
go
print 'SProcesos fila: 3 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesos 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTFP'if (@n = 0) begin
insert into SProcesos (
SScodigo, SMcodigo, SPcodigo, SPdescripcion,
SPhomeuri, SPmenu, BMfecha, BMUsucodigo,
SPorden, SPhablada, SPlogo, SPanonimo,
SPpublico, SPinterno)
values (
'FTEC', 'param', 'FTFP', 'Tipos de Formas de Pago',
'/ftec/catalogos/FormaPago.cfm', 1, '20130529 21:40:25.077', 1,
null, null, null, 0,
0, 0)
end else begin 
update SProcesos
set SPdescripcion = 'Tipos de Formas de Pago'
,  SPhomeuri = '/ftec/catalogos/FormaPago.cfm'
,  SPmenu = 1
,  BMfecha = '20130529 21:40:25.077'
,  BMUsucodigo = 1
,  SPorden = null
,  SPhablada = null
,  SPlogo = null
,  SPanonimo = 0
,  SPpublico = 0
,  SPinterno = 0
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTFP'
end -- if 
commit 
go
print 'SProcesos fila: 4 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesos 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTFT'if (@n = 0) begin
insert into SProcesos (
SScodigo, SMcodigo, SPcodigo, SPdescripcion,
SPhomeuri, SPmenu, BMfecha, BMUsucodigo,
SPorden, SPhablada, SPlogo, SPanonimo,
SPpublico, SPinterno)
values (
'FTEC', 'param', 'FTFT', 'Definición Flujo Tramite',
'/ftec/catalogos/FlujoTramites.cfm', 1, '20130423 18:01:08.330', 1,
null, null, null, 0,
0, 0)
end else begin 
update SProcesos
set SPdescripcion = 'Definición Flujo Tramite'
,  SPhomeuri = '/ftec/catalogos/FlujoTramites.cfm'
,  SPmenu = 1
,  BMfecha = '20130423 18:01:08.330'
,  BMUsucodigo = 1
,  SPorden = null
,  SPhablada = null
,  SPlogo = null
,  SPanonimo = 0
,  SPpublico = 0
,  SPinterno = 0
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTFT'
end -- if 
commit 
go
print 'SProcesos fila: 5 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesos 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTIND'if (@n = 0) begin
insert into SProcesos (
SScodigo, SMcodigo, SPcodigo, SPdescripcion,
SPhomeuri, SPmenu, BMfecha, BMUsucodigo,
SPorden, SPhablada, SPlogo, SPanonimo,
SPpublico, SPinterno)
values (
'FTEC', 'param', 'FTIND', 'Generar Indicadores',
'/ftec/catalogos/SaldoCuentaCont.cfm', 1, '20131107 18:52:47.970', 1,
null, null, null, 0,
0, 0)
end else begin 
update SProcesos
set SPdescripcion = 'Generar Indicadores'
,  SPhomeuri = '/ftec/catalogos/SaldoCuentaCont.cfm'
,  SPmenu = 1
,  BMfecha = '20131107 18:52:47.970'
,  BMUsucodigo = 1
,  SPorden = null
,  SPhablada = null
,  SPlogo = null
,  SPanonimo = 0
,  SPpublico = 0
,  SPinterno = 0
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTIND'
end -- if 
commit 
go
print 'SProcesos fila: 6 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesos 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTLP'if (@n = 0) begin
insert into SProcesos (
SScodigo, SMcodigo, SPcodigo, SPdescripcion,
SPhomeuri, SPmenu, BMfecha, BMUsucodigo,
SPorden, SPhablada, SPlogo, SPanonimo,
SPpublico, SPinterno)
values (
'FTEC', 'param', 'FTLP', 'Lugares de Pago',
'/ftec/catalogos/LugarPago.cfm', 1, '20130529 21:41:38.600', 1,
null, null, null, 0,
0, 0)
end else begin 
update SProcesos
set SPdescripcion = 'Lugares de Pago'
,  SPhomeuri = '/ftec/catalogos/LugarPago.cfm'
,  SPmenu = 1
,  BMfecha = '20130529 21:41:38.600'
,  BMUsucodigo = 1
,  SPorden = null
,  SPhablada = null
,  SPlogo = null
,  SPanonimo = 0
,  SPpublico = 0
,  SPinterno = 0
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTLP'
end -- if 
commit 
go
print 'SProcesos fila: 7 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesos 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'if (@n = 0) begin
insert into SProcesos (
SScodigo, SMcodigo, SPcodigo, SPdescripcion,
SPhomeuri, SPmenu, BMfecha, BMUsucodigo,
SPorden, SPhablada, SPlogo, SPanonimo,
SPpublico, SPinterno)
values (
'FTEC', 'param', 'FTSP', 'Solicitud de Pago',
'/ftec/catalogos/Solicitudes-lista.cfm', 1, '20130604 16:34:28.800', 1,
null, null, null, 0,
0, 0)
end else begin 
update SProcesos
set SPdescripcion = 'Solicitud de Pago'
,  SPhomeuri = '/ftec/catalogos/Solicitudes-lista.cfm'
,  SPmenu = 1
,  BMfecha = '20130604 16:34:28.800'
,  BMUsucodigo = 1
,  SPorden = null
,  SPhablada = null
,  SPlogo = null
,  SPanonimo = 0
,  SPpublico = 0
,  SPinterno = 0
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'
end -- if 
commit 
go
print 'SProcesos fila: 8 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesos 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTA'if (@n = 0) begin
insert into SProcesos (
SScodigo, SMcodigo, SPcodigo, SPdescripcion,
SPhomeuri, SPmenu, BMfecha, BMUsucodigo,
SPorden, SPhablada, SPlogo, SPanonimo,
SPpublico, SPinterno)
values (
'FTEC', 'param', 'FTTA', 'Tipos de Autorizador',
'/ftec/catalogos/TiposAutorizadores.cfm', 1, '20130402 11:48:55.133', 1,
null, null, null, 0,
0, 0)
end else begin 
update SProcesos
set SPdescripcion = 'Tipos de Autorizador'
,  SPhomeuri = '/ftec/catalogos/TiposAutorizadores.cfm'
,  SPmenu = 1
,  BMfecha = '20130402 11:48:55.133'
,  BMUsucodigo = 1
,  SPorden = null
,  SPhablada = null
,  SPlogo = null
,  SPanonimo = 0
,  SPpublico = 0
,  SPinterno = 0
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTA'
end -- if 
commit 
go
print 'SProcesos fila: 9 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesos 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'if (@n = 0) begin
insert into SProcesos (
SScodigo, SMcodigo, SPcodigo, SPdescripcion,
SPhomeuri, SPmenu, BMfecha, BMUsucodigo,
SPorden, SPhablada, SPlogo, SPanonimo,
SPpublico, SPinterno)
values (
'FTEC', 'param', 'FTTI', 'Tipos de Indicador',
'/ftec/catalogos/IndicadoresTabs.cfm', 1, '20131106 10:32:12.743', 1,
null, null, null, 0,
0, 0)
end else begin 
update SProcesos
set SPdescripcion = 'Tipos de Indicador'
,  SPhomeuri = '/ftec/catalogos/IndicadoresTabs.cfm'
,  SPmenu = 1
,  BMfecha = '20131106 10:32:12.743'
,  BMUsucodigo = 1
,  SPorden = null
,  SPhablada = null
,  SPlogo = null
,  SPanonimo = 0
,  SPpublico = 0
,  SPinterno = 0
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'
end -- if 
commit 
go
print 'SProcesos fila: 10 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesos 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTP'if (@n = 0) begin
insert into SProcesos (
SScodigo, SMcodigo, SPcodigo, SPdescripcion,
SPhomeuri, SPmenu, BMfecha, BMUsucodigo,
SPorden, SPhablada, SPlogo, SPanonimo,
SPpublico, SPinterno)
values (
'FTEC', 'param', 'FTTP', 'Tipos de Procesos',
'/ftec/catalogos/TiposProcesos.cfm', 1, '20130423 12:15:34.933', 1,
null, null, null, 0,
0, 0)
end else begin 
update SProcesos
set SPdescripcion = 'Tipos de Procesos'
,  SPhomeuri = '/ftec/catalogos/TiposProcesos.cfm'
,  SPmenu = 1
,  BMfecha = '20130423 12:15:34.933'
,  BMUsucodigo = 1
,  SPorden = null
,  SPhablada = null
,  SPlogo = null
,  SPanonimo = 0
,  SPpublico = 0
,  SPinterno = 0
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTP'
end -- if 
commit 
go
print 'SProcesos fila: 11 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesos 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTRP'if (@n = 0) begin
insert into SProcesos (
SScodigo, SMcodigo, SPcodigo, SPdescripcion,
SPhomeuri, SPmenu, BMfecha, BMUsucodigo,
SPorden, SPhablada, SPlogo, SPanonimo,
SPpublico, SPinterno)
values (
'FTEC', 'param', 'FTTRP', 'Tramites Pendientes',
'/ftec/catalogos/Tramites-lista.cfm', 1, '20130624 09:27:02.497', 1,
null, null, null, 0,
0, 0)
end else begin 
update SProcesos
set SPdescripcion = 'Tramites Pendientes'
,  SPhomeuri = '/ftec/catalogos/Tramites-lista.cfm'
,  SPmenu = 1
,  BMfecha = '20130624 09:27:02.497'
,  BMUsucodigo = 1
,  SPorden = null
,  SPhablada = null
,  SPlogo = null
,  SPanonimo = 0
,  SPpublico = 0
,  SPinterno = 0
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTRP'
end -- if 
commit 
go
print 'SProcesos fila: 12 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesos 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTT'if (@n = 0) begin
insert into SProcesos (
SScodigo, SMcodigo, SPcodigo, SPdescripcion,
SPhomeuri, SPmenu, BMfecha, BMUsucodigo,
SPorden, SPhablada, SPlogo, SPanonimo,
SPpublico, SPinterno)
values (
'FTEC', 'param', 'FTTT', 'Tipos de Tramite',
'/ftec/catalogos/TiposTramites.cfm', 1, '20130422 16:43:09.763', 1,
null, null, null, 0,
0, 0)
end else begin 
update SProcesos
set SPdescripcion = 'Tipos de Tramite'
,  SPhomeuri = '/ftec/catalogos/TiposTramites.cfm'
,  SPmenu = 1
,  BMfecha = '20130422 16:43:09.763'
,  BMUsucodigo = 1
,  SPorden = null
,  SPhablada = null
,  SPlogo = null
,  SPanonimo = 0
,  SPpublico = 0
,  SPinterno = 0
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTT'
end -- if 
commit 
go
print 'SProcesos fila: 13 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesos 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTVice'if (@n = 0) begin
insert into SProcesos (
SScodigo, SMcodigo, SPcodigo, SPdescripcion,
SPhomeuri, SPmenu, BMfecha, BMUsucodigo,
SPorden, SPhablada, SPlogo, SPanonimo,
SPpublico, SPinterno)
values (
'FTEC', 'param', 'FTVice', 'Unidades Operativas',
'/ftec/catalogos/Vicerrectorias-lista.cfm', 1, '20130524 10:54:37.063', 1,
null, null, null, 0,
0, 0)
end else begin 
update SProcesos
set SPdescripcion = 'Unidades Operativas'
,  SPhomeuri = '/ftec/catalogos/Vicerrectorias-lista.cfm'
,  SPmenu = 1
,  BMfecha = '20130524 10:54:37.063'
,  BMUsucodigo = 1
,  SPorden = null
,  SPhablada = null
,  SPlogo = null
,  SPanonimo = 0
,  SPpublico = 0
,  SPinterno = 0
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTVice'
end -- if 
commit 
go

print 'Terminado SProcesos'

print 'Actualizar SProcesosRol (update/insert)...'
print 'SProcesosRol fila: 1 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesosRol 
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTCA'if (@n = 0) begin
insert into SProcesosRol (
SScodigo, SRcodigo, SMcodigo, SPcodigo,
BMfecha, BMUsucodigo)
values (
'FTEC', 'FTEC-Admin', 'param', 'FTCA',
'20130402 12:29:21.080', 1)
end else begin 
update SProcesosRol
set BMfecha = '20130402 12:29:21.080'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTCA'
end -- if 
commit 
go
print 'SProcesosRol fila: 2 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesosRol 
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTET'if (@n = 0) begin
insert into SProcesosRol (
SScodigo, SRcodigo, SMcodigo, SPcodigo,
BMfecha, BMUsucodigo)
values (
'FTEC', 'FTEC-Admin', 'param', 'FTET',
'20130422 17:29:17.417', 1)
end else begin 
update SProcesosRol
set BMfecha = '20130422 17:29:17.417'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTET'
end -- if 
commit 
go
print 'SProcesosRol fila: 3 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesosRol 
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTFP'if (@n = 0) begin
insert into SProcesosRol (
SScodigo, SRcodigo, SMcodigo, SPcodigo,
BMfecha, BMUsucodigo)
values (
'FTEC', 'FTEC-Admin', 'param', 'FTFP',
'20130529 21:16:38.083', 1)
end else begin 
update SProcesosRol
set BMfecha = '20130529 21:16:38.083'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTFP'
end -- if 
commit 
go
print 'SProcesosRol fila: 4 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesosRol 
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTFT'if (@n = 0) begin
insert into SProcesosRol (
SScodigo, SRcodigo, SMcodigo, SPcodigo,
BMfecha, BMUsucodigo)
values (
'FTEC', 'FTEC-Admin', 'param', 'FTFT',
'20130423 18:01:08.320', 1)
end else begin 
update SProcesosRol
set BMfecha = '20130423 18:01:08.320'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTFT'
end -- if 
commit 
go
print 'SProcesosRol fila: 5 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesosRol 
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTIND'if (@n = 0) begin
insert into SProcesosRol (
SScodigo, SRcodigo, SMcodigo, SPcodigo,
BMfecha, BMUsucodigo)
values (
'FTEC', 'FTEC-Admin', 'param', 'FTIND',
'20131022 10:02:07.027', 1)
end else begin 
update SProcesosRol
set BMfecha = '20131022 10:02:07.027'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTIND'
end -- if 
commit 
go
print 'SProcesosRol fila: 6 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesosRol 
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTLP'if (@n = 0) begin
insert into SProcesosRol (
SScodigo, SRcodigo, SMcodigo, SPcodigo,
BMfecha, BMUsucodigo)
values (
'FTEC', 'FTEC-Admin', 'param', 'FTLP',
'20130529 21:41:38.597', 1)
end else begin 
update SProcesosRol
set BMfecha = '20130529 21:41:38.597'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTLP'
end -- if 
commit 
go
print 'SProcesosRol fila: 7 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesosRol 
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'if (@n = 0) begin
insert into SProcesosRol (
SScodigo, SRcodigo, SMcodigo, SPcodigo,
BMfecha, BMUsucodigo)
values (
'FTEC', 'FTEC-Admin', 'param', 'FTSP',
'20130530 11:24:47.567', 1)
end else begin 
update SProcesosRol
set BMfecha = '20130530 11:24:47.567'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'
end -- if 
commit 
go
print 'SProcesosRol fila: 8 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesosRol 
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTTA'if (@n = 0) begin
insert into SProcesosRol (
SScodigo, SRcodigo, SMcodigo, SPcodigo,
BMfecha, BMUsucodigo)
values (
'FTEC', 'FTEC-Admin', 'param', 'FTTA',
'20130402 12:29:06.083', 1)
end else begin 
update SProcesosRol
set BMfecha = '20130402 12:29:06.083'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTTA'
end -- if 
commit 
go
print 'SProcesosRol fila: 9 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesosRol 
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'if (@n = 0) begin
insert into SProcesosRol (
SScodigo, SRcodigo, SMcodigo, SPcodigo,
BMfecha, BMUsucodigo)
values (
'FTEC', 'FTEC-Admin', 'param', 'FTTI',
'20131106 09:18:00.653', 1)
end else begin 
update SProcesosRol
set BMfecha = '20131106 09:18:00.653'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'
end -- if 
commit 
go
print 'SProcesosRol fila: 10 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesosRol 
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTTP'if (@n = 0) begin
insert into SProcesosRol (
SScodigo, SRcodigo, SMcodigo, SPcodigo,
BMfecha, BMUsucodigo)
values (
'FTEC', 'FTEC-Admin', 'param', 'FTTP',
'20130423 12:15:34.910', 1)
end else begin 
update SProcesosRol
set BMfecha = '20130423 12:15:34.910'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTTP'
end -- if 
commit 
go
print 'SProcesosRol fila: 11 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesosRol 
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTTRP'if (@n = 0) begin
insert into SProcesosRol (
SScodigo, SRcodigo, SMcodigo, SPcodigo,
BMfecha, BMUsucodigo)
values (
'FTEC', 'FTEC-Admin', 'param', 'FTTRP',
'20130624 09:27:02.467', 1)
end else begin 
update SProcesosRol
set BMfecha = '20130624 09:27:02.467'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTTRP'
end -- if 
commit 
go
print 'SProcesosRol fila: 12 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesosRol 
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTTT'if (@n = 0) begin
insert into SProcesosRol (
SScodigo, SRcodigo, SMcodigo, SPcodigo,
BMfecha, BMUsucodigo)
values (
'FTEC', 'FTEC-Admin', 'param', 'FTTT',
'20130422 16:43:09.733', 1)
end else begin 
update SProcesosRol
set BMfecha = '20130422 16:43:09.733'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTTT'
end -- if 
commit 
go
print 'SProcesosRol fila: 13 de 13'
declare @n int 
begin tran
select @n = count(1)
from SProcesosRol 
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTVice'if (@n = 0) begin
insert into SProcesosRol (
SScodigo, SRcodigo, SMcodigo, SPcodigo,
BMfecha, BMUsucodigo)
values (
'FTEC', 'FTEC-Admin', 'param', 'FTVice',
'20130402 16:49:43.143', 1)
end else begin 
update SProcesosRol
set BMfecha = '20130402 16:49:43.143'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SRcodigo = 'FTEC-Admin'  and SMcodigo = 'param'  and SPcodigo = 'FTVice'
end -- if 
commit 
go

print 'Terminado SProcesosRol'

print 'Actualizar SComponentes (update/insert)...'
print 'SComponentes fila: 1 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTCA'  and SCuri = '/ftec/catalogos/CostosAdmin.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTCA', '/ftec/catalogos/CostosAdmin.cfm',
'P', 0, '20130402 11:19:51.023', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130402 11:19:51.023'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTCA'  and SCuri = '/ftec/catalogos/CostosAdmin.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 2 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTCA'  and SCuri = '/ftec/catalogos/CostosAdminForm.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTCA', '/ftec/catalogos/CostosAdminForm.cfm',
'P', 0, '20130402 11:21:37.723', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130402 11:21:37.723'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTCA'  and SCuri = '/ftec/catalogos/CostosAdminForm.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 3 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTCA'  and SCuri = '/ftec/catalogos/CostosAdminSQL.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTCA', '/ftec/catalogos/CostosAdminSQL.cfm',
'P', 0, '20130402 11:22:02.027', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130402 11:22:02.027'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTCA'  and SCuri = '/ftec/catalogos/CostosAdminSQL.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 4 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTCA'  and SCuri = '/ftec/Componentes/FTCostosAdmin.cfc'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTCA', '/ftec/Componentes/FTCostosAdmin.cfc',
'P', 0, '20130402 11:23:08.423', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130402 11:23:08.423'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTCA'  and SCuri = '/ftec/Componentes/FTCostosAdmin.cfc'
end -- if 
commit 
go
print 'SComponentes fila: 5 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTET'  and SCuri = '/ftec/catalogos/EstadoTramites.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTET', '/ftec/catalogos/EstadoTramites.cfm',
'P', 0, '20130422 17:29:03.537', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130422 17:29:03.537'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTET'  and SCuri = '/ftec/catalogos/EstadoTramites.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 6 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTET'  and SCuri = '/ftec/catalogos/EstadoTramitesForm.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTET', '/ftec/catalogos/EstadoTramitesForm.cfm',
'P', 0, '20130422 17:29:41.980', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130422 17:29:41.980'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTET'  and SCuri = '/ftec/catalogos/EstadoTramitesForm.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 7 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTET'  and SCuri = '/ftec/catalogos/EstadoTramitesSQL.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTET', '/ftec/catalogos/EstadoTramitesSQL.cfm',
'P', 0, '20130422 17:29:54.933', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130422 17:29:54.933'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTET'  and SCuri = '/ftec/catalogos/EstadoTramitesSQL.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 8 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTFP'  and SCuri = '/ftec/catalogos/FormaPago.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTFP', '/ftec/catalogos/FormaPago.cfm',
'P', 0, '20130529 21:16:15.457', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130529 21:16:15.457'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTFP'  and SCuri = '/ftec/catalogos/FormaPago.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 9 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTFP'  and SCuri = '/ftec/catalogos/FormaPagoForm.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTFP', '/ftec/catalogos/FormaPagoForm.cfm',
'P', 0, '20130529 21:17:39.030', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130529 21:17:39.030'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTFP'  and SCuri = '/ftec/catalogos/FormaPagoForm.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 10 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTFP'  and SCuri = '/ftec/catalogos/FormaPagoSQL.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTFP', '/ftec/catalogos/FormaPagoSQL.cfm',
'P', 0, '20130529 21:17:04.650', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130529 21:17:04.650'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTFP'  and SCuri = '/ftec/catalogos/FormaPagoSQL.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 11 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTFT'  and SCuri = '/ftec/catalogos/FlujoTramites.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTFT', '/ftec/catalogos/FlujoTramites.cfm',
'P', 0, '20130423 18:00:48.007', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130423 18:00:48.007'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTFT'  and SCuri = '/ftec/catalogos/FlujoTramites.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 12 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTFT'  and SCuri = '/ftec/catalogos/FlujoTramitesForm.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTFT', '/ftec/catalogos/FlujoTramitesForm.cfm',
'P', 0, '20130423 18:01:40.590', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130423 18:01:40.590'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTFT'  and SCuri = '/ftec/catalogos/FlujoTramitesForm.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 13 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTFT'  and SCuri = '/ftec/catalogos/FlujoTramitesSQL.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTFT', '/ftec/catalogos/FlujoTramitesSQL.cfm',
'P', 0, '20130423 18:01:29.183', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130423 18:01:29.183'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTFT'  and SCuri = '/ftec/catalogos/FlujoTramitesSQL.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 14 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTIND'  and SCuri = '/ftec/catalogos/GenerarReporte.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTIND', '/ftec/catalogos/GenerarReporte.cfm',
'P', 0, '20131022 10:00:12.910', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20131022 10:00:12.910'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTIND'  and SCuri = '/ftec/catalogos/GenerarReporte.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 15 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTIND'  and SCuri = '/ftec/catalogos/Reporte.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTIND', '/ftec/catalogos/Reporte.cfm',
'P', 0, '20131022 10:00:31.310', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20131022 10:00:31.310'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTIND'  and SCuri = '/ftec/catalogos/Reporte.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 16 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTIND'  and SCuri = '/ftec/catalogos/Reporteimpreso.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTIND', '/ftec/catalogos/Reporteimpreso.cfm',
'P', 0, '20131022 11:06:58.527', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20131022 11:06:58.527'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTIND'  and SCuri = '/ftec/catalogos/Reporteimpreso.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 17 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTIND'  and SCuri = '/ftec/catalogos/SaldoCuentaCont.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTIND', '/ftec/catalogos/SaldoCuentaCont.cfm',
'P', 0, '20131022 09:58:59.023', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20131022 09:58:59.023'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTIND'  and SCuri = '/ftec/catalogos/SaldoCuentaCont.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 18 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTIND'  and SCuri = '/ftec/catalogos/SaldoCuentaContform.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTIND', '/ftec/catalogos/SaldoCuentaContform.cfm',
'P', 0, '20131022 09:59:49.357', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20131022 09:59:49.357'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTIND'  and SCuri = '/ftec/catalogos/SaldoCuentaContform.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 19 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTLP'  and SCuri = '/ftec/catalogos/LugarPago.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTLP', '/ftec/catalogos/LugarPago.cfm',
'P', 0, '20130529 21:41:26.150', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130529 21:41:26.150'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTLP'  and SCuri = '/ftec/catalogos/LugarPago.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 20 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTLP'  and SCuri = '/ftec/catalogos/LugarPagoForm.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTLP', '/ftec/catalogos/LugarPagoForm.cfm',
'P', 0, '20130529 21:42:17.120', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130529 21:42:17.120'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTLP'  and SCuri = '/ftec/catalogos/LugarPagoForm.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 21 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTLP'  and SCuri = '/ftec/catalogos/LugarPagoSQL.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTLP', '/ftec/catalogos/LugarPagoSQL.cfm',
'P', 0, '20130529 21:42:02.033', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130529 21:42:02.033'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTLP'  and SCuri = '/ftec/catalogos/LugarPagoSQL.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 22 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'  and SCuri = '/ftec/catalogos/Solicitudes-lista.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTSP', '/ftec/catalogos/Solicitudes-lista.cfm',
'P', 0, '20130604 16:33:24.983', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130604 16:33:24.983'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'  and SCuri = '/ftec/catalogos/Solicitudes-lista.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 23 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'  and SCuri = '/ftec/catalogos/Solicitudes-listaForm.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTSP', '/ftec/catalogos/Solicitudes-listaForm.cfm',
'P', 0, '20130604 16:33:56.190', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130604 16:33:56.190'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'  and SCuri = '/ftec/catalogos/Solicitudes-listaForm.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 24 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'  and SCuri = '/ftec/catalogos/Solicitudes-listaSql.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTSP', '/ftec/catalogos/Solicitudes-listaSql.cfm',
'P', 0, '20130604 16:34:10.967', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130604 16:34:10.967'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'  and SCuri = '/ftec/catalogos/Solicitudes-listaSql.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 25 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'  and SCuri = '/ftec/catalogos/SolicitudPago-Form.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTSP', '/ftec/catalogos/SolicitudPago-Form.cfm',
'P', 0, '20130530 11:25:17.720', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130530 11:25:17.720'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'  and SCuri = '/ftec/catalogos/SolicitudPago-Form.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 26 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'  and SCuri = '/ftec/catalogos/SolicitudPago-Sql.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTSP', '/ftec/catalogos/SolicitudPago-Sql.cfm',
'P', 0, '20130530 11:25:31.907', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130530 11:25:31.907'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'  and SCuri = '/ftec/catalogos/SolicitudPago-Sql.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 27 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'  and SCuri = '/ftec/catalogos/SolicitudPago.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTSP', '/ftec/catalogos/SolicitudPago.cfm',
'P', 0, '20130530 11:24:32.253', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130530 11:24:32.253'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'  and SCuri = '/ftec/catalogos/SolicitudPago.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 28 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'  and SCuri = '/ftec/Utiles/ConlisVicerrectoria.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTSP', '/ftec/Utiles/ConlisVicerrectoria.cfm',
'P', 0, '20130726 11:17:03.597', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130726 11:17:03.597'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTSP'  and SCuri = '/ftec/Utiles/ConlisVicerrectoria.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 29 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTA'  and SCuri = '/ftec/catalogos/TiposAutorizadores.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTA', '/ftec/catalogos/TiposAutorizadores.cfm',
'P', 0, '20130228 19:07:31.940', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130228 19:07:31.940'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTA'  and SCuri = '/ftec/catalogos/TiposAutorizadores.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 30 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTA'  and SCuri = '/ftec/catalogos/TiposAutorizadoresForm.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTA', '/ftec/catalogos/TiposAutorizadoresForm.cfm',
'P', 0, '20130228 19:08:01.613', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130228 19:08:01.613'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTA'  and SCuri = '/ftec/catalogos/TiposAutorizadoresForm.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 31 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTA'  and SCuri = '/ftec/catalogos/TiposAutorizadoresSql.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTA', '/ftec/catalogos/TiposAutorizadoresSql.cfm',
'P', 0, '20130228 19:08:17.347', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130228 19:08:17.347'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTA'  and SCuri = '/ftec/catalogos/TiposAutorizadoresSql.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 32 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTA'  and SCuri = '/ftec/Componentes/FTTipoAutorizador.cfc'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTA', '/ftec/Componentes/FTTipoAutorizador.cfc',
'P', 0, '20130314 18:52:13.003', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130314 18:52:13.003'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTA'  and SCuri = '/ftec/Componentes/FTTipoAutorizador.cfc'
end -- if 
commit 
go
print 'SComponentes fila: 33 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'  and SCuri = '/ftec/catalogos/Indicadores.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTI', '/ftec/catalogos/Indicadores.cfm',
'P', 0, '20131106 09:17:45.287', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20131106 09:17:45.287'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'  and SCuri = '/ftec/catalogos/Indicadores.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 34 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'  and SCuri = '/ftec/catalogos/IndicadoresForm.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTI', '/ftec/catalogos/IndicadoresForm.cfm',
'P', 0, '20131106 09:18:42.163', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20131106 09:18:42.163'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'  and SCuri = '/ftec/catalogos/IndicadoresForm.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 35 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'  and SCuri = '/ftec/catalogos/IndicadoresSQL.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTI', '/ftec/catalogos/IndicadoresSQL.cfm',
'P', 0, '20131106 09:18:19.033', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20131106 09:18:19.033'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'  and SCuri = '/ftec/catalogos/IndicadoresSQL.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 36 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'  and SCuri = '/ftec/catalogos/IndicadoresTabs.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTI', '/ftec/catalogos/IndicadoresTabs.cfm',
'P', 0, '20131106 10:32:05.903', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20131106 10:32:05.903'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'  and SCuri = '/ftec/catalogos/IndicadoresTabs.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 37 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'  and SCuri = '/ftec/catalogos/IndiComentarioSQL.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTI', '/ftec/catalogos/IndiComentarioSQL.cfm',
'P', 0, '20131106 11:33:03.097', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20131106 11:33:03.097'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'  and SCuri = '/ftec/catalogos/IndiComentarioSQL.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 38 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'  and SCuri = '/ftec/catalogos/IndiCuentas.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTI', '/ftec/catalogos/IndiCuentas.cfm',
'P', 0, '20131107 15:08:11.763', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20131107 15:08:11.763'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'  and SCuri = '/ftec/catalogos/IndiCuentas.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 39 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'  and SCuri = '/ftec/catalogos/IndiCuentasSQL.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTI', '/ftec/catalogos/IndiCuentasSQL.cfm',
'P', 0, '20131107 15:08:00.100', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20131107 15:08:00.100'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTI'  and SCuri = '/ftec/catalogos/IndiCuentasSQL.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 40 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTP'  and SCuri = '/ftec/catalogos/TiposProcesos.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTP', '/ftec/catalogos/TiposProcesos.cfm',
'P', 0, '20130423 12:15:18.377', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130423 12:15:18.377'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTP'  and SCuri = '/ftec/catalogos/TiposProcesos.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 41 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTP'  and SCuri = '/ftec/catalogos/TiposProcesosForm.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTP', '/ftec/catalogos/TiposProcesosForm.cfm',
'P', 0, '20130423 12:16:08.343', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130423 12:16:08.343'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTP'  and SCuri = '/ftec/catalogos/TiposProcesosForm.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 42 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTP'  and SCuri = '/ftec/catalogos/TiposProcesosSQL.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTP', '/ftec/catalogos/TiposProcesosSQL.cfm',
'P', 0, '20130423 12:15:55.367', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130423 12:15:55.367'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTP'  and SCuri = '/ftec/catalogos/TiposProcesosSQL.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 43 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTRP'  and SCuri = '/ftec/catalogos/SolicitudPago-Sql.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTRP', '/ftec/catalogos/SolicitudPago-Sql.cfm',
'P', 0, '20130726 11:03:19.733', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130726 11:03:19.733'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTRP'  and SCuri = '/ftec/catalogos/SolicitudPago-Sql.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 44 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTRP'  and SCuri = '/ftec/catalogos/SolicitudPago.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTRP', '/ftec/catalogos/SolicitudPago.cfm',
'P', 0, '20130726 11:02:39.107', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130726 11:02:39.107'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTRP'  and SCuri = '/ftec/catalogos/SolicitudPago.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 45 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTRP'  and SCuri = '/ftec/catalogos/Tramites-lista.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTRP', '/ftec/catalogos/Tramites-lista.cfm',
'P', 0, '20130624 09:26:39.997', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130624 09:26:39.997'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTRP'  and SCuri = '/ftec/catalogos/Tramites-lista.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 46 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTRP'  and SCuri = '/ftec/catalogos/Tramites-listaSql.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTRP', '/ftec/catalogos/Tramites-listaSql.cfm',
'P', 0, '20130624 09:37:57.600', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130624 09:37:57.600'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTRP'  and SCuri = '/ftec/catalogos/Tramites-listaSql.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 47 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTT'  and SCuri = '/ftec/catalogos/TiposTramites.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTT', '/ftec/catalogos/TiposTramites.cfm',
'P', 0, '20130422 16:42:52.650', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130422 16:42:52.650'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTT'  and SCuri = '/ftec/catalogos/TiposTramites.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 48 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTT'  and SCuri = '/ftec/catalogos/TiposTramitesForm.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTT', '/ftec/catalogos/TiposTramitesForm.cfm',
'P', 0, '20130422 16:43:52.440', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130422 16:43:52.440'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTT'  and SCuri = '/ftec/catalogos/TiposTramitesForm.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 49 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTT'  and SCuri = '/ftec/catalogos/TiposTramitesSQL.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTTT', '/ftec/catalogos/TiposTramitesSQL.cfm',
'P', 0, '20130422 16:45:42.460', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130422 16:45:42.460'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTTT'  and SCuri = '/ftec/catalogos/TiposTramitesSQL.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 50 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTVice'  and SCuri = '/ftec/catalogos/Vicerrectorias-lista.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTVice', '/ftec/catalogos/Vicerrectorias-lista.cfm',
'P', 0, '20130402 16:54:27.647', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130402 16:54:27.647'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTVice'  and SCuri = '/ftec/catalogos/Vicerrectorias-lista.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 51 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTVice'  and SCuri = '/ftec/catalogos/Vicerrectorias.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTVice', '/ftec/catalogos/Vicerrectorias.cfm',
'P', 0, '20130402 16:49:09.963', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130402 16:49:09.963'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTVice'  and SCuri = '/ftec/catalogos/Vicerrectorias.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 52 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTVice'  and SCuri = '/ftec/catalogos/VicerrectoriasSQL.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTVice', '/ftec/catalogos/VicerrectoriasSQL.cfm',
'P', 0, '20130403 16:56:54.463', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130403 16:56:54.463'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTVice'  and SCuri = '/ftec/catalogos/VicerrectoriasSQL.cfm'
end -- if 
commit 
go
print 'SComponentes fila: 53 de 53'
declare @n int 
begin tran
select @n = count(1)
from SComponentes 
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTVice'  and SCuri = '/ftec/Utiles/ConlisVicerrectoria.cfm'if (@n = 0) begin
insert into SComponentes (
SScodigo, SMcodigo, SPcodigo, SCuri,
SCtipo, SCauto, BMfecha, BMUsucodigo)
values (
'FTEC', 'param', 'FTVice', '/ftec/Utiles/ConlisVicerrectoria.cfm',
'P', 0, '20130403 16:36:39.467', 1)
end else begin 
update SComponentes
set SCtipo = 'P'
,  SCauto = 0
,  BMfecha = '20130403 16:36:39.467'
,  BMUsucodigo = 1
where SScodigo = 'FTEC'  and SMcodigo = 'param'  and SPcodigo = 'FTVice'  and SCuri = '/ftec/Utiles/ConlisVicerrectoria.cfm'
end -- if 
commit 
go

print 'Terminado SComponentes'

print 'Actualizar SMenues (update/insert)...'
print 'SMenues fila: 1 de 15'
declare @n int 
begin tran
select @n = count(1)
from SMenues 
where SMNcodigo = 14096if (@n = 0) begin
insert into SMenues (
SScodigo, SMcodigo, SMNcodigo, SMNcodigoPadre,
SMNnivel, SMNpath, SMNtipo, SPcodigo,
SMNtipoMenu, SMNtitulo, SMNexplicativo, SMNorden,
SMNimagenGrande, SMNimagenPequena, SMNenConstruccion, SMNcolumna,
opcionprin, siempreabierto, BMUsucodigo)
values (
'FTEC', 'param', 14096, null,
0, '000', 'M', null,
4, 'Menú Inicial', 'Menu Inicial del Módulo', 0,
null, null, 0, 1,
0, 0, null)
end else begin 
update SMenues
set SScodigo = 'FTEC'
,  SMcodigo = 'param'
,  SMNcodigoPadre = null
,  SMNnivel = 0
,  SMNpath = '000'
,  SMNtipo = 'M'
,  SPcodigo = null
,  SMNtipoMenu = 4
,  SMNtitulo = 'Menú Inicial'
,  SMNexplicativo = 'Menu Inicial del Módulo'
,  SMNorden = 0
,  SMNimagenGrande = null
,  SMNimagenPequena = null
,  SMNenConstruccion = 0
,  SMNcolumna = 1
,  opcionprin = 0
,  siempreabierto = 0
,  BMUsucodigo = null
where SMNcodigo = 14096
end -- if 
commit 
go
print 'SMenues fila: 2 de 15'
declare @n int 
begin tran
select @n = count(1)
from SMenues 
where SMNcodigo = 14097if (@n = 0) begin
insert into SMenues (
SScodigo, SMcodigo, SMNcodigo, SMNcodigoPadre,
SMNnivel, SMNpath, SMNtipo, SPcodigo,
SMNtipoMenu, SMNtitulo, SMNexplicativo, SMNorden,
SMNimagenGrande, SMNimagenPequena, SMNenConstruccion, SMNcolumna,
opcionprin, siempreabierto, BMUsucodigo)
values (
'FTEC', 'param', 14097, 14096,
1, '000|001', 'M', null,
1, 'FundaTec', null, 1,
null, null, 0, 1,
0, 0, null)
end else begin 
update SMenues
set SScodigo = 'FTEC'
,  SMcodigo = 'param'
,  SMNcodigoPadre = 14096
,  SMNnivel = 1
,  SMNpath = '000|001'
,  SMNtipo = 'M'
,  SPcodigo = null
,  SMNtipoMenu = 1
,  SMNtitulo = 'FundaTec'
,  SMNexplicativo = null
,  SMNorden = 1
,  SMNimagenGrande = null
,  SMNimagenPequena = null
,  SMNenConstruccion = 0
,  SMNcolumna = 1
,  opcionprin = 0
,  siempreabierto = 0
,  BMUsucodigo = null
where SMNcodigo = 14097
end -- if 
commit 
go
print 'SMenues fila: 3 de 15'
declare @n int 
begin tran
select @n = count(1)
from SMenues 
where SMNcodigo = 14098if (@n = 0) begin
insert into SMenues (
SScodigo, SMcodigo, SMNcodigo, SMNcodigoPadre,
SMNnivel, SMNpath, SMNtipo, SPcodigo,
SMNtipoMenu, SMNtitulo, SMNexplicativo, SMNorden,
SMNimagenGrande, SMNimagenPequena, SMNenConstruccion, SMNcolumna,
opcionprin, siempreabierto, BMUsucodigo)
values (
'FTEC', 'param', 14098, 14097,
2, '000|001|001', 'P', 'FTTA',
null, null, null, 1,
null, null, 0, 1,
0, 0, null)
end else begin 
update SMenues
set SScodigo = 'FTEC'
,  SMcodigo = 'param'
,  SMNcodigoPadre = 14097
,  SMNnivel = 2
,  SMNpath = '000|001|001'
,  SMNtipo = 'P'
,  SPcodigo = 'FTTA'
,  SMNtipoMenu = null
,  SMNtitulo = null
,  SMNexplicativo = null
,  SMNorden = 1
,  SMNimagenGrande = null
,  SMNimagenPequena = null
,  SMNenConstruccion = 0
,  SMNcolumna = 1
,  opcionprin = 0
,  siempreabierto = 0
,  BMUsucodigo = null
where SMNcodigo = 14098
end -- if 
commit 
go
print 'SMenues fila: 4 de 15'
declare @n int 
begin tran
select @n = count(1)
from SMenues 
where SMNcodigo = 14099if (@n = 0) begin
insert into SMenues (
SScodigo, SMcodigo, SMNcodigo, SMNcodigoPadre,
SMNnivel, SMNpath, SMNtipo, SPcodigo,
SMNtipoMenu, SMNtitulo, SMNexplicativo, SMNorden,
SMNimagenGrande, SMNimagenPequena, SMNenConstruccion, SMNcolumna,
opcionprin, siempreabierto, BMUsucodigo)
values (
'FTEC', 'param', 14099, 14097,
2, '000|001|002', 'P', 'FTCA',
null, null, null, 2,
null, null, 0, 2,
0, 0, null)
end else begin 
update SMenues
set SScodigo = 'FTEC'
,  SMcodigo = 'param'
,  SMNcodigoPadre = 14097
,  SMNnivel = 2
,  SMNpath = '000|001|002'
,  SMNtipo = 'P'
,  SPcodigo = 'FTCA'
,  SMNtipoMenu = null
,  SMNtitulo = null
,  SMNexplicativo = null
,  SMNorden = 2
,  SMNimagenGrande = null
,  SMNimagenPequena = null
,  SMNenConstruccion = 0
,  SMNcolumna = 2
,  opcionprin = 0
,  siempreabierto = 0
,  BMUsucodigo = null
where SMNcodigo = 14099
end -- if 
commit 
go
print 'SMenues fila: 5 de 15'
declare @n int 
begin tran
select @n = count(1)
from SMenues 
where SMNcodigo = 14100if (@n = 0) begin
insert into SMenues (
SScodigo, SMcodigo, SMNcodigo, SMNcodigoPadre,
SMNnivel, SMNpath, SMNtipo, SPcodigo,
SMNtipoMenu, SMNtitulo, SMNexplicativo, SMNorden,
SMNimagenGrande, SMNimagenPequena, SMNenConstruccion, SMNcolumna,
opcionprin, siempreabierto, BMUsucodigo)
values (
'FTEC', 'param', 14100, 14097,
2, '000|001|003', 'P', 'FTVice',
null, null, null, 3,
null, null, 0, 3,
0, 0, null)
end else begin 
update SMenues
set SScodigo = 'FTEC'
,  SMcodigo = 'param'
,  SMNcodigoPadre = 14097
,  SMNnivel = 2
,  SMNpath = '000|001|003'
,  SMNtipo = 'P'
,  SPcodigo = 'FTVice'
,  SMNtipoMenu = null
,  SMNtitulo = null
,  SMNexplicativo = null
,  SMNorden = 3
,  SMNimagenGrande = null
,  SMNimagenPequena = null
,  SMNenConstruccion = 0
,  SMNcolumna = 3
,  opcionprin = 0
,  siempreabierto = 0
,  BMUsucodigo = null
where SMNcodigo = 14100
end -- if 
commit 
go
print 'SMenues fila: 6 de 15'
declare @n int 
begin tran
select @n = count(1)
from SMenues 
where SMNcodigo = 14101if (@n = 0) begin
insert into SMenues (
SScodigo, SMcodigo, SMNcodigo, SMNcodigoPadre,
SMNnivel, SMNpath, SMNtipo, SPcodigo,
SMNtipoMenu, SMNtitulo, SMNexplicativo, SMNorden,
SMNimagenGrande, SMNimagenPequena, SMNenConstruccion, SMNcolumna,
opcionprin, siempreabierto, BMUsucodigo)
values (
'FTEC', 'param', 14101, 14097,
2, '000|001|004', 'P', 'FTTT',
null, null, null, 4,
null, null, 0, 1,
null, null, null)
end else begin 
update SMenues
set SScodigo = 'FTEC'
,  SMcodigo = 'param'
,  SMNcodigoPadre = 14097
,  SMNnivel = 2
,  SMNpath = '000|001|004'
,  SMNtipo = 'P'
,  SPcodigo = 'FTTT'
,  SMNtipoMenu = null
,  SMNtitulo = null
,  SMNexplicativo = null
,  SMNorden = 4
,  SMNimagenGrande = null
,  SMNimagenPequena = null
,  SMNenConstruccion = 0
,  SMNcolumna = 1
,  opcionprin = null
,  siempreabierto = null
,  BMUsucodigo = null
where SMNcodigo = 14101
end -- if 
commit 
go
print 'SMenues fila: 7 de 15'
declare @n int 
begin tran
select @n = count(1)
from SMenues 
where SMNcodigo = 14102if (@n = 0) begin
insert into SMenues (
SScodigo, SMcodigo, SMNcodigo, SMNcodigoPadre,
SMNnivel, SMNpath, SMNtipo, SPcodigo,
SMNtipoMenu, SMNtitulo, SMNexplicativo, SMNorden,
SMNimagenGrande, SMNimagenPequena, SMNenConstruccion, SMNcolumna,
opcionprin, siempreabierto, BMUsucodigo)
values (
'FTEC', 'param', 14102, 14097,
2, '000|001|005', 'P', 'FTET',
null, null, null, 5,
null, null, 0, 1,
null, null, null)
end else begin 
update SMenues
set SScodigo = 'FTEC'
,  SMcodigo = 'param'
,  SMNcodigoPadre = 14097
,  SMNnivel = 2
,  SMNpath = '000|001|005'
,  SMNtipo = 'P'
,  SPcodigo = 'FTET'
,  SMNtipoMenu = null
,  SMNtitulo = null
,  SMNexplicativo = null
,  SMNorden = 5
,  SMNimagenGrande = null
,  SMNimagenPequena = null
,  SMNenConstruccion = 0
,  SMNcolumna = 1
,  opcionprin = null
,  siempreabierto = null
,  BMUsucodigo = null
where SMNcodigo = 14102
end -- if 
commit 
go
print 'SMenues fila: 8 de 15'
declare @n int 
begin tran
select @n = count(1)
from SMenues 
where SMNcodigo = 14103if (@n = 0) begin
insert into SMenues (
SScodigo, SMcodigo, SMNcodigo, SMNcodigoPadre,
SMNnivel, SMNpath, SMNtipo, SPcodigo,
SMNtipoMenu, SMNtitulo, SMNexplicativo, SMNorden,
SMNimagenGrande, SMNimagenPequena, SMNenConstruccion, SMNcolumna,
opcionprin, siempreabierto, BMUsucodigo)
values (
'FTEC', 'param', 14103, 14097,
2, '000|001|006', 'P', 'FTTP',
null, null, null, 6,
null, null, 0, 1,
null, null, null)
end else begin 
update SMenues
set SScodigo = 'FTEC'
,  SMcodigo = 'param'
,  SMNcodigoPadre = 14097
,  SMNnivel = 2
,  SMNpath = '000|001|006'
,  SMNtipo = 'P'
,  SPcodigo = 'FTTP'
,  SMNtipoMenu = null
,  SMNtitulo = null
,  SMNexplicativo = null
,  SMNorden = 6
,  SMNimagenGrande = null
,  SMNimagenPequena = null
,  SMNenConstruccion = 0
,  SMNcolumna = 1
,  opcionprin = null
,  siempreabierto = null
,  BMUsucodigo = null
where SMNcodigo = 14103
end -- if 
commit 
go
print 'SMenues fila: 9 de 15'
declare @n int 
begin tran
select @n = count(1)
from SMenues 
where SMNcodigo = 14104if (@n = 0) begin
insert into SMenues (
SScodigo, SMcodigo, SMNcodigo, SMNcodigoPadre,
SMNnivel, SMNpath, SMNtipo, SPcodigo,
SMNtipoMenu, SMNtitulo, SMNexplicativo, SMNorden,
SMNimagenGrande, SMNimagenPequena, SMNenConstruccion, SMNcolumna,
opcionprin, siempreabierto, BMUsucodigo)
values (
'FTEC', 'param', 14104, 14097,
2, '000|001|007', 'P', 'FTFT',
null, null, null, 7,
null, null, 0, 1,
null, null, null)
end else begin 
update SMenues
set SScodigo = 'FTEC'
,  SMcodigo = 'param'
,  SMNcodigoPadre = 14097
,  SMNnivel = 2
,  SMNpath = '000|001|007'
,  SMNtipo = 'P'
,  SPcodigo = 'FTFT'
,  SMNtipoMenu = null
,  SMNtitulo = null
,  SMNexplicativo = null
,  SMNorden = 7
,  SMNimagenGrande = null
,  SMNimagenPequena = null
,  SMNenConstruccion = 0
,  SMNcolumna = 1
,  opcionprin = null
,  siempreabierto = null
,  BMUsucodigo = null
where SMNcodigo = 14104
end -- if 
commit 
go
print 'SMenues fila: 10 de 15'
declare @n int 
begin tran
select @n = count(1)
from SMenues 
where SMNcodigo = 14105if (@n = 0) begin
insert into SMenues (
SScodigo, SMcodigo, SMNcodigo, SMNcodigoPadre,
SMNnivel, SMNpath, SMNtipo, SPcodigo,
SMNtipoMenu, SMNtitulo, SMNexplicativo, SMNorden,
SMNimagenGrande, SMNimagenPequena, SMNenConstruccion, SMNcolumna,
opcionprin, siempreabierto, BMUsucodigo)
values (
'FTEC', 'param', 14105, 14097,
2, '000|001|008', 'P', 'FTFP',
null, null, null, 8,
null, null, 0, 1,
null, null, null)
end else begin 
update SMenues
set SScodigo = 'FTEC'
,  SMcodigo = 'param'
,  SMNcodigoPadre = 14097
,  SMNnivel = 2
,  SMNpath = '000|001|008'
,  SMNtipo = 'P'
,  SPcodigo = 'FTFP'
,  SMNtipoMenu = null
,  SMNtitulo = null
,  SMNexplicativo = null
,  SMNorden = 8
,  SMNimagenGrande = null
,  SMNimagenPequena = null
,  SMNenConstruccion = 0
,  SMNcolumna = 1
,  opcionprin = null
,  siempreabierto = null
,  BMUsucodigo = null
where SMNcodigo = 14105
end -- if 
commit 
go
print 'SMenues fila: 11 de 15'
declare @n int 
begin tran
select @n = count(1)
from SMenues 
where SMNcodigo = 14106if (@n = 0) begin
insert into SMenues (
SScodigo, SMcodigo, SMNcodigo, SMNcodigoPadre,
SMNnivel, SMNpath, SMNtipo, SPcodigo,
SMNtipoMenu, SMNtitulo, SMNexplicativo, SMNorden,
SMNimagenGrande, SMNimagenPequena, SMNenConstruccion, SMNcolumna,
opcionprin, siempreabierto, BMUsucodigo)
values (
'FTEC', 'param', 14106, 14097,
2, '000|001|009', 'P', 'FTLP',
null, null, null, 9,
null, null, 0, 1,
null, null, null)
end else begin 
update SMenues
set SScodigo = 'FTEC'
,  SMcodigo = 'param'
,  SMNcodigoPadre = 14097
,  SMNnivel = 2
,  SMNpath = '000|001|009'
,  SMNtipo = 'P'
,  SPcodigo = 'FTLP'
,  SMNtipoMenu = null
,  SMNtitulo = null
,  SMNexplicativo = null
,  SMNorden = 9
,  SMNimagenGrande = null
,  SMNimagenPequena = null
,  SMNenConstruccion = 0
,  SMNcolumna = 1
,  opcionprin = null
,  siempreabierto = null
,  BMUsucodigo = null
where SMNcodigo = 14106
end -- if 
commit 
go
print 'SMenues fila: 12 de 15'
declare @n int 
begin tran
select @n = count(1)
from SMenues 
where SMNcodigo = 14107if (@n = 0) begin
insert into SMenues (
SScodigo, SMcodigo, SMNcodigo, SMNcodigoPadre,
SMNnivel, SMNpath, SMNtipo, SPcodigo,
SMNtipoMenu, SMNtitulo, SMNexplicativo, SMNorden,
SMNimagenGrande, SMNimagenPequena, SMNenConstruccion, SMNcolumna,
opcionprin, siempreabierto, BMUsucodigo)
values (
'FTEC', 'param', 14107, 14097,
2, '000|001|010', 'P', 'FTSP',
null, null, null, 10,
null, null, 0, 1,
null, null, null)
end else begin 
update SMenues
set SScodigo = 'FTEC'
,  SMcodigo = 'param'
,  SMNcodigoPadre = 14097
,  SMNnivel = 2
,  SMNpath = '000|001|010'
,  SMNtipo = 'P'
,  SPcodigo = 'FTSP'
,  SMNtipoMenu = null
,  SMNtitulo = null
,  SMNexplicativo = null
,  SMNorden = 10
,  SMNimagenGrande = null
,  SMNimagenPequena = null
,  SMNenConstruccion = 0
,  SMNcolumna = 1
,  opcionprin = null
,  siempreabierto = null
,  BMUsucodigo = null
where SMNcodigo = 14107
end -- if 
commit 
go
print 'SMenues fila: 13 de 15'
declare @n int 
begin tran
select @n = count(1)
from SMenues 
where SMNcodigo = 14108if (@n = 0) begin
insert into SMenues (
SScodigo, SMcodigo, SMNcodigo, SMNcodigoPadre,
SMNnivel, SMNpath, SMNtipo, SPcodigo,
SMNtipoMenu, SMNtitulo, SMNexplicativo, SMNorden,
SMNimagenGrande, SMNimagenPequena, SMNenConstruccion, SMNcolumna,
opcionprin, siempreabierto, BMUsucodigo)
values (
'FTEC', 'param', 14108, 14097,
2, '000|001|011', 'P', 'FTTRP',
null, null, null, 11,
null, null, 0, 1,
null, null, null)
end else begin 
update SMenues
set SScodigo = 'FTEC'
,  SMcodigo = 'param'
,  SMNcodigoPadre = 14097
,  SMNnivel = 2
,  SMNpath = '000|001|011'
,  SMNtipo = 'P'
,  SPcodigo = 'FTTRP'
,  SMNtipoMenu = null
,  SMNtitulo = null
,  SMNexplicativo = null
,  SMNorden = 11
,  SMNimagenGrande = null
,  SMNimagenPequena = null
,  SMNenConstruccion = 0
,  SMNcolumna = 1
,  opcionprin = null
,  siempreabierto = null
,  BMUsucodigo = null
where SMNcodigo = 14108
end -- if 
commit 
go
print 'SMenues fila: 14 de 15'
declare @n int 
begin tran
select @n = count(1)
from SMenues 
where SMNcodigo = 14594if (@n = 0) begin
insert into SMenues (
SScodigo, SMcodigo, SMNcodigo, SMNcodigoPadre,
SMNnivel, SMNpath, SMNtipo, SPcodigo,
SMNtipoMenu, SMNtitulo, SMNexplicativo, SMNorden,
SMNimagenGrande, SMNimagenPequena, SMNenConstruccion, SMNcolumna,
opcionprin, siempreabierto, BMUsucodigo)
values (
'FTEC', 'param', 14594, 14097,
2, '000|001|012', 'P', 'FTTI',
null, null, null, 12,
null, null, 0, 1,
null, null, null)
end else begin 
update SMenues
set SScodigo = 'FTEC'
,  SMcodigo = 'param'
,  SMNcodigoPadre = 14097
,  SMNnivel = 2
,  SMNpath = '000|001|012'
,  SMNtipo = 'P'
,  SPcodigo = 'FTTI'
,  SMNtipoMenu = null
,  SMNtitulo = null
,  SMNexplicativo = null
,  SMNorden = 12
,  SMNimagenGrande = null
,  SMNimagenPequena = null
,  SMNenConstruccion = 0
,  SMNcolumna = 1
,  opcionprin = null
,  siempreabierto = null
,  BMUsucodigo = null
where SMNcodigo = 14594
end -- if 
commit 
go
print 'SMenues fila: 15 de 15'
declare @n int 
begin tran
select @n = count(1)
from SMenues 
where SMNcodigo = 14595if (@n = 0) begin
insert into SMenues (
SScodigo, SMcodigo, SMNcodigo, SMNcodigoPadre,
SMNnivel, SMNpath, SMNtipo, SPcodigo,
SMNtipoMenu, SMNtitulo, SMNexplicativo, SMNorden,
SMNimagenGrande, SMNimagenPequena, SMNenConstruccion, SMNcolumna,
opcionprin, siempreabierto, BMUsucodigo)
values (
'FTEC', 'param', 14595, 14097,
2, '000|001|013', 'P', 'FTIND',
null, null, null, 13,
null, null, 0, 1,
null, null, null)
end else begin 
update SMenues
set SScodigo = 'FTEC'
,  SMcodigo = 'param'
,  SMNcodigoPadre = 14097
,  SMNnivel = 2
,  SMNpath = '000|001|013'
,  SMNtipo = 'P'
,  SPcodigo = 'FTIND'
,  SMNtipoMenu = null
,  SMNtitulo = null
,  SMNexplicativo = null
,  SMNorden = 13
,  SMNimagenGrande = null
,  SMNimagenPequena = null
,  SMNenConstruccion = 0
,  SMNcolumna = 1
,  opcionprin = null
,  siempreabierto = null
,  BMUsucodigo = null
where SMNcodigo = 14595
end -- if 
commit 
go

print 'Terminado SMenues'

print 'Actualizar SProcesoRelacionado (update/insert)...'

print 'Terminado SProcesoRelacionado'

-- Eliminar componentes que no van

print 'Eliminar componentes que no van'

go

    create table TMPDATA_IMPORT (
      SScodigo char(10) not null,
      SMcodigo char(10) not null,
      SPcodigo char(10) not null,
      SCuri varchar(255) not null)
    
go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTCA', '/ftec/catalogos/CostosAdmin.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTCA', '/ftec/catalogos/CostosAdminForm.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTCA', '/ftec/catalogos/CostosAdminSQL.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTCA', '/ftec/Componentes/FTCostosAdmin.cfc')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTET', '/ftec/catalogos/EstadoTramites.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTET', '/ftec/catalogos/EstadoTramitesForm.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTET', '/ftec/catalogos/EstadoTramitesSQL.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTFP', '/ftec/catalogos/FormaPago.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTFP', '/ftec/catalogos/FormaPagoForm.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTFP', '/ftec/catalogos/FormaPagoSQL.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTFT', '/ftec/catalogos/FlujoTramites.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTFT', '/ftec/catalogos/FlujoTramitesForm.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTFT', '/ftec/catalogos/FlujoTramitesSQL.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTIND', '/ftec/catalogos/GenerarReporte.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTIND', '/ftec/catalogos/Reporte.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTIND', '/ftec/catalogos/Reporteimpreso.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTIND', '/ftec/catalogos/SaldoCuentaCont.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTIND', '/ftec/catalogos/SaldoCuentaContform.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTLP', '/ftec/catalogos/LugarPago.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTLP', '/ftec/catalogos/LugarPagoForm.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTLP', '/ftec/catalogos/LugarPagoSQL.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTSP', '/ftec/catalogos/Solicitudes-lista.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTSP', '/ftec/catalogos/Solicitudes-listaForm.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTSP', '/ftec/catalogos/Solicitudes-listaSql.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTSP', '/ftec/catalogos/SolicitudPago-Form.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTSP', '/ftec/catalogos/SolicitudPago-Sql.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTSP', '/ftec/catalogos/SolicitudPago.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTSP', '/ftec/Utiles/ConlisVicerrectoria.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTA', '/ftec/catalogos/TiposAutorizadores.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTA', '/ftec/catalogos/TiposAutorizadoresForm.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTA', '/ftec/catalogos/TiposAutorizadoresSql.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTA', '/ftec/Componentes/FTTipoAutorizador.cfc')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTI', '/ftec/catalogos/Indicadores.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTI', '/ftec/catalogos/IndicadoresForm.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTI', '/ftec/catalogos/IndicadoresSQL.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTI', '/ftec/catalogos/IndicadoresTabs.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTI', '/ftec/catalogos/IndiComentarioSQL.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTI', '/ftec/catalogos/IndiCuentas.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTI', '/ftec/catalogos/IndiCuentasSQL.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTP', '/ftec/catalogos/TiposProcesos.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTP', '/ftec/catalogos/TiposProcesosForm.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTP', '/ftec/catalogos/TiposProcesosSQL.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTRP', '/ftec/catalogos/SolicitudPago-Sql.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTRP', '/ftec/catalogos/SolicitudPago.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTRP', '/ftec/catalogos/Tramites-lista.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTRP', '/ftec/catalogos/Tramites-listaSql.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTT', '/ftec/catalogos/TiposTramites.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTT', '/ftec/catalogos/TiposTramitesForm.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTT', '/ftec/catalogos/TiposTramitesSQL.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTVice', '/ftec/catalogos/Vicerrectorias-lista.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTVice', '/ftec/catalogos/Vicerrectorias.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTVice', '/ftec/catalogos/VicerrectoriasSQL.cfm')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTVice', '/ftec/Utiles/ConlisVicerrectoria.cfm')

go

delete from SComponentes
where 1=1
		and SScodigo = 'FTEC'
		and SMcodigo = 'param'
  and not exists (select * from TMPDATA_IMPORT
	where TMPDATA_IMPORT.SScodigo = rtrim(SComponentes.SScodigo)
	  and TMPDATA_IMPORT.SMcodigo = rtrim(SComponentes.SMcodigo)
	  and TMPDATA_IMPORT.SPcodigo = rtrim(SComponentes.SPcodigo)
	  and TMPDATA_IMPORT.SCuri = rtrim(SComponentes.SCuri))

go

print 'SComponentes eliminados'

drop table TMPDATA_IMPORT

go


-- Eliminar menues que no van

print 'Eliminar menues que no van'

go

create table TMPDATA_IMPORT (
  SMNcodigo numeric(18) not null)

go

insert INTO TMPDATA_IMPORT values (14096)

go

insert INTO TMPDATA_IMPORT values (14097)

go

insert INTO TMPDATA_IMPORT values (14098)

go

insert INTO TMPDATA_IMPORT values (14099)

go

insert INTO TMPDATA_IMPORT values (14100)

go

insert INTO TMPDATA_IMPORT values (14101)

go

insert INTO TMPDATA_IMPORT values (14102)

go

insert INTO TMPDATA_IMPORT values (14103)

go

insert INTO TMPDATA_IMPORT values (14104)

go

insert INTO TMPDATA_IMPORT values (14105)

go

insert INTO TMPDATA_IMPORT values (14106)

go

insert INTO TMPDATA_IMPORT values (14107)

go

insert INTO TMPDATA_IMPORT values (14108)

go

insert INTO TMPDATA_IMPORT values (14594)

go

insert INTO TMPDATA_IMPORT values (14595)

go

delete from SMenues
where 1=1
  and SScodigo = 'FTEC'
  and SMcodigo = 'param'
  and not exists (select * from TMPDATA_IMPORT
	where TMPDATA_IMPORT.SMNcodigo = SMenues.SMNcodigo)

go

print 'SMenues eliminados'

drop table TMPDATA_IMPORT

go


-- Eliminar procesos relacionados que no van

print 'Eliminar procesos relacionados que no van'

go

    create table TMPDATA_IMPORT (
      SSorigen char(10) not null,
      SMorigen char(10) not null,
      SPorigen char(10) not null,
      SSdestino char(10) not null,
      SMdestino char(10) not null,
      SPdestino char(10) not null
    )
    
go

delete from SProcesoRelacionado
where 1=1
  and ((SSorigen = 'FTEC' and SMorigen = 'param')
   or (SSdestino = 'FTEC' and SMdestino = 'param'))
  and not exists (select * from TMPDATA_IMPORT
	where TMPDATA_IMPORT.SSorigen = rtrim(SProcesoRelacionado.SSorigen)
	  and TMPDATA_IMPORT.SMorigen = rtrim(SProcesoRelacionado.SMorigen)
	  and TMPDATA_IMPORT.SPorigen = rtrim(SProcesoRelacionado.SPorigen)
	  and TMPDATA_IMPORT.SSdestino = rtrim(SProcesoRelacionado.SSdestino)
	  and TMPDATA_IMPORT.SMdestino = rtrim(SProcesoRelacionado.SMdestino)
	  and TMPDATA_IMPORT.SPdestino = rtrim(SProcesoRelacionado.SPdestino)
  )

go

print 'SProcesoRelacionado eliminados'

drop table TMPDATA_IMPORT

go


-- Eliminar procesos rol que no van

print 'Eliminar procesos que no van'

go

    create table TMPDATA_IMPORT (
      SScodigo char(10) not null,
      SRcodigo char(10) not null,
      SMcodigo char(10) not null,
      SPcodigo char(10) not null)
    
go

    create table TMPDATA_IMPORTROL (
      SScodigo char(10) not null,
      SRcodigo char(10) not null)
    
go

insert INTO TMPDATA_IMPORT values ('FTEC', 'FTEC-Admin', 
	'param', 'FTCA')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'FTEC-Admin', 
	'param', 'FTET')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'FTEC-Admin', 
	'param', 'FTFP')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'FTEC-Admin', 
	'param', 'FTFT')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'FTEC-Admin', 
	'param', 'FTIND')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'FTEC-Admin', 
	'param', 'FTLP')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'FTEC-Admin', 
	'param', 'FTSP')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'FTEC-Admin', 
	'param', 'FTTA')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'FTEC-Admin', 
	'param', 'FTTI')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'FTEC-Admin', 
	'param', 'FTTP')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'FTEC-Admin', 
	'param', 'FTTRP')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'FTEC-Admin', 
	'param', 'FTTT')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'FTEC-Admin', 
	'param', 'FTVice')

go

insert INTO TMPDATA_IMPORTROL values ('FTEC', 'FTEC-Admin')

go

delete from SProcesosRol
where 1=1
  and SScodigo = 'FTEC'
  and SMcodigo = 'param'
  and not exists (select * from TMPDATA_IMPORT
	where TMPDATA_IMPORT.SScodigo = rtrim(SProcesosRol.SScodigo)
	  and TMPDATA_IMPORT.SRcodigo = rtrim(SProcesosRol.SRcodigo)
	  and TMPDATA_IMPORT.SMcodigo = rtrim(SProcesosRol.SMcodigo)
	  and TMPDATA_IMPORT.SPcodigo = rtrim(SProcesosRol.SPcodigo))
  and exists (select * from TMPDATA_IMPORTROL
	where TMPDATA_IMPORTROL.SScodigo = rtrim(SProcesosRol.SScodigo)
	  and TMPDATA_IMPORTROL.SRcodigo = rtrim(SProcesosRol.SRcodigo))

go

print 'SProcesosRol eliminados'

delete from UsuarioProceso
where 1=1
  and SScodigo = 'FTEC'
  and SMcodigo = 'param'
  and not exists (select * from TMPDATA_IMPORT
	where TMPDATA_IMPORT.SScodigo = rtrim(UsuarioProceso.SScodigo)
	  and TMPDATA_IMPORT.SMcodigo = rtrim(UsuarioProceso.SMcodigo)
	  and TMPDATA_IMPORT.SPcodigo = rtrim(UsuarioProceso.SPcodigo))

go

print 'UsuarioProceso eliminados'

delete from SShortcut
where 1=1
  and SScodigo = 'FTEC'
  and SMcodigo = 'param'
  and not exists (select * from TMPDATA_IMPORT
	where TMPDATA_IMPORT.SScodigo = rtrim(SShortcut.SScodigo)
	  and TMPDATA_IMPORT.SMcodigo = rtrim(SShortcut.SMcodigo)
	  and TMPDATA_IMPORT.SPcodigo = rtrim(SShortcut.SPcodigo))

go

print 'SShortcut eliminados'

delete from SRelacionado
where id_padre in (
select id_item
from SMenuItem
where SScodigo is not null
  and SMcodigo is not null
  and SPcodigo is not null
  and SScodigo = 'FTEC'
  and SMcodigo = 'param'
  and not exists (select * from TMPDATA_IMPORT
	where TMPDATA_IMPORT.SScodigo = rtrim(SMenuItem.SScodigo)
	  and TMPDATA_IMPORT.SMcodigo = rtrim(SMenuItem.SMcodigo)
	  and TMPDATA_IMPORT.SPcodigo = rtrim(SMenuItem.SPcodigo)))

go

print 'SRelacionado/id_padre eliminados'

delete from SRelacionado
where id_hijo in (
select id_item
from SMenuItem
where SScodigo is not null
  and SMcodigo is not null
  and SPcodigo is not null
  and SScodigo = 'FTEC'
  and SMcodigo = 'param'
  and not exists (select * from TMPDATA_IMPORT
	where TMPDATA_IMPORT.SScodigo = rtrim(SMenuItem.SScodigo)
	  and TMPDATA_IMPORT.SMcodigo = rtrim(SMenuItem.SMcodigo)
	  and TMPDATA_IMPORT.SPcodigo = rtrim(SMenuItem.SPcodigo)))

go

print 'SRelacionado/id_hijo eliminados'

delete from SMenuItem
where SScodigo is not null
  and SMcodigo is not null
  and SPcodigo is not null
  and SScodigo = 'FTEC'
  and SMcodigo = 'param'
  and not exists (select * from TMPDATA_IMPORT
	where TMPDATA_IMPORT.SScodigo = rtrim(SMenuItem.SScodigo)
	  and TMPDATA_IMPORT.SMcodigo = rtrim(SMenuItem.SMcodigo)
	  and TMPDATA_IMPORT.SPcodigo = rtrim(SMenuItem.SPcodigo))

go

print 'SMenuItem eliminados'

drop table TMPDATA_IMPORT

go

    create table TMPDATA_IMPORT (
      SScodigo char(10) not null,
      SMcodigo char(10) not null,
      SPcodigo char(10) not null)
    
go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTCA')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTET')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTFP')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTFT')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTIND')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTLP')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTSP')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTA')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTI')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTP')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTRP')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTTT')

go

insert INTO TMPDATA_IMPORT values ('FTEC', 'param', 'FTVice')

go

delete from SProcesos
where 1=1
  and SScodigo = 'FTEC'
  and SMcodigo = 'param'
  and not exists (select * from TMPDATA_IMPORT
	where TMPDATA_IMPORT.SScodigo = rtrim(SProcesos.SScodigo)
	  and TMPDATA_IMPORT.SMcodigo = rtrim(SProcesos.SMcodigo)
	  and TMPDATA_IMPORT.SPcodigo = rtrim(SProcesos.SPcodigo))

go

print 'SProcesos eliminados'

drop table TMPDATA_IMPORT

go

drop table TMPDATA_IMPORTROL

go

print 'Regenerando vUsuarioProcesos'

go


delete from vUsuarioProcesos
where 1=1
  and SScodigo = 'FTEC'
  and SMcodigo = 'param' 
go

insert INTO vUsuarioProcesos (Usucodigo, Ecodigo, SScodigo, SMcodigo, SPcodigo)
select Usucodigo, Ecodigo, SScodigo, SMcodigo, SPcodigo
from vUsuarioProcesosCalc
where 1=1
  and SScodigo = 'FTEC'
  and SMcodigo = 'param' 
go

while @@trancount > 0 begin
	select 'cerrando transaccion ', @@trancount 
	commit tran
end

go

print 'Importacion finalizada. A continuacion la cuenta de los registros'

go

select 'Politicas            ' as tipo, count(1) as real, 62 as esperado
from PLista

go


select 'Sistemas             ' as tipo, count(1) as real, 1 as esperado
from SSistemas
where SScodigo = 'FTEC' 
go


select 'Modulos              ' as tipo, count(1) as real, 1 as esperado
from SModulos
where SScodigo = 'FTEC'
and SMcodigo = 'param' 
go


select 'Procesos             ' as tipo, count(1) as real, 13 as esperado
from SProcesos
where SScodigo = 'FTEC'
and SMcodigo = 'param' 
go


select 'Componentes          ' as tipo, count(1) as real, 53 as esperado
from SComponentes
where SScodigo = 'FTEC'
and SMcodigo = 'param' 
go


select 'Roles                ' as tipo, count(1) as real, 1 as esperado
from SRoles
where SScodigo = 'FTEC' 
go


select 'ProcesosRol          ' as tipo, count(1) as real, 13 as esperado
from SProcesosRol
where SScodigo = 'FTEC'
and SMcodigo = 'param' 
go


select 'Menues               ' as tipo, count(1) as real, 15 as esperado
from SMenues
where SScodigo = 'FTEC'
and SMcodigo = 'param' 
go


select 'SProcesoRelacionado  ' as tipo, count(1) as real, 0 as esperado
from SProcesoRelacionado 
where (SSorigen = 'FTEC' and SMorigen = 'param')
   or (SSdestino = 'FTEC' and SMdestino = 'param')

go


-- Fin de archivo
