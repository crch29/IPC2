create trigger dis_insert_cliente
on Cliente
for insert
as
declare @var int
select @var=cod_cliente from inserted
insert into Casilla(cod_cliente) values(@var);

create trigger dis_delete_cliente
on Cliente
for delete
as
declare @var int
select @var=cod_cliente from deleted
delete from Casilla where Casilla.cod_cliente=@var;

create trigger dis_insert_Registropaquete
on Registropaquete
instead of insert
as
declare @peso int
declare @categoria varchar(30)
declare @casilla int
declare @precio money
declare @cod_lote int
select @categoria=categoria from inserted
select @peso=peso from inserted
select @casilla=cod_casilla from inserted
select @precio=precio from inserted
select @cod_lote= cod_lote from inserted
insert into Paquete(peso,precio,estatus,categoria,cod_lote,cod_casilla) values(@peso,@precio,'A',@categoria,@cod_lote,@casilla);
 
 create trigger dis_insertar_Paquete 
 on Paquete
for insert
 as
  declare @casilla int
  declare @codpaquete int
  select @casilla=cod_casilla from inserted
  select @codpaquete=cod_paquete from inserted
  insert into Registro(cod_casilla,cod_paquete,fecha_registro) values(@casilla,@codpaquete,getdate());
  
 create trigger dis_sucursal
 on Sucursal
 for insert
 as
 declare @sucursal int
 select @sucursal=cod_sucursal from inserted
 insert into Bodega(cod_sucursal) values(@sucursal)
 insert into Departamento(nombre,cod_sucursal) values('SAC',@sucursal)
 insert into Departamento(nombre,cod_sucursal) values('REGISTRO',@sucursal);
 
 create trigger dis_bodega
 on Bodega
 for insert
 as 
 declare @sucursal int
 select @sucursal=cod_sucursal from inserted
 insert into Departamento(nombre,cod_sucursal) values('BODEGA',@sucursal);
 
 create trigger dis_elim_sucursal
 on Sucursal
 for delete
 as
 declare @sucursal int
 select @sucursal= cod_sucursal from deleted
 delete from Bodega where cod_sucursal=@sucursal;
 
 create trigger dis_elim_bodega
 on Bodega
 for delete 
 as
 declare @sucursal int
 select @sucursal=cod_sucursal from deleted
 delete Departamento where cod_sucursal=@sucursal;
 
 create trigger dis_impuestos
on impuestos
instead of insert
as
declare @categoria varchar(30)
declare @porcentaje decimal(3,2)
select @categoria=categoria from inserted
select @porcentaje=porcentaje from inserted
insert into Impuesto(categoria,porcentaje) values(@categoria,@porcentaje);

create trigger dis_insertar_Pa
 on paquetes
instead of insert,update
 as
 declare @casilla int
 declare @paquete int
 select @casilla=cod_casilla from inserted
 select @paquete=cod_paquete from Paquete
 insert into Registro(cod_casilla,cod_paquete) values(@casilla,@paquete);

create trigger dis_Lote
on Lote
for insert
as
begin
declare @cod_bodega int
declare @fecha datetime
select @cod_bodega=cod_bodega from inserted
select @fecha=fecha from inserted
update Lote set estatus_lote='inactivo' where cod_bodega=@cod_bodega and fecha<@fecha 
end
   
  
 