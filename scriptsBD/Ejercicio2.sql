select nombre from producto;
select nombre, precio from producto;
select * from producto;
select nombre, round(precio) from producto;
select p.codigo_fabricante from producto p, fabricante f where p.codigo_fabricante = f.codigo;
select distinct p.codigo_fabricante from producto p, fabricante f where p.codigo_fabricante = f.codigo;
select nombre from fabricante order by nombre;
select nombre from producto order by nombre asc, precio desc;
select * from fabricante limit 5;
select nombre, precio from producto order by precio asc limit 1;
select nombre, precio from producto order by precio desc limit 1;
select nombre, precio from producto where precio <= 120;
select nombre, precio from producto where precio between 60 and 200;
select * from producto where codigo_fabricante in (1,3,5);
select * from producto where nombre like "%Portatil%";
/* multi tabla*/
select p.codigo, p.nombre, p.codigo_fabricante, f.nombre from producto p, fabricante f where p.codigo_fabricante = f.codigo;
select p.nombre, p.precio, f.nombre from producto p, fabricante f where p.codigo_fabricante = f.codigo order by f.nombre;
select p.nombre, p.precio, f.nombre from producto p, fabricante f where p.codigo_fabricante = f.codigo order by p.precio limit 1;
select p.nombre, p.precio, f.nombre from producto p, fabricante f where p.codigo_fabricante = f.codigo and f.nombre = "Lenovo";
select p.nombre, p.precio, f.nombre from producto p, fabricante f where p.codigo_fabricante = f.codigo and f.nombre = "Crucial" and p.precio > 200;
select p.nombre, p.precio, f.nombre from producto p, fabricante f where p.codigo_fabricante = f.codigo and f.nombre in("Asus","Hewlett-Packard");
select p.nombre, p.precio, f.nombre from producto p, fabricante f where p.codigo_fabricante = f.codigo and p.precio >= 180 order by p.precio desc, p.nombre asc;
/* left join y right join */
select * from producto p right join fabricante f on p.codigo_fabricante = f.codigo;
select * from producto p right join fabricante f on p.codigo_fabricante = f.codigo;

