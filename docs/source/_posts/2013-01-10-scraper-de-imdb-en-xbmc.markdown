---
layout: post
title: "Scraper de iMDb en XBMC"
date: 2013-01-10 12:54
comments: true
categories: [ "XBMC" ]
---

Desde hace algunos días había notado que el Scraper del [Internet Movie Database](http://imdb.com) en 
XBMC no aparecía, pero no me había puesto mayor atención, hasta ahora, cuando quise dedicar un poco 
de tiempo a arreglar la información de las películas que no se encontraban bien etiquetadas en mi colección.

<!-- more -->

Lo extraño fue que desde mi iMac, cuando quería acceder la información de las películas, la opción no
aparecía en el menú contextual. Tampoco la tecla `ì`, que normalmente muestra la información, tenía efecto
alguno. Después de una búsqueda rápida encontré que la solución era reasignar el contenido de mi fuente
de archivos correspondiente a las películas, pero ahí es donde regresé al tema del iMDb.

iMDb es definitivamente mi fuente favorita para la información de películas: arte, fechas de estreno, 
sinopsis, pero, sobre todo, la calificación. He encontrado que ésta es bastante acorde con mis gustos, y
normalmente una película mal calificada (un 6.5 para abajo) resulta no ser de mi agrado, mientras que
invariantemente una con buena calificación me termina gustando. Es por esto que siempre optaba por el 
Scraper de iMDb para obtener la información de las películas en mi colección. Y claro, me desanimé cuando
encontré que dicho add-on ya no está disponible.

La buena noticia fue que justo antes que me decidiera por escribir mi propio add-on, me di cuenta que el
nuevo Universal Scraper (versión 2.1.0 para arriba) tiene soporte para el iMDb! Así que si estaban en las
mismas mías, basta con instalar y configurar el Universal Scraper (dentro de los add-on de _Movie Information_)
y elegir que todo venga del iMDb.
