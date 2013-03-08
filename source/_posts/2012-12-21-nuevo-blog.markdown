---
layout: post
title: "Nuevo Blog"
date: 2012-12-21 08:58
comments: true
categories: [ "Web", "Noticias" ]
tags: [ "Octopress", "nginx", "node.js", "WordPress", "Jekyll" ]
---

Finalmente, ¡mi sitio web está de vuelta! Espero que esta vez sea más permanente
que las veces anteriores que he intentado revivir mi blog.

Hay varios cambios importantes que decidí hacer en esta nueva revisión del sitio.

<!-- more -->

Nuevo URL
---------

Humberto-Sermeno.com. Puede que suene un poco egotístico, pero 
  en realidad no encontré qué nombre poner, así que por el momento me quedé con éste. 
  Cuando llegue el momento de renovar el dominio PirataSV.net, haré los cambios para
  que ambos dominios apunten a este mismo sitio (no los hago antes por cuestiones de
  logística, no técnicas).

Nuevo Diseño
------------

Aunque me gustaba el diseño anterior de mi blog, decidí esta vez optar
por un diseño minimalista que se enfocara en el contenido más que en la apariencia.
Lo mejor de todo: esta también es una buena excusa para justificar mi falta de 
creatividad en diseño.

Sin embargo, por el momento es aún más simple que lo que quiero. Simplemente no he 
tenido suficiente tiempo para trabajar en la página, por lo que iré agregando
poco a poco más cosas a medida que vaya teniendo espacio para hacerlo.

Nuevo Enfoque
-------------

Anteriormente había separado mi blog en dos: una [sección tecnológica](http://tech.piratasv.net),
donde escribía exclusivamente de cosas técnicas, y [otra personal](http://piratasv.net). Ahora
no recuerdo las razones por las que hice la diferencia entre las dos, pero no encuentro ninguna
para hacer que este nuevo sitio haga esa distinción. Por lo tanto, todos los artículos que escriba
estarán en el mismo Blog.

Páginas Estáticas
-----------------
 
Una de los mayores cambios que realicé fue migrarme desde [Wordpress](http://wordpress.org) hacia 
[Octopress](http://octopress.org)/[Jekyll](http://jekyllrb.com/), por
lo que ahora el sitio está completamente compuesto por páginas estáticas. La
principal razón del cambio fue el 'costo' de mantener una instalación de Wordpress: constantemente
preocuparse por tener la última versión para evitar vulnerabilidades. Me extenderé más en esto
y las demás razones en algún otro artículo.

Eso sí, no quisiera que haya malos entendidos. Me gusta Wordpress y, de hecho, lo utilizo a diario
con mis clientes. Sin embargo, creo que para un blog simple como el mío, Wordpress es simplemente
demasiado.

La idea es que más adelante migraré todos los artículos que había escrito en PirataSV.net a este
nuevo sitio, pero para eso necesito un poco de tiempo.

Nuevo Host
----------

Otro cambio significativo es el del host de [Lunarpages](http://lunarpages.com) a 
[Amazon EC2](http://aws.amazon.com/). Esta decisión fue tomada principalmente por cuestiones de
aprendizaje, ya que quería tener un poco de experiencia utilizando Amazon AWS. Resultó ser tan
fácil como manejar un servidor cualquiera, por lo que estoy alegre con el resultado, principalmente
el poder tener completo control sobre el software que corre en el servidor. Lo mejor de todo: Amazon
ofrece un año gratis de una instancia micro, que es más que suficiente para mis necesidades, y aún
después del año, el modelo de "pague por lo que usa" hace que Amazon sea una opción económica
para sitios de bajo flujo como el mío.

Todavía tengo mi cuenta en Lunarpages activa hasta que se venza en el 2015, pero la ocuparé
exclusivamente para trabajo. Si no tienen experiencia manejando servidores, Lunarpages es una
excelente opción para servir su página web.

En algún momento escribiré sobre mi experiencia con el Amazon AWS.

Nuevo Servidor HTTP
-------------------

Finalmente, y siguiendo la línea de los "cambios para aprender", decidí hacer a un lado a Apache
para favorecer a un simple servidor con [nginx](http://nginx.org/) y [Node.js](http://nodejs.org/).
La selección de Node.js la hice basada en mi proyecto de automatización de las luces de mi casa,
donde quería no sólo aprender algo nuevo, sino algo que fuera lo suficientemente liviano para
correr en un Raspberri Pi sin quitar muchos recursos. Dado que mi servidor en Amazon también 
tiene recursos limitados, utilizar Node.js ahí me pareció una buena opción.

Dejaré para otro artículo mis experiencias programando en Node.js.