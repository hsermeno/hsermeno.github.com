---
layout: post
title: "Arreglando el error de Cyberduck al editar archivos remotos"
date: 2013-03-07 17:18
comments: true
categories: [ "Tips" ]
tags: [ "OS X", "Cyberduck" ]
---

Yo utilizo [Cyberduck][cyberduck] como mi cliente predilecto para FTP y SFTP en el OS X (aunque también tiene versión para Windows). Me gusta principalmente la opción para editar archivos, con lo que las modificaciones a ficheros remotos son extremadamente fáciles de realizar: sólo se dice qué archivo editar, se abre localmente con su editor favorito y cyberduck actualiza el archivo remoto automáticamente cada vez que guarda el archivo local.

Últimamente había tenido problemas aleatorios donde al pedir editar un archivo, el Cyberduck se quedaba en la generación del MD5 y nunca pasaba de ahí, teniendo que cerrar el programa a la fuerza para poder hacer algo. Este problema [ya tiene su reporte en su sitio][cyberduck-trac], y ya fue arreglado en la versión 4.2.2. Sin embargo, la última versión disponible en forma de binario es la 4.2.1, así que se necesita un arreglo temporal mientras la nueva versión sale al público.

<!-- more -->

Por suerte, este arreglo es sencillo. Únicamente es necesario ejecutar el siguiente comando desde la consola:

``` bash
$ defaults write ch.sudo.cyberduck editor.odb.enable false
```

Con esto, Cyberduck ya no se traba al editar archivos. Lo malo de la "solución" es que los archivos temporales no son movidos automáticamente a la papelera después de cerrar el editor. Al menos por mi parte es algo con lo que puedo vivir hasta que la siguiente versión sea publicada.

[cyberduck]: http://www.cyberduck.ch/ "Cyberduck"
[cyberduck-trac]: http://trac.cyberduck.ch/ticket/6878