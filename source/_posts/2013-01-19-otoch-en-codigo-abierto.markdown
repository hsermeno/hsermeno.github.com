---
layout: post
title: "Otoch en código abierto"
date: 2013-01-19 00:17
comments: true
categories: [ "Otoch" ]
tags: [ "jQuery Mobile", "Otoch", "Node.js", "socket.io" ]
---

Ahora decidí que parte del código de [Otoch][otoch] esté disponible al público en GitHub. Para los que no sabían,
Otoch es como le llamé al [sistema que me permite controlar las luces de mi casa][otoch]. Pueden encontrar el código
en

[http://github.com/hsermeno/otoch-web-control][otoch-github]

La parte que decidí hacer pública es la interfase web. Ésta consiste en un pequeño servidor corriendo en
[node.js ][node] que utiliza [jQuery Mobile][jquery-mobile] para la interfase y [socket.io][socket] para
la comunicación cliente-servidor.

Es un programa sencillo y la idea de hacerlo público es que haya una aplicación real como ejemplo para
alguien que esté aprendiendo éstas tecnologías. Si tienen alguna observación o sugerencia, favor hacérmela
saber en los comentarios.

[node]: http://nodejs.org/ "Node.js"
[jquery-mobile]: http://jquerymobile.com/ "jQuery Mobile"
[socket]: http://socket.io/ "Socket.IO"
[otoch]: {% post_url 2012-12-26-otoch-controlando-las-luces-de-mi-casa %} "Otoch"
[otoch-github]: http://github.com/hsermeno/otoch-web-control "Otoch en GitHub"
