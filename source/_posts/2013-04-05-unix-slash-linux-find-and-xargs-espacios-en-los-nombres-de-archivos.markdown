---
layout: post
title: "Unix/Linux - find &amp; xargs - Espacios en los nombres de archivos"
date: 2013-04-05 09:28
comments: true
categories: [ "Tips", "Linux"]
---

Hoy recibí una consulta cuya respuesta me pareció bien compartir por acá.

Una operación relativamente común para los usuarios de la línea de comando en 
Unix/Linux es realizar búsquedas de archivos a partir de un texto. Esto se puede
realizar con un comando como:

``` bash
find /directorio/a/buscar -name '*.txt' | xargs grep hola
```

que busca los archivos dentro de `/directorio/a/buscar` con extensión `txt` que
contengan la palabra `hola`.

El problema surge cuando los archivos pueden tener espacios en su nombre. Para 
remediarlo, basta decirle a find con la opción `-print0` que utilice el caracter 
nulo ASCII para separar los nombres de los archivos que encuentra, y a xargs que 
dicho caracter es el que separará la entrada con la opción `-0` (ese es un cero). 
Con esto, el comando anterior se convierte en

``` bash
find /directorio/a/buscar -name '*.txt' -print0 | xargs -0 grep hola
```

Claro, la combinación de `find` y `xargs` puede utilizarse para muchas otras
tareas, pero en todas son útiles las dos opciones cuando se trabaje con
archivos con espacios en su nombre.