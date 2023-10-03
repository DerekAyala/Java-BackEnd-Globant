select * from fabricante;

select * from producto;

select * from producto p 
Inner Join fabricante f on p.codigo_fabricante = f.codigo;

select * from producto p 
left outer Join fabricante f on p.codigo_fabricante = f.codigo;

select * from producto p 
right outer Join fabricante f on p.codigo_fabricante = f.codigo;

select * from producto p where exists (select f.codigo from fabricante f where f.codigo = p.codigo_fabricante);

select * from producto p where not exists (select f.codigo from fabricante f where f.codigo = p.codigo_fabricante);

select * from producto p
cross join fabricante f;

