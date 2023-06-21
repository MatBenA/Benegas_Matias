use ejercicio_5;

-- a)
select apellido from ejercicio_5.empleados;

-- b)
select distinct apellido from ejercicio_5.empleados;

-- c)
select * from ejercicio_5.empleados;

-- d)
select nombre, apellido from ejercicio_5.empleados;

-- e)
select cuil_cuit from ejercicio_5.empleados;

-- f)
select concat(nombre, " ",apellido) as "nombre completo" from ejercicio_5.empleados;

-- g)
select upper(concat(nombre, " ", apellido)) as "completo mayus" from ejercicio_5.empleados;

-- h)
select lower(concat(nombre, " ", apellido)) as "completo minus" from ejercicio_5.empleados;

-- i)
select nombre, presupuesto from ejercicio_5.departamentos order by presupuesto asc;

-- j)
select nombre from ejercicio_5.departamentos order by nombre asc;

-- k)
select nombre from ejercicio_5.departamentos order by nombre desc;

-- l)
select apellido, nombre from ejercicio_5.empleados order by apellido, nombre asc;

-- m)
select nombre, presupuesto from ejercicio_5.departamentos order by presupuesto desc limit 3;

-- n)
select nombre, presupuesto from ejercicio_5.departamentos order by presupuesto asc limit 3;

-- o)
select nombre, presupuesto from ejercicio_5.departamentos where presupuesto >= 150000;

-- p)
select nombre, presupuesto from ejercicio_5.departamentos where presupuesto >= 100000 and presupuesto <= 200000;

-- q)
select nombre, presupuesto from ejercicio_5.departamentos where presupuesto < 100000 or presupuesto > 200000;

-- r)
select nombre from ejercicio_5.departamentos where presupuesto between 100000 and 200000;

-- s)
select empleados.nombre, departamentos.* from empleados inner join departamentos on empleados.departamento=departamentos.departamento_id;

-- t)
select empleados.nombre, departamentos.nombre from empleados inner join departamentos on empleados.departamento=departamentos.departamento_id order by departamentos.nombre, empleados.nombre asc;

-- u)
select departamento_id, nombre from departamentos where departamento_id in (select departamento from empleados);

-- v)
select nombre from departamentos where departamento_id in (select departamento from empleados where cuil_cuit = "27-38382980-3");

-- w)
select nombre from departamentos where departamento_id in (select departamento from empleados where nombre = "Pepe" and apellido = "Ruiz");

-- x)
select * from empleados where departamento in (select departamento_id from departamentos where nombre = "I+D") order by nombre, apellido;

-- y)
select * from empleados where departamento in (select departamento_id from departamentos where nombre in ("Sistemas", "Contabilidad", "I+D")) order by nombre, apellido;

-- z)
select nombre, apellido from empleados where departamento in (select departamento_id from departamentos where presupuesto not between 100000 and 200000);


