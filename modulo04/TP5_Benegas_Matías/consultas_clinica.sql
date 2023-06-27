USE clinica;

-- a)
INSERT INTO paciente (nss, nombre, apellido, domicilio, codigo_postal, nro_historial_clinico) 
VALUES (22558, "Antonio", "Magallanes", "Dos Pindo 260", 3640, 1932);

-- b)
UPDATE paciente set telefono = "3745-589174" 
where nro_historial_clinico = 1932;

-- c)
SELECT CONCAT(apellido, ", ", nombre) as paciente, observaciones as observacion_registrada 
FROM paciente 
WHERE NOT ISNULL(observaciones);

-- d)
SELECT CONCAT(p.apellido, ", ", p.nombre) as "nombre paciente", m.especialidad 
FROM paciente as p 
INNER JOIN ingreso as i ON p.nro_historial_clinico = i.nro_historial_paciente
INNER JOIN medico as m ON m.matricula = i.matricula_medico;

-- e)
-- este codigo desabilita el modo seguro, si no estuviera, la workbench no permitiría que se ejecute
SET SQL_SAFE_UPDATES = 0;

DELETE m FROM medico m
LEFT JOIN ingreso i ON m.matricula = i.matricula_medico
WHERE ISNULL(i.matricula_medico);

SET SQL_SAFE_UPDATES = 1;

-- f) 
SELECT nro_cama, count(nro_cama) cant_usos 
FROM ingreso 
GROUP BY nro_cama 
ORDER BY cant_usos DESC;

-- g)
SELECT p.apellido, p.nombre, count(nro_historial_paciente) cant_ingresos 
FROM paciente p INNER JOIN ingreso i 
ON p.nro_historial_clinico = i.nro_historial_paciente
GROUP BY p.nro_historial_clinico 
HAVING cant_ingresos >= 4;