-- Ejercicio 1
SELECT * FROM usuarios_lenguajes;

-- Ejercicio 2
SELECT COUNT(*) FROM usuarios_lenguajes;

-- Ejercicio 3
SELECT * FROM usuarios_lenguajes WHERE edad > 30;

-- Ejercicio 4
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje = 'JavaScript';

-- Ejercicio 5
SELECT * FROM usuarios_lenguajes WHERE edad = 28;

-- Ejercicio 6
SELECT * FROM usuarios_lenguajes WHERE email = 'juan.gomez@example.com';

-- Ejercicio 7
SELECT * FROM usuarios_lenguajes WHERE lenguaje = 'Java' AND edad < 25;

-- Ejercicio 8
SELECT COUNT(DISTINCT edad) FROM usuarios_lenguajes WHERE lenguaje = 'Java';

-- Ejercicio 9
SELECT * FROM usuarios_lenguajes WHERE lenguaje IS NULL;

-- Ejercicio 10
SELECT nombre, edad FROM usuarios_lenguajes WHERE edad = (SELECT MIN(edad) FROM usuarios_lenguajes);

-- Ejercicio 11
SELECT nombre, edad FROM usuarios_lenguajes ORDER BY edad DESC;

-- Ejercicio 12
SELECT COUNT(*) FROM usuarios_lenguajes WHERE edad > 28;

-- Ejercicio 13
SELECT * FROM usuarios_lenguajes WHERE apellido LIKE '%a%';

-- Ejercicio 14
SELECT lenguaje, COUNT(*) as count FROM usuarios_lenguajes WHERE edad < 30 GROUP BY lenguaje ORDER BY count DESC LIMIT 1;

-- Ejercicio 15
SELECT * FROM usuarios_lenguajes WHERE edad > 25 AND lenguaje = 'TypeScript';

-- Ejercicio 16
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje = 'Python';

-- Ejercicio 17
SELECT * FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL ORDER BY nombre;

-- Ejercicio 18
SELECT * FROM usuarios_lenguajes WHERE email LIKE '%example%';

-- Ejercicio 19
SELECT * FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL AND edad BETWEEN 25 AND 35;

-- Ejercicio 20
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje = 'CSS' AND edad < 30;

-- Ejercicio 21
SELECT nombre, COUNT(lenguaje) as cantidad_lenguajes FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL GROUP BY nombre;

-- Ejercicio 22
SELECT lenguaje FROM usuarios_lenguajes ORDER BY LENGTH(lenguaje) DESC LIMIT 1;

-- Ejercicio 23
SELECT CONCAT(nombre, ' ', apellido) as nombre_completo FROM usuarios_lenguajes;

-- Ejercicio 24
SELECT COUNT(DISTINCT lenguaje) FROM usuarios_lenguajes WHERE edad > 25;

-- Ejercicio 25
SELECT edad, COUNT(*) as count FROM usuarios_lenguajes GROUP BY edad HAVING count > 1;

-- Ejercicio 26
SELECT * FROM usuarios_lenguajes WHERE edad < 30 AND LENGTH(lenguaje) = (SELECT MAX(LENGTH(lenguaje)) FROM usuarios_lenguajes WHERE edad < 30);

-- Ejercicio 27
SELECT email FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL;

-- Ejercicio 28
SELECT COUNT(*) FROM usuarios_lenguajes WHERE apellido LIKE 'G%';

-- Ejercicio 29
SELECT * FROM usuarios_lenguajes WHERE lenguaje LIKE 'J%' AND LENGTH(lenguaje) = (SELECT MIN(LENGTH(lenguaje)) FROM usuarios_lenguajes WHERE lenguaje LIKE 'J%');

-- Ejercicio 30
SELECT * FROM usuarios_lenguajes WHERE edad > 30 AND LENGTH(lenguaje) = (SELECT MIN(LENGTH(lenguaje)) FROM usuarios_lenguajes WHERE edad > 30);

-- Ejercicio 31
SELECT * FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL ORDER BY lenguaje;

-- Ejercicio 32
SELECT COUNT(*) FROM usuarios_lenguajes WHERE edad BETWEEN 20 AND 25 AND lenguaje IS NOT NULL;

-- Ejercicio 33
SELECT * FROM usuarios_lenguajes WHERE lenguaje != 'SQL';

-- Ejercicio 34
SELECT lenguaje FROM usuarios_lenguajes WHERE edad >= 30 ORDER BY LENGTH(lenguaje) DESC LIMIT 1;

-- Ejercicio 35
SELECT nombre, edad, (edad - (SELECT AVG(edad) FROM usuarios_lenguajes)) as diferencia_edad FROM usuarios_lenguajes;

-- Ejercicio 36
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje LIKE '%Script%';

-- Ejercicio 37
SELECT nombre, LENGTH(nombre) as longitud_nombre FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL;

-- Ejercicio 38
SELECT lenguaje FROM usuarios_lenguajes ORDER BY id_usuario DESC LIMIT 1;

-- Ejercicio 39
SELECT SUM(edad) as suma_edades FROM usuarios_lenguajes;

-- Ejercicio 40
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje LIKE 'P%' AND edad < 28;