SELECT * FROM tienda.fabricante;

select * from fabricante where codigo % 2 != 0;

select * from fabricante where nombre = "Asus";

select * from fabricante where nacionalidad = "China" or nacionalidad = "Corea del sur";

select count(*) from fabricante;

select count(*) from fabricante where nacionalidad = "China" or nacionalidad = "Corea del sur";

select * from fabricante where codigo in(2,5,7);

select * from fabricante where nombre like "%su%";

select * from fabricante where nombre like "Sa%";

select * from fabricante where nombre like "%us";

select * from fabricante where codigo between 2 and 7;