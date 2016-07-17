
select * from Casilla;
select * from Departamento;
select * from Director;
select * from Empleado;
select * from Impuesto;
select * from Lote;
select * from Registropaquete;
select * from Bodega;
select * from Paquete;
select * from Sucursal;
select * from Registro;
select * from Usuario;
select * from Factura;
select * from impuestos;
select * from Infopaquetes;
select * from paquetes;
select * from Perfilcliente;

update Lote set estatus_lote='inactivo',cod_bodega=8 where cod_lote=9;


(select cod_lote from Lote inner join Bodega  on Lote.cod_bodega=Bodega.cod_bodega);


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

select * from inventario;

SELECT * from Paquete, Casilla.cod_casilla AS Casilla FROM Casilla INNER JOIN Cliente ON Casilla.cod_cliente = Cliente.cod_cliente INNER JOIN Paquete ON Casilla.cod_casilla = Paquete.cod_casilla INNER JOIN Bodega INNER JOIN Lote ON Bodega.cod_bodega = Lote.cod_bodega ON Paquete.cod_lote = Lote.cod_lote WHERE (Cliente.cod_cliente = @casilla)

create table Detalle(
cod_detalle int identity,
cod_factura int,
cod_paquete int,
total money
constraint fkdfactura foreign key (cod_factura) references Factura(cod_factura),
constraint fkdpaquete foreign key (cod_paquete) references Paquete(cod_paquete)
);