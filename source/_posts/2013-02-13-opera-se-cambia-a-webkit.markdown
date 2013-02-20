---
layout: post
title: "Opera se cambia a WebKit"
date: 2013-02-13 15:45
comments: true
categories: [ "Web", "Noticias" ]
---

El navegador web [Opera][opera] anunció ahora que ha alcanzado a los 300 millones de usuarios. En el mismo comunicado, sin embargo,
hizo un anuncio mucho mayor: Opera utilizará [WebKit][webkit] como su motor de renderizado. 

<!-- more -->

Los navegadores web dependen de los motores de renderizado para traducir el código de las páginas web en el texto y los gráficos
que ven en su computadora, tablet o teléfono. [Mozilla][mozilla] utiliza el motor [Gecko][gecko] para [Firefox][firefox], 
Microsoft usa [Trident][trident] para Internet Explorer y Google y Apple utiliza [WebKit][webkit] para [Chrome][chrome] y 
[Safari][safari], respectivamente. Hasta ahora, [Opera][opera] utilizaba su propio motor [Presto][presto] para sus navegadores.

Otra sorpresa es que el cambio será acompañado por el ingreso de Opera al proyecto Chromium, del cual Google Chrome se alimenta,
dejando a un lado su marco propietario, y del uso del motor de JavaScript V8 de Google en lugar de su propio Carakan.

De acuerdo al comunicado, el cambio a WebKit se realizará progresivamente, comenzando con el Opera Mobile que será presentado
con su nuevo motor en el Mobile World Congress en Barcelona.

¿Porqué el cambio?
------------------

El cambio a WebKit por parte de Opera, aunque sorpresivo, tiene sentido. WebKit es el motor _de facto_ en los navegadores
móviles, gracias al soporte de Apple, que lo utiliza en Safari para iOS, y Google, que lo utiliza en su navegador de Android.
Blackberry también utiliza WebKit tanto en Blackberry 10 como en versiones anteriores del Blackberry OS.

La dominación de WebKit significa que los creadores de aplicaciones web móviles usualmente se enfocan en WebKit y, muchas 
veces, _únicamente_ en WebKit cuando programan -algo que puedo afirmar por experiencia propia. Cuando un sitio web no se mira 
bien en un dispositivo, las personas normalmente __no__ culpan a la persona que codificó el sitio, sino más bien al navegador 
con el cual intentan verlo. Al cambiarse a WebKit, a Opera se le facilita atraer a nuevos usuarios sin tener que preocuparse 
por compatibilidad con otros motores de renderizado.

Para enfatizar esto, un desarrollador de Opera [menciona en su blog][blog] que "el proyecto Webkit tiene el tipo de soporte 
de estándares con el que sólo podíamos soñar cuando comenzamos nuestro trabajo. En lugar de dedicar recursos duplicando lo que ya ha sido implementado en Webkit, podemos enfocarnos en la innovación para mejorar al navegador."

¿Es bueno el cambio?
--------------------

Como programador, éste cambio es definitivamente una ventaja: un motor menos por el cuál preocuparse al momento de hacer
las pruebas de compatibilidad. Como usuario, que otra compañía contribuya al proyecto WebKit significa que nuevas funcionalidades
llegarán más rápidamente al motor.

A pesar de estas ventajas, siempre he estado en desacuerdo con los monopolios en la tecnología ya que, como en otros ámbitos, la
falta de competencia inhibe la innovación. Si no miren a Windows, que no fue sino hasta que las tablet comenzaron a disminuir el
mercado de las desktop que MicroSoft ha tratado de hacer algo con Windows 8 -aunque no les ha salido como se esperaba. En el
ámbito de los motores de renderizado, Trident está millas atrás de los demás, pero, por fortuna, Gecko subsiste para 
mantener viva la competencia.

Sobre Opera
-----------

Opera es un navegador web que nació en Noruega en 1995 como competencia a Netscape e Internet Explorer. Sus desarrolladores
crearon un nuevo motor con el objetivo de ser ente director de los estándares web. En ese aspecto, Opera ha contribuido 
enormemente a los estándares actuales, iniciando lo que ahora se conoce como HTML5, los videos nativos y los Media Query, 
todos partes vitales de la web moderna.

[opera]: http://www.opera.com/ "Navegador Web Opera"
[webkit]: http://www.webkit.org/ "Proyecto WebKit"
[mozilla]: http://www.mozilla.org/ "Mozilla"
[gecko]: https://developer.mozilla.org/en-US/docs/Mozilla/Gecko "Motor de Renderizado Gecko"
[firefox]: http://www.mozilla.org/es-MX/firefox/new/ "Firefox"
[trident]: http://es.wikipedia.org/wiki/Trident "Trident"
[chrome]: http://www.google.com/chrome "Navegador Web Chrome"
[safari]: http://www.apple.com/safari/ "Navegador Web Safari"
[presto]: http://es.wikipedia.org/wiki/Elektra_(motor_de_renderizado) "Motor de Renderizado Presto"
[chromium]: http://www.chromium.org/ "Proyecto Chromium"
[blog]: http://my.opera.com/ODIN/blog/300-million-users-and-move-to-webkit