extends Node

const BLUE = '#26BFE3'
const GREEN = '#02E180'
const ORANGE = '#F2971A'
const PINK = '#E3266F'

var data = []


func _init():
	for array in [intro, health, concepts, features, learning, questions]:
		for val in array:
			data.push_back(val)


var intro = [
	{
		"title": "El motor que siempre has buscado",
		"subtitle": "Potente y libre",
		'picture': 'res://slides/img/realtime-global-illumination.jpg',
		"footer": "En honor a 'Esperando a Godot' de Beckett"
	},
	{
		"title": "¿Qué es Godot?",
		"body":
			"""[b]Un[b] motor estilo Unity que contiene:

			- Dos motores independientes: [color=%s]2d[/color] y [color=%s]3d[/color].
			- Un editor completo donde crear tus niveles
			- Multiplatforma: PC, Mac, Linux
			- Exporta a PC, dispositivos móviles, web*""" % [BLUE, PINK],
		'picture': 'res://slides/img/2d-viewport-2.x.png',
		"footer": "*Para estudios profesionales: también soporta consolas"
	},
	{
		"title": "Ejemplo de Godot en consola",
		"subtitles": "La versión de PS4 de Deponia",
		'picture': 'res://slides/img/deponia-ps4-game.png'
	},
	{
		"title": "Filosofía del motor: todo en uno",
		"body":
			"""Si falta algo: ¡se añade!

			- Editor de código con documentación incluida y autocompletado
			- [color=%s]Editor de animación[/color] con soporte para 2D
			- Programación visual para diseñadores
			- [color=%s]Editores de shaders[/color]: tanto en código como basado en grafos*
			""" % [BLUE, GREEN],
		'picture': 'res://slides/img/godot-2-shader-editor.png',
		"footer": "*No disponible en 3.0, en progrso para la versión 3.1"
	},
	{
		"title": "Tres lenguajes de programación",
		'subtitle': 'Para que estés más cómodo',
		"body":
			"""Programa más rápido con:

			- [color=%s]GDScript[/color], inspirado en Python y Lua, diseñado para videojuegos
			- [color=%s]VisualScript[/color], para los artistas y diseñadores de tu equipo
			- [color=%s]ShaderScript[/color], para simplificar la creación de materiales
			""" % [PINK, BLUE, GREEN],
		'picture': 'res://slides/img/visual-script.png'
	},
	{
		"title": "Ejemplo de GDScript",
		'picture': 'res://slides/img/GDScript-example.png'
	}
]


var health = [
	{
		"title": "El tamaño no importa",
		'subtitle': '20MB de puro encanto',
		"body":
			"""Un único ejecutable de [color=%s]20MB[/color]:

			- Descárgalo [color=%s]en segundos[/color]
			- [color=%s]No necesita instalación[/color]

			Todo lo que ocupa más espacio es opcional: plantillas de exportación, Mono y C#...
			""" % [BLUE, BLUE, BLUE],
		'picture': 'res://slides/img/multiplatform-editor.jpg',
		"footer": "El archivo contiene el motor completo, las herramientas de UI y todo lo que necesitas para hacer tu juego"
	},
	{
		"title": "Novedades de Godot 3",
		'subtitle': '¡Abrochaos los cinturones!',
		'picture': 'res://slides/img/gltf-damaged-helmet.jpg',
		"footer": "Lo que viene a continuación tomó poco más de un año de desarrollo"
	},
	{
		"demo": "res://demos/new-in-godot-3/img.tscn"
	},
	{
		"title": "Bueeeno... el tamaño importa",
		"subtitle": "The cake was a lie!",
		"body":
			"""Un proyecto open source[color=%s]en pleno auge[/color]:

			- [color=%s]Más de 450[/color] colaboradores
			- 10 000+ commits
			- 11 000+ stars

			[color=%s]6000$[/color] al mes vía Patreon. Patrocinado por Mozilla e incluso Microsoft para soportar C#.
			""" % [GREEN, GREEN, GREEN],
		'picture': 'res://slides/img/github-pulse-october.png',
		"footer": "Juan, el desarrollador jefe, ya ha rechazado varias ofertas de trabajo de otros motores"
	},
	{
		"title": "Godot atrae a los profesionales",
		"subtitle": "",
		"body":
			"""Estos profesionales ya usan Godot 2.0:

			- [color=%s]Estudios de juegos[/color]: Gamblify, Guaranapps, Kivano...
			- [color=%s]Escuelas[/color]: School4Games, KidsCanCode...
			- [color=%s]Creadores de contenido[/color]: Heartbeast, [i]GDQuest[/i]...
			""" % [PINK, BLUE, GREEN],
		'picture': 'res://slides/img/gamblify-monsters-5.jpg',
		"footer": "Aún más tras el lanzamiento de Godot 3.0"
	}
]


var concepts = [
	{
		"title": "Los principios de Godot",
		"subtitle": "Decisiones de diseño que lo hacen único",
		"body":
			"""Todos los motores de juegos son distintos. Godot es distinto por dos motivos:

			- Implementa todas las [color=%s]herramientas[/color] que necesitas para hacer tu juego: 
			[color=%s]editor de niveles[/color], [color=%s]editor de animaciones[/color], etc.

			- No fuerza patrones de programación como [color=%s]MVC[/color]* o [color=%s]ECS[/color]*

			En su lugar, Godot usa un simple sistema basado en [color=%s]árboles de nodos[/color].
			""" % [BLUE, BLUE, BLUE, GREEN, GREEN, GREEN],
		'picture': 'res://slides/img/node-tree.png',
		'footer': '*Model-View-Controller y Entity-Component System'
	},
	{
		"title": "Un editor orientado a objetos",
		"subtitle": "Herencia, jerarquía y libertad",
		"body":
			"""Cada escena es un [color=%s]árbol de nodos.[/color].

			Cualquier grupo de nodos puede guardarse como una escena: pasa a ser una [color=%s]rama[/color].

			Todos los nodos [color=%s]heredan[/color] de nodos base: esto hace que todos trabajen de forma similar.
			""" % [GREEN, BLUE, PINK],
		'picture': 'res://slides/img/node-tree-2.png',
		'footer': '*Encapsulado si lo vemos desde un punto de vista orientado a objetos.\n Este diseño ayuda a diseñar tus escenas de forma similar a como diseñas tu juego.'
	},
	{
		"title": "Godot está 'hecho en Godot'",
		"subtitle": "El editor se basa en el propio motor",
		"body":
			"""[color=%s]La interfaz del editor[/color] se basa en nodos de UI del propio motor.

			No solo tienen mucho potencial: puedes crear [color=%s]plugins[/color] con el código que usas en tus juegos.
			""" % [GREEN, GREEN],
		'picture': 'res://slides/img/fsm-plugin.png',
		'footer': 'Godot tiene una tienda de assets, con una peculiaridad: todo es gratis'
	},
	{
		"title": "Unity o Godot: ¿cuál es mejor?",
		"subtitle": "Resumen: no hay 'mejor'",
		"body":
			"""Cada motor resuelve [color=%s]distintas necesidades.[/color]

			[i]Unity, Unreal, Godot, Game Maker, Phaser, LibGDX...[/i] todas son opciones válidas, depende del proyecto.

			A día de hoy, [color=%s]Godot[/color] suple las necesidades de los [color=%s]indies[/color] muy bien.
			""" % [BLUE, BLUE, BLUE],
		'picture': 'res://slides/img/engine-logos.png',
		'footer': 'No hay uno mejor que otro: sólo tecnologías aplicadas a necesidades en concreto.\n¿Cómo elegir la herramienta correcta? con experiencia y prototipado.'
	}
]


var features = [
	{
		"title": "Unas cuantas características...",
		"subtitle": "...de las muchas que hay",
		"body":
			"""Los motores de juegos son tan [color=%s]complejos[/color] que es difícil conocer todo lo que pueden hacer.

			Hay muchas herramientas nuevas en Godot 3, pero ya había cosas interesantes en anteriores versiones.

			Aquí hay unas cuantas características que hacen al motor destacar.
			""" % PINK,
		'picture': 'res://slides/img/some-features.png',
		"footer": "Comencemos con las herramientas para desarrolladores"
	},
	{
		"title": "Programa en C#",
		"subtitle": "Para desarrolladores de C# y usuarios de Unity",
		"body":
			"""[color=%s]C#[/color] está soportado oficialmente a partir de la versión 3.0.

			Se basa en el último compilador Mono.
			Programa con XamarinStudio, VSCode, o Visual Studio.

			Es uno de los tres lenguajes soportados de manera oficial, junto a GDScript y VisualScript.
			""" % ORANGE,
		'picture': 'res://slides/img/c-sharp-vstudio.png',
		"footer": "Gracias a Ignacio R. Etcheverry, patrocinado por Microsoft"
	},
	{
		"title": "GDNative",
		"subtitle": "Rendimiento nativo sin compilación",
		"body":
			"""Usa cualquier librería [color=%s]dinámicamente[/color] con rendimiento 'casi' nativo.

			GDNative enlaza Godot con librerías externas.

			Lenguajes soportados actualmente: [color=%s]C[/color], [color=%s]C++[/color], [color=%s]Rust[/color], [color=%s]Python[/color], y [color=%s]D[/color], gracias a la comunidad.
			""" % [GREEN, ORANGE, ORANGE, PINK, GREEN, GREEN],
		'picture': 'res://slides/img/gdnative.png',
		"footer": "Sí, ¡C y C++ sin recompilar el motor! Gracias a Karroffel y Bojidar"
	},
	{
		"title": "Señales o el Observador de Godot",
		"subtitle": "Envía señales entre tus nodos sin necesidad de enlazarlos",
		"body":
			"""Las señales son observadores más potentes. [color=%s]Conecta[/color] un nodo con otro en el editor. Déjalos comunicarse sin exponer datos innecesarios.

			Define tus propias señales o usa las muchas que vienen por defecto. Enlaza variables y envía valores junto a la señal.
			""" % BLUE,
		"picture": "res://slides/img/signals.png",
		"footer": "Por ejemplo, para actualizar la barra de vida cuando tu personaje recibe daño"
	},
	{
		"title": "Ejemplo de señales",
		"demo": "res://demos/lifebar/LevelMockup.tscn"
	},
	{
		"title": "Anima cualquier cosa...",
		"subtitle": "...¡o todo!",
		"body":
			"""Puedes animar [b]todas[/b] las propiedades de cualquier [b]nodo[/b].

			[color=%s]Tamaño[/color], [color=%s]posición[/color], activar/desactivar [color=%s]colisiones[/color], [color=%s]booleans[/color]...

			¡Llama funciones desde el editor de animaciones!
			""" % [BLUE, BLUE, GREEN, GREEN],
		'picture': 'res://slides/img/godot-skeleton-1280x720.png',
		"footer": "GoBot por Andreas Esau"
	},
	{
		"title": "Combate con animaciones",
		"demo": "res://demos/characters_and_weapons/Game.tscn",
		"footer": "¿No es flipante?"
	},
	{
		"title": "Editor de tilemaps",
		"subtitle": "Cenital e isométrico",
		'picture': 'res://slides/img/isometric-tilemap.png',
	},
	{
		"title": "Escoria: para aventuras gráficas",
		"subtitle": "Point & Click, árboles de diálogo...",
		'picture': 'res://slides/img/dog-mendoza.png',
		"body":
			"""Escoria ofrece un lenguaje para aventuras gráficas, similar a RenPy y otros motores de Visual Novels:

			[color=%s]:talk[/color]
			[color=%s]say[/color] [color=%s]player[/color] "Qué chico tan raro..." [color=%s]default[/color] avatar_panda
			[color=%s]say[/color] [color=%s]chameleon[/color] "Sabes que puedo oírte, ¿no?" [color=%s]default[/color] avatar_chameleon
			""" % [PINK, ORANGE, BLUE, ORANGE, ORANGE, BLUE, ORANGE,]
	},
	{
		"title": "Un motor 3D moderno",
		'picture': 'res://slides/img/sponza-2.jpg',
		"footer": "Diseñado para integrarse bien con Blender Eevee"
	},
	{
		"title": "Hablemos sobre partículas",
		'demo': 'res://demos/many-particles/Sparkles.tscn',
		"body":
		"""


		[center][color=%s]Piuuu[/color] [color=%s]Piuuu[/color][/center]

		[center][color=%s]Boom[/color][/center]

		[center][color=%s]Ratatatatata[/color][/center]
		""" % [PINK, PINK, ORANGE, GREEN],
		"footer": "Nuevo motor = muchas más partículas"
	},
	{
		"title": "Realidad aumentada y virtual",
		"body":
			"""Haz juegos para [color=%s]Occulus Rift[/color], [color=%s]Gear VR[/color] y más en Godot 3, gracias a OpenVR de Valve.

			[color=%s]Realidad aumentada[/color] también disponible con ARKit.
			""" % [PINK, PINK, GREEN],
		'picture': 'res://slides/img/arkit-1280x720.jpg',
		"footer": "Por Bastiaan Olij, con ayuda de Karroffel y Hinsbart"
	},
	{
		'title': 'Realidad aumentada',
		'footer': 'Bastiaan no es un artista, ¡pero funciona divinamente!',
		'video': 'res://slides/video/godot-arkit.ogv'
	},
	{
		'title': 'Realidad virtual',
		'video': 'res://slides/video/vr-capture.ogv',
		'config': {
			'video_size': {
				'x': 756,
				'y': 840
			}
		}
	},
	{
		"title": "Interfaz de usuario compleja...",
		"subtitle": "...hecha tan sencilla como es posible",
		"body":
			"""Sistema de [color=%s]contenedores[/color], sangrías, márgenes, [color=%s]anclajes[/color], grafos de nodos...
			
			Godot integra sus propias herramientas de diseño y programación de UI. Layouts automáticos de UI, ajuste inteligente, cuadrículas y guías...

			Puedes diseñar la UI de tus juegos y plugins directamente desde el editor.
			""" % [GREEN, GREEN],
		'picture': 'res://slides/img/rpg-in-a-box-graph.png',
		"footer": "RPG in a Box: un editor RPG hecho en Godot"
	},
	{
		"title": "Sincroniza escenas y scripts",
		"body":
			"""Prueba tu juego. Edita un script, una escena, un nivel: los cambios se aplican [color=%s]directamente[/color] al juego.

			También funciona con smartphones y dispositivos remotos.

			Los cambios [color=%s]se guardan[/color] incluso cuando cierras tu juego.
			""" % [BLUE, BLUE],
		'picture': 'res://slides/img/jotsway-canyon-screen.png',
		"footer": "Jotsway Canyon, RPG táctico por Johnny Goss"
	},
	{
		'title': 'Sinc. de scripts en Jotsway Canyon',
		'video': 'res://slides/video/jotsway-canyon-live-scripting.ogv'
	},
	{
		"title": "Modo herramienta: Godot-ception",
		"body":
			"""Añade la keyword [color=%s]tool[/color] al comienzo de tus scripts: ¡el código se ejecuta en el propio editor!

			Usa [color=%s]tool[/color] para visualizar el camino que sigue tu IA, probar la generación procedural, mejorar el editor de niveles...
			""" % [ORANGE, ORANGE],
		'picture': 'res://slides/img/teddy-game.jpg',
		"footer": ""
	},
	{
		'title': 'Incl. de assets por Andreas Esau',
		'video': 'res://slides/video/andreas-godot-asset-drop.ogv'
	},
	{
		'title': 'Get Teddy por Guaranapps',
		'video': 'res://slides/video/guaranapps-level-editor.ogv'
	},
	{
		'title': 'Wallrider, por Zylann',
		'video': 'res://slides/video/zylann-wallrider-canon-level.ogv'
	},
	{
		'title': 'Modo herramienta en Wallrider',
		'video': 'res://slides/video/zylann-wallrider-canon-tool.ogv'
	},
]


var create = [
	{
		"title": "¿Qué puedes hacer con Godot?",
		"subtitle": "Como imaginabas: ¡juegos!",
		"footer": "¡Pero eso no es todo!",
		'video': 'res://slides/video/furry-defenders.ogv'
	},
	{
		"title": "Aplicaciones",
		"subtitle": "Por ejemplo, esta presentación",
		"video": 'res://slides/video/presentaception.ogv'
	},
	{
		"title": "¡¿Motores de videojuegos?!",
		"subtitle": "Bienvenido a RPG in a Box",
#		"body":
#			"""¿Te suena de algo la interfaz? esto es RPG in a Box, software de creación de RPGs Voxel basado en Godot.
#			""",
		'picture': 'res://slides/img/rpg-in-a-box-map.png',
		"footer": ""
	},
	{
		"title": "Rogue-like en RPG in a Box",
		"subtitle": "Un juego hecho con un motor hecho con un motor",
		'video': 'res://slides/video/rpg-in-a-box-roguelike.ogv',
	},
]


var learning = [
	{
		"title": "¿Cómo aprender Godot?",
		"subtitle": "Recursos que deberías usar",
		'body':
		"""Godot ofrece:

		- Una [color=%s]comunidad[/color] [b]muy[/b] activa. Redes sociales, foro, IRC, Discord...
		- Una página de [color=%s]Preguntas/Respuestas[/color]
		- [color=%s]Tutoriales[/color] oficiales y [color=%s]manual online[/color]
		- [color=%s]Documentación integrada[/color] en el propio editor
		- Demos de código abierto
		""" % [BLUE, BLUE, GREEN, GREEN, PINK],
		'picture': 'res://slides/img/docs-community-websites.png',
		"footer": "La mayoría de los recursos están en inglés: ¡una buena oportunidad de practicarlo!"
	},
	{
		"title": "Documentación integrada",
		"subtitle": "No hace falta que abras tu navegador web",
		'body':
		"""Selecciona texto en el editor de código, pulsa [color=%s]Shift F1[/color]:

		Una lista de nodos, variables y funciones relacionadas aparecerá al instante.

		La documentación está disponible [color=%s]directamente en el editor de código[/color].
		""" % [PINK, PINK],
		'picture': 'res://slides/img/docs-integrated-help.png',
		"footer": "Pulsa F4 para buscar en la documentación"
	},
	{
		"title": "Creadores de contenido",
		"subtitle": "Algunas recomendaciones",
		'body':
		"""Hay unas cuantas series de tutoriales para Godot muy buenas. Tres recomendaciones:

		- [color=%s]KidsCanCode[/color], para principiantes
		- [color=%s]Angega Studios[/color], para principiantes
		- [color=%s]GDQuest[/color], para usuarios intermedios
		""" % [ORANGE, PINK, BLUE],
		'picture': '',
		"footer": "También puedes seguir a Heartbeast e Ivan Skodje"
	}
]


var questions = [{
		"title": "¡Muchas gracias!",
		"subtitle": "¿Preguntas?",
		'body':
		"""Esta presentación es libre, puedes obtenerla en [url=https://github.com/GDquest/godot-3-presentation]GitHub[/url]
		
		Créditos:

		Furry Defenders por [url=http://www.kivano.games/]Kivano[/url]
		[url=https://play.google.com/store/apps/details?id=fr.guaranapps.games.get_teddy]Get Teddy[/url] por Guaranapps
		[url=https://jaggygames.itch.io/jotswaycanyon]Jotsway Canyon[/url] por JaggyGames
		[url=http://www.rpginabox.com/]RPG in a Box[/url] por Justin
		[url=https://www.youtube.com/user/ndee85]Andreas Esau[/url]
		Wallrider por [url=https://www.youtube.com/user/ZylannMP3/videos]Zylann Productions[/url]
		""",
		'picture': 'res://slides/img/gdquest-business-card.png',
		"footer": ""
}]
