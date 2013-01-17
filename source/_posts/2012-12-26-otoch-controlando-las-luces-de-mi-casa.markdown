---
layout: post
title: "Otoch: controlando las luces de mi casa"
date: 2012-12-26 17:21
comments: true
categories: [ "Otoch", "Raspberry Pi", "Arduino" ]
---

__Otoch__ [_casa_ en Itzá], es como decidí nombrar al sistema de automatización que estoy construyendo
para mi casa. La idea es controlar la mayor cantidad de aspectos posibles (luces, alarma, aire 
acondicionado, sensores de movimiento), pero por el momento he comenzado con lo más práctico: las
luces.

<!-- more -->

## Arquitectura

{% img right /images/posts/2012-12-26-arduino-ethernet-shield.jpg 200x200 %}
La arquitectura del sistema es realmente simple. Reorganicé los cables de las conexiones eléctricas
de mi casa para que los switch se encuentren en una locación central (sobre mi closet), siendo 
reemplazados por relays controlados por un [Arduino Uno][arduino] con [Ethernet Shield][ethernet]. 
Es decir, un conjunto de luces es ahora controlado exclusivamente desde un punto central: el Arduino. 
Éste recibe comandos
a través de una simple interfaz de texto, que le dicen qué luces apagar o encender. Por ejemplo, enviar
la cadena `-A1B1` al puerto 23 apaga todas las luces y enciende aquellas conectadas al primer y segundo 
relay. La cadena `DT` intercambia el estado de la luz en el relay 4 (la apaga si estaba encendida y 
viceversa).

## Switch de Pared

{% img right /images/posts/2012-12-26-wall-switch.jpg 200x200 %}
Todo esto tiene un efecto directo en usabilidad: los switch en las paredes de mi casa ya no funcionan!
Claro, aunque es posible hacer un telnet y escribir los comandos, se imaginarán que hacerlo es
increíblemente tedioso -sin mencionar que sin un cliente (mi teléfono, iPad o computadoras) no es
posible encender ninguna luz. Por lo tanto, también programé el Arduino para que reciba 'comandos'
a partir de switch de contacto que estarán conectados con un cable ethernet. Por el momento, sólo he
cableado uno de los switch de pared (el más central), pero lo bueno es que desde ahí puedo ejecutar
9 comandos diferentes. Por ejemplo, un "click" en el primer switch enciende la primera luz de la sala,
un "doble click" la de la sala y mantenerlo apretado apaga todas las luces. Los otros dos switch
tienen acciones para los mismos tres "gestos".

## Interfase Web

{% img right /images/posts/2012-12-26-web-interface.jpg %}

Otro forma con la que quería poder controlar las luces es desde una página web en mi red local. La
interfaz es extremadamente simple, utilizando [jQuery Mobile][jquery-mobile] en el lado del cliente.

La primera iteración de la página utilizaba un servidor sencillo en [node.js ][node] que recibia
comandos a través de peticiones `GET`. Por ejemplo, una petición a `/do/sala:garage:on`, encendía
el switch `garage`, del controlador de relays `sala`. Algo como `/do/peliculas` ejecutaba un
_comando global_ que apaga todas las luces de la sala excepto una. El servidor puede tener configurados
múltiples controladores (Arduinos), con switch y comandos para cada uno de ellos, a través de un archivo
[YAML][yaml].

Un problema con esto es la actualización de estados. Por ejemplo, si dos personas accedían a la interfase
web al mismo tiempo, lo que una hacía (por ejemplo, encender una luz), no se actualizaba inmediatamente
en la interfaz de la otra dado que las peticiones para actualizar el estado (llamando a `/do/status`) se
realizaban cada _x_ segundos. Esto no le gustaba a _alguien_ (mi única otra usuaria del sistema), por lo que
debía buscar una mejor solución.

Dado que yo controlo qué Browsers van a acceder a la interfaz, decidí utilizar WebSockets para la aplicación.
Afortunadamente, existe una excelente librería para node.js: [socket.io][socket]. Los mismos comandos
que antes se enviaban en el URL ahora se envían como mensajes a través de un WebSocket. Lo mejor de todo es que 
ya que las conexiones son permanentes, cuando una de ellas envía un comando que cambia el estado de las 
luces, el servidor envía esa actualización para todas las conexiones, permitiendo que todos los clientes
se actualicen inmediatamente.

Mi servidor para la interfase Web corre desde un [Raspberry Pi][pi]. 
Un día de estos escribiré sobre cómo instalar node.js en el Pi.

## Siguientes Pasos

En términos físicos, tengo que continuar el trabajo de cableado para agregar más de las luces de mi casa
al sistema y para habilitar más switch de pared. 

En términos de software, quiero que cada uno de los
controladores de relay envíen una actualización de estado a mi servidor web (el Pi) para que también
los cambios desde un switch de pared aparezcan reflejados inmediatamente en la interfase web. 

También quiero una aplicación nativa para mi iPad que tenga una interfaz más natural, talvez con un
modelo 3D de mi casa.

Les estaré contando sobre los avances.

[arduino]: http://arduino.cc/en/Main/ArduinoBoardUno "Arduino Uno R3"
[ethernet]: http://arduino.cc/en/Main/ArduinoEthernetShield "Arduino Ethernet Shield"
[node]: http://nodejs.org/ "Node.js"
[socket]: http://socket.io/ "Socket.IO"
[yaml]: http://www.yaml.org/ "YAML Ain't Markup Language"
[jquery-mobile]: http://jquerymobile.com/ "jQuery Mobile"
[pi]: {% post_url 2012-11-26-raspberry-pi %} "Raspberry Pi"
