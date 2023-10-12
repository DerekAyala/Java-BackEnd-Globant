select * from departamentos;
select * from empleados;
select nombre_depto from departamentos;
select nombre, sal_emp from empleados;
select comision_emp from empleados;
select * from empleados where cargo_emp = "Secretaria";
select * from empleados where cargo_emp = "Vendedor" order by nombre;
select nombre, cargo_emp from empleados order by sal_emp;
select e.nombre, e.cargo_emp from empleados e, departamentos d where e.id_depto = d.id_depto and ciudad = "CIUDAD REAL" and cargo_emp like "Jefe%";
select nombre Nombre, cargo_emp Cargo from empleados;
select sal_emp Salario, comision_emp Comisiones from empleados where id_depto = 2000 order by comision_emp;
SELECT nombre AS Nombre, comision_emp + sal_emp + 500 AS Salario FROM empleados where id_depto = 3000 ORDER BY nombre;
select nombre from empleados where nombre like "J%";
SELECT nombre Nombre,sal_emp Salario, comision_emp Comisiones, comision_emp + sal_emp AS SalarioTotal FROM empleados where comision_emp > 1000;
SELECT nombre Nombre,sal_emp Salario, comision_emp Comisiones, comision_emp + sal_emp AS SalarioTotal FROM empleados where comision_emp = 0;
select * from empleados where sal_emp < comision_emp;
select * from empleados where comision_emp <= (sal_emp * 0.30);
select * from empleados where nombre not like "%ma%";
select * from departamentos where nombre_depto = "VENTAS" or nombre_depto = "INVESTIGACION" or nombre_depto = "MANTENIMIENTO";
select * from departamentos where not nombre_depto = "VENTAS" or not nombre_depto = "INVESTIGACION" or not nombre_depto = "MANTENIMIENTO";
select max(sal_emp) from empleados;
select nombre from empleados order by nombre desc limit 1;
select max(sal_emp) SalarioMayor, min(sal_emp) SalarioMenor, max(sal_emp) - min(sal_emp) Diferencia from empleados;
select d.nombre_depto, avg(sal_emp) from empleados e, departamentos d where e.id_depto = d.id_depto group by d.nombre_depto;
SELECT d.id_depto, d.nombre_depto, COUNT(e.id_emp) AS num_empleados FROM departamentos d JOIN empleados e ON d.id_depto = e.id_depto GROUP BY d.id_depto, d.nombre_depto HAVING COUNT(e.id_emp) >= 3;
SELECT d.id_depto, d.nombre_depto FROM departamentos d LEFT JOIN empleados e ON d.id_depto = e.id_depto WHERE e.id_emp IS NULL;

SELECT e.id_emp, e.nombre, e.sal_emp, e.id_depto FROM empleados e WHERE e.sal_emp >= (SELECT AVG(sal_emp) FROM empleados) ORDER BY e.id_depto;




