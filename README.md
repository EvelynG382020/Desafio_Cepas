# DESAFIO 1 CEPAS
NOTA: SOLO EL ADMIN: test@gmail.com password "prueba". Al loguearte nuevo usuario solo podrás ver la lista de los vinos,  no podrás editar, eliminar ni agregar. 
A Peter le gusta catar vinos, sobre todo del tipo ensamblajes. Un ensamblaje es un vino que es mezcla de varias cepas en diferentes proporciones. Sin embargo, tiene muy mala memoria y no recuerda que cepas tienen los vinos que ha probado.
1. Identificarás los modelos involucrados y generar los controladores, vistas y modelos necesarios para administrar cada uno de los recursos.
2. Peter tiene muy poco tiempo, por lo que tendrás que diseñar una vista que le permita asignar de manera rápida todas las cepas del vino y su proporción en él (pueden ser 1 o más)
3. Peter necesita ver las cepas ordenadas por orden alfabético en la lista de vinos y entre paréntesis el %.
4. Al crear un nuevo vino, sólo se mostrarán cepas que están disponibles.
Tips
- Es recomendable modelar nuestros modelos y relaciones en papel o bien algún software como ​https://app.diagrams.net/ para que nos sea más fácil razonar sobre ellos.
- Una cepa es un tipo de vino (como por ejemplo Cabernet Sauvignon, Merlot, etc)
- Un ensamblaje es un vino compuesto de varias cepas, por ejemplo un ensamblaje llamado “Mountain’s best” podría ser un ensamblaje compuesto de 60% Cabernet Sauvignon 40% Merlot.
- Un vino es el término genérico, podría ser un vino 100% de una cepa, o un ensamblaje. El vino tiene una o más cepas (las cuales están definidas en el ensamblaje).
- (DROP TABLE STRAIN_WINES, wines_id y strains_id)
- (CORRECTO: TABLE WINE_STRAINS, wine_id y strain_id)

PARTE II DEL DESAFIO CEPAS
1. Peter necesita ver la nota que los enólogos han puesto al vino en una columna distinta, junto al porcentaje y nombre de la cepa de un vino
2. Peter almacenará en su sistema los datos de los enólogos, desde sus datos personales (nombre, edad y nacionalidad) hasta donde trabajan.
3. Al editar un vino, Peter asignará la nota del vino y los enólogos que lo calificaron, ordenados por su edad.
4. 1. Crearás specs con Rspec y se validará :
● Identificar cuál modelo testear.
● Que las cepas no pueden tener el mismo nombre.
● Una cepa no puede tener un nombre vacío, probar 3 casos
○ nombre = nil
○ nombre = “ ”
○ nombre “Carmenere”
2. En el controlador se testeará:
● Identificar cuál controlador testear.
● Asegurar que la vista index está mostrando vinos.
● La vista index y show renderizan el template correcto.
