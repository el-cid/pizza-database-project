# Ejercicios de SQL de la Universidad de Helsinki
-----------------

El objetivo de este proyecto es la recuperación y resolución de los ejercicios de SQL propuestos durante un curso de bases de datos impartido por el profesor Harri Laine en la Universidad de Helsinki en el año 2004. 

https://www.cs.helsinki.fi/u/laine/tkpv/trainerstart_en.html

## Construcción de la base de datos

El esquema de la base de datos, así como su contenido, se puede observar en el siguiente enlace:

https://www.cs.helsinki.fi/u/laine/tkpv/pizza2sql.html

Pese a que en el sitio web se puede observar el esquema de la base de datos, e inclusive se proporcionan las sentencias necesarias para la construcción de la mayoría de las tablas que la conforman, el contenido de las tablas se encuentra en tablas HTML, por lo que fue necesario realizar un proceso de **_parsing_**, para facilitar la transición de HTML a SQL; el código fuente del parser se encuentra en el archivo Pizza.java. A continuación se muestra un fragmento de la tabla *customers*:

<table border=1  bgcolor="#F0FFF0"><tr>
<th bgcolor="#B0E0E6">
<small>CUSTOMERID</small>
</th>
<th bgcolor="#B0E0E6">
<small>NAME</small>
</th>
<th bgcolor="#B0E0E6">
<small>ADDRESS</small>
</th>
<th bgcolor="#B0E0E6">
<small>PAYMENTCATEGORY</small>
</th>
<th bgcolor="#B0E0E6">
<small>AREACODE</small>
</th>
<th bgcolor="#B0E0E6">
<small>PHONE</small>
</th>
<th bgcolor="#B0E0E6">
<small>EMAIL</small>
</th>
<tr>
<td>
1
</td>
<td>
Ann B
</td>
<td>
Big Street 3, 115
</td>
<td>
cash
</td>
<td>
A03
</td>
<td>
12345
</td>
<td>
Bigs@tpmail.com
</td>
</tr>
<tr>
<td>
2
</td>
<td>
Thomas K
</td>
<td>
Dark Alley 2, A3
</td>
<td>
cash
</td>
<td>
A01
</td>
<td>
23456
</td>
<td>
Tkumbs@mtmail.com
</td>
</tr>
<tr>
<td>
3
</td>
<td>
Sally W
</td>
<td>
Park Avenue 23, 25
</td>
<td>
credit
</td>
<td>
A03
</td>
<td>
12345
</td>
<td>
null
</td>
</tr>
<tr>
<td>
4
</td>
<td>
William S
</td>
<td>
Big Street 12, 5
</td>
<td>
credit
</td>
<td>
A03
</td>
<td>
null
</td>
<td>
xxsmith@hotmail.com
</td>
</tr>
<tr>
<td>
5
</td>
<td>
Liza U
</td>
<td>
Market Square 3, 34
</td>
<td>
cash
</td>
<td>
A02
</td>
<td>
45678
</td>
<td>
lisau@mymail.to
</td>
</tr>
</table>

Fuente: https://www.cs.helsinki.fi/u/laine/tkpv/table_deliveryboy.html


Tras realizar el proceso de *parsing*, se generaron scripts de SQL capaces de crear e insertar el contenido de las tablas del esquema de la base de datos.

## Desarrollo de consultas SQL

Finalmente se resolvieron los ejercicios propuestos durante el curso:

https://www.cs.helsinki.fi/u/laine/tkpv/trainertasks_k05.html

Cada ejercicio tiene un identificador compuesto por una o dos letras seguidas de uno o dos números. La consulta que resuelve el ejercicio se encuentra en un archivo de la forma identificador.sql, mientras que el resultado de dicha consulta se puede observar en un archivo de la forma identificador.sol.
