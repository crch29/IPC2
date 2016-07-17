create table Bodega(
cod_bodega int identity primary key,
cod_sucursal int,
constraint fkbsucursal foreign key (cod_sucursal) references Sucursal(cod_sucursal)
);

alter table Registro
add fecha_registro datetime;

select * from Registro;



insert into Sucursal(nombre,direccion,telefono,capacidadmaxemp,pais) values('GUATEMALA','ZONA 9','32324532',21,'GUATEMALA');

create table Detalle(
cod_detalle int identity,
cod_factura int,
cod_paquete int,
total money
constraint fkdfactura foreign key (cod_factura) references Factura(cod_factura),
constraint fkdpaquete foreign key (cod_paquete) references Paquete(cod_paquete)
);