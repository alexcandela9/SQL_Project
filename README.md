# 📊 Consultas de la BBDD de Cine

1. 📖 Descripción

    El actual proyecto se basa en la realizacion de consultas sobre una BBDD con informacion sobre cine. El objetivo es obtener las tablas que nos proporcionen las respuestas a las preguntas que componen nuestro analisis.

2. 🗂️ Estructura del Proyecto

    ├── Consultas/ # Consultas realizadas

    ├── .gitignore/ # Lista de archivos que no subimos a GitHub

    ├── BBDD_Proyecto/ # Scripts de creación de la BBDD

    ├── EnunciadoDataProject_SQL.Lógica/ # Consultas a realizar

    ├── README.md # Descripción del proyecto

3. 🛠️ Instalación y Requisitos

    Este proyecto usa pgAdmin4 para manejar la BBDD

4. 📊 Resultados y Conclusiones

    Por ahora nada

5. 🔄 Pasos

    2025-07-13: En primer lugar se ha creado el repositorio en GitHub y se han creado los archivos '.gitignore' y 'README.md'. En segundo lugar se ha añadido el archivos para la creacion de la BBDD 'BBDD_Proyecto.sql' y el enunciado con la informacion que tendremos que extraer 'EnunciadoDataProject_SQL.Lógica.pdf'. Por último, se han realizado los 2 primeros requerimientos como son la creacion de la base de datos a partir del anterior script y se le ha nombrado como 'Dummy', y se ha completado la consulta 2.
    
    2025-07-20: Durante la segunda semana del proyecto, se han ido realizando las siguientes consultas hasta la 30. En el proceso se han ido comprendidendo mejor las tablas de la base de datos como por ejemplo que el coste total por alquiler de su id siempre es de una unica pelicula pero que puede costar mas que la base de coste de la pelicula si se incumple el tiempo de alquiler, y que la tabla de pagos contiene 5 registros mas que la de alquiler parece ser por 5 registros erroneos. 4 de los registros erroneos se deben a que 4 id de pagos se hacen sobre un unico id de alquiler y en ellos el campo comun cliente es diferente para cada tabla. El quinto error no se entiende muy bien cual es su problema pero el dia de pago es diferente al dia de alquiler. Tambien se han aprendido algunos comandos nuevos mediante chat GPT como "UNION ALL" para unir 2 registros, "CASE" para poner una condicion.


6. 🤝 Contribuciones

    Ninguna

7. ✒️ Autores

    - Álex Candela Asencio