select * from fabricante;

select * from producto;
/* order by */
select * from fabricante order by nombre;

select f.nombre, p.nombre, p.precio 
from fabricante f, producto p 
where f.codigo = p.codigo_fabricante 
order by f.nombre, p.nombre;

/* group by */

select f.nombre
from fabricante f, producto p 
where f.codigo = p.codigo_fabricante 
group by f.nombre;

select f.nacionalidad, f.nombre
from fabricante f, producto p 
where f.codigo = p.codigo_fabricante 
group by f.nombre;

select f.nombre, count(*) 
from fabricante f, producto p 
where f.codigo = p.codigo_fabricante 
group by f.nombre;

/* having */

select f.nombre, count(*) 
from fabricante f, producto p 
where f.codigo = p.codigo_fabricante 
group by f.nombre
having count(*) < 2;




