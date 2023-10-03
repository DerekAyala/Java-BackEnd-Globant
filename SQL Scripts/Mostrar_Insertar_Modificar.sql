select * from Fabricante;

insert into fabricante(codigo,nombre) values (10,'HP');
insert into fabricante(codigo,nombre) values (11,'LG');

update Fabricante set nombre = "Hp" where codigo = 10;

/* Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.
