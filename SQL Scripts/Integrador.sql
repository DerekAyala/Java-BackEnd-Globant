select * from  equipos;
select * from  estadisticas;
select * from  jugadores;
select * from  partidos;
/* CANDADO A */
select count(*) from estadisticas where Asistencias_por_partido = (select max(Asistencias_por_partido) from estadisticas);
select sum(peso) from equipos e, jugadores j where j.Nombre_equipo = e.Nombre and e.Conferencia = "East" and j.Posicion like "%C%";
/* CANDADO B*/
select count(*) from estadisticas where Asistencias_por_partido > (SELECT COUNT(*) FROM jugadores WHERE Nombre_equipo = 'Heat');
SELECT count(*) FROM partidos WHERE temporada = '98/99';
/* CANDADO C*/
select count(*) from jugadores j, equipos e where j.Nombre_equipo = e.Nombre and j.Procedencia = "Michigan" and e.Conferencia = "West";
select round(avg(e.Puntos_por_partido) + count(e.Asistencias_por_partido) + sum(e.Tapones_por_partido)) from jugadores j, equipos eq, estadisticas e where j.Nombre_equipo = eq.Nombre and j.codigo = e.jugador and eq.Division = "Central";
/* CANDADO D*/
select round(e.Tapones_por_partido) from  jugadores j, estadisticas e where j.codigo = e.jugador and e.temporada = "00/01" and j.nombre = "Corey Maggette";
select floor(sum(Puntos_por_partido)) from jugadores j, estadisticas e where j.codigo = e.jugador and j.Procedencia = "Argentina";