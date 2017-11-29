extends Node

const BLUE = '#26BFE3'
const GREEN = '#02E180'
const ORANGE = '#F2971A'
const PINK = '#E3266F'

var data = []


func _init():
	for array in [intro, health, concepts, features, learning, gdquest, questions]:
		for val in array:
			data.push_back(val)


# CURRENTLY IN FRENCH. NEEDS TRANSLATION - PLEASE HELP

var intro = [
	{
		"title": "The engine you've waited for",
		"subtitle": "Powerful, Free, Open Source",
		'picture': 'res://slides/img/realtime-global-illumination.jpg',
		"footer": "See Beckett's film 'Waiting for Godot'"
	},
	{
		"title": "Godot, what about it?",
		"body":
			"""[b]The[b] Unity like free engine featuring :

			- Two distinct [color=%s]2d[/color] engine and [color=%s]3d[/color] engine
			- A complete editor to create your levels
			- Works on multiple platforms PC, Mac, Linux
			- Exports available for PC, mobile, web*""" % [BLUE, PINK],
		'picture': 'res://slides/img/2d-viewport-2.x.png',
		"footer": "*And consoles for companies"
	},
	{
		"title": "Examples of games ported with Godot",
		"subtitles": "Deponia's PS4 version",
		'picture': 'res://slides/img/deponia-ps4-game.png'
	},
	{
		"title": "Its philosophy: all-in-one",
		"body":
			"""If something essential is missing, we add it !

			- Code editor with embedded docs and autocompletion
			- [color=%s]Animation[/color] editor with 2d rigging
			- Visual programming for designers
			- [color=%s]Shaders[/color] editors both standard and visual*
			""" % [BLUE, GREEN],
		'picture': 'res://slides/img/godot-2-shader-editor.png',
		"footer": "*Not available in 3.0 yet, return of these feature scheluded for 3.1"
	},
	{
		"title": "three programming languages",
		'subtitle': 'Conceived to simplify your life',
		"body":
			"""Program faster with:

			- [color=%s]GDScript[/color], inspired by Python and Lua, and applied to games
			- [color=%s]VisualScript[/color], for artists and designers in a team
			- [color=%s]ShaderScript[/color], simplify the creation of materials
			""" % [PINK, BLUE, GREEN],
		'picture': 'res://slides/img/visual-script.png'
	},
	{
		"title": "GDScript example",
		'picture': 'res://slides/img/GDScript-example.png'
	}
]


var health = [
	{
		"title": "It is not the size that matters",
		'subtitle': 'twenty megabytes of pure happyness',
		"body":
			"""One [color=%s]20mo[/color] executable:

			- Download it [color=%s]in few seconds[/color]
			- [color=%s]No installation[/color]

			Everything that requires more disc space is optional: export templates for mobile, mono and C#...
			""" % [BLUE, BLUE, BLUE],
		'picture': 'res://slides/img/multiplatform-editor.jpg',
		"footer": "This small file contains the engine, UI tools and everything needed to make a complete game"
	},
	{
		"title": "New in Godot 3",
		'subtitle': 'buckle up...',
		'picture': 'res://slides/img/gltf-damaged-helmet.jpg',
		"footer": "Everything within a little more than one year of development"
	},
	{
		"demo": "res://demos/new-in-godot-3/img.tscn"
	},
	{
		"title": "Size does actually matter",
		"subtitle": "We lied to you from the beginning!",
		"body":
			"""An open source project [color=%s]in good shape[/color]:

			- [color=%s]450+[/color] backers
			- 10 000+ commits
			- 11 000+ stars

			Financed up to [color=%s]4000$[/color] per month on Patreon, sponsored by Mozilla and even Microsoft for the support of C#
			""" % [GREEN, GREEN, GREEN],
		'picture': 'res://slides/img/github-pulse-october.png',
		"footer": "Juan, the lead developer, has already declined opportunities for other engine"
	},
	{
		"title": "Professionals are slowly driven to it",
		"subtitle": "",
		"body":
			"""Professionals already use Godot 2.0:

			- From Game [color=%s]studios[/color]: Gamblify, Guaranapps...
			- in [color=%s]schools[/color]: School4Games, KidsCanCode...
			- by [color=%s]videographers[/color]: Heartbeast, [i]GDQuest[/i]...
			""" % [PINK, BLUE, GREEN],
		'picture': 'res://slides/img/gamblify-monsters-5.jpg',
		"footer": "Be prepared to see even more after Godot 3.0's release"
	}
]


var concepts = [
	{
		"title": "Godot great principles",
		"subtitle": "Let's have a look at what makes it unique",
		"body":
			"""Every game engine is different. Godot has two particularities:

			- It integrates every [color=%s]tools[/color] you need to produce your game, editors for: [color=%s]levels[/color], [color=%s]animations[/color], etc.
			- No enforced programming framework like [color=%s]MVC[/color]* or [color=%s]ECS[/color]*

			In Godot we use [color=%s]tree nodes[/color].
			""" % [BLUE, BLUE, BLUE, GREEN, GREEN, GREEN, GREEN],
		'picture': 'res://slides/img/node-tree.png',
		'footer': '*Model-View-Controller and Entity-Component System'
	},
	{
		"title": "An object oriented editor",
		"subtitle": "Inheritance, hierarchy and freedom: is that it, the flexi-security?",
		"body":
			"""Every game screen is a [color=%s]tree[/color] containing nodes.

			A group of nodes can be saved* in a scene: a [color=%s]branch[/color].

			Every node [color=%s]inherit[/color] from base nodes and work more or less the same.
			""" % [GREEN, BLUE, PINK],
		'picture': 'res://slides/img/node-tree-2.png',
		'footer': '*Encapsulated, speaking from a object oriented programming perspective.\nThis object oriented design helps you structure your scenes to reflect your game design.'
	},
	{
		"title": "Godot is a Godot game",
		"subtitle": "The editor uses the same engine as you",
		"body":
			"""The interface relies on [color=%s]interface nodes[/color] from the engine.

			These are not only powerful: you can create [color=%s]plugins[/color] the same way you create your games.
			""" % [GREEN, GREEN],
		'picture': 'res://slides/img/fsm-plugin.png',
		'footer': 'The editor also has a in-app asset store, like Unity or Game maker'
	},
	{
		"title": "Unity, Godot, which one is the best?",
		"subtitle": "TL;DR: forget about which one is the 'best'",
		"body":
			"""Each game engine [color=%s]answers different needs.[/color]

			[i]Unity, Unreal, Godot, Game Maker, Phaser, LibGDX...[/i] Are all legit depending on the project.

			Today, [color=%s]Godot[/color] fulfill very well the needs of [color=%s]indies[/color].
			""" % [BLUE, BLUE, BLUE],
		'picture': 'res://slides/img/engine-logos.png',
		'footer': 'There are no best engines: only technologies adapted to specific needs.\nHow to choose the right tool? With experience and prototypes'
	}
]


var features = [
	{
		"title": "A few features...",
		"subtitle": "...among many others",
		"body":
			"""game engines are so [color=%s]complex[/color] that it is hard to find your  way inside them.

			There are many new features in Godot 3, but also many interestinf tools in Godot 2.

			Here are some key features that makes this engine stand out.
			""" % PINK,
		'picture': 'res://slides/img/some-features.png',
		"footer": "We start with the things that will please developers"
	},
	{
		"title": "Program with C#",
		"subtitle": "That should please programmers coming from Unity",
		"body":
			"""Programming in [color=%s]C#[/color] is available in 3.0

			Based on the last version of Mono,
			XamarinStudio, VSCode, and Visual Studio supports

			It is one of the three languages included in the editor, with GDScript and VisualScript
			""" % ORANGE,
		'picture': 'res://slides/img/c-sharp-vstudio.png',
		"footer": "Work done by Ignacio R. Etcheverry, and sponsored by Microsoft"
	},
	{
		"title": "Good performances without compiling",
		"subtitle": "Dynamic bindings with GDNative",
		"body":
			"""Use any library [color=%s]dynamicly[/color]

			GDnative exposes [b]every[/b] engine functions

			Supports languages [color=%s]C[/color], [color=%s]C++[/color], [color=%s]Rust[/color], and [color=%s]D[/color] thanks to the community
			""" % [GREEN, ORANGE, ORANGE, PINK, GREEN],
		'picture': 'res://slides/img/gdnative.png',
		"footer": "Yes, C and C++ without re-compiling the engine! By Karroffel and Bojidar"
	},
	{
		"title": "Signals or in-app observer",
		"subtitle": "Make your nodes communicate without pairing them",
		"body":
			"""[color=%s]Connect[/color] some scenes with each other in the code or via the interface, without mutually exposing them.

			For example to update the lifebar of a character when he gets hit.
			""" % BLUE,
		"picture": "res://slides/img/signals.png",
		"footer": ""
	},
	{
		"title": "Signals example",
		"demo": "res://demos/lifebar/LevelMockup.tscn"
	},
	{
		"title": "Animate each...",
		"subtitle": "...and everything!",
		"body":
			"""Animate [b]every[/b] properties from [b]every[/b] nodes.

			[color=%s]Size[/color], [color=%s]position[/color], enable/disable [color=%s]collisions[/color], enable [color=%s]switches[/color]...
			""" % [BLUE, BLUE, GREEN, GREEN],
		'picture': 'res://slides/img/godot-skeleton-1280x720.png',
		"footer": "GoBot by Andreas Esau"
	},
	{
		"title": "Animation based fight",
		"demo": "res://demos/characters_and_weapons/Game.tscn",
		"footer": "It is breath taking isn't it?"
	},
	{
		"title": "Tilemaps editor",
		"subtitle": "top-down and isometric",
		'picture': 'res://slides/img/isometric-tilemap.png',
	},
	{
		"title": "Escoria for adventure games",
		"subtitle": "Point & Click, dialog trees...",
		'picture': 'res://slides/img/dog-mendoza.png',
		"body":
			"""Escoria offers a language to write adventure games following the path of RenPy and other Visual Novel engines:

			[color=%s]:talk[/color]
			[color=%s]say[/color] [color=%s]player[/color] "What a strange critter…" [color=%s]default[/color] avatar_panda
			[color=%s]say[/color] [color=%s]chameleon[/color] "You know I can hear you, right?" [color=%s]default[/color] avatar_chameleon
			""" % [PINK, ORANGE, BLUE, ORANGE, ORANGE, BLUE, ORANGE,]
	},
	{
		"title": "A modern 3d engine",
		'picture': 'res://slides/img/sponza-2.jpg',
		"footer": "Designed to produce renders close to Blender Eevee"
	},
	{
		"title": "Lets speak  a bit about particules",
		'demo': 'res://demos/many-particles/Sparkles.tscn',
		"body":
		"""


		[center][color=%s]Piuuu[/color] [color=%s]Piuuu[/color][/center]

		[center][color=%s]Boom[/color][/center]

		[center][color=%s]Ratatatatata[/color][/center]
		""" % [PINK, PINK, ORANGE, GREEN],
		"footer": "New engine = many more particules"
	},
	{
		"title": "Augmented Virtual Reality",
		"body":
			"""Create games for [color=%s]Occulus Rift[/color], [color=%s]Gear VR[/color] and many others in Godot 3.

			Create games in [color=%s]Augmented reality[/color] with l'ARKit.
			""" % [PINK, PINK, GREEN],
		'picture': 'res://slides/img/arkit-1280x720.jpg',
		"footer": "Mainly by Bastiaan Olij, with the help of Karroffel and Hinsbart"
	},
	{
		'title': 'Augmented Reality',
		'footer': 'Yes, Bastiaan is no artist, but it works!',
		'video': 'res://slides/video/godot-arkit.ogv'
	},
	{
		'title': 'Virtual Reality',
		'video': 'res://slides/video/vr-capture.ogv',
		'config': {
			'video_size': {
				'x': 756,
				'y': 840
			}
		}
	},
	{
		"title": "Complex interfaces...",
		"subtitle": "...and flexible",
		"body":
			"""[color=%s]Container[/color] system, tabs, margins, [color=%s]anchoring[/color]...

			You can layout all of your UI within the editor
			""" % [GREEN, GREEN],
		'picture': 'res://slides/img/rpg-in-a-box-graph.png',
		"footer": "Work done by Bastiaan Olij"
	},
	{
		"title": "Sync script, sync scenes",
		"body":
			"""Test your game. Modify a script, a scene, a level: the change is [color=%s]instantaneous[/color].

			This also works with your smart phone and on many devices simultaneously.

			The changes are [color=%s]saved[/color] even when you close the game.
			""" % [BLUE, BLUE],
		'picture': 'res://slides/img/jotsway-canyon-screen.png',
		"footer": "Jotsway Canyon, tactical combat game by Johnny Goss"
	},
	{
		'title': 'Script sync on Jotsway Canyon',
		'video': 'res://slides/video/jotsway-canyon-live-scripting.ogv'
	},
	{
		"title": "Tool mode: Godot-ception",
		"body":
			"""Add the keyword [color=%s]tool[/color] above your scripts: they now work in the editor!

			Use [color=%s]tool[/color] to visualise the patrol path of an IA, test random generation, improve the level editor...
			""" % [ORANGE, ORANGE],
		'picture': 'res://slides/img/teddy-game.jpg',
		"footer": ""
	},
	{
		'title': 'Asset dropper by Andreas Esau',
		'video': 'res://slides/video/andreas-godot-asset-drop.ogv'
	},
	{
		'title': 'Get Teddy by Guaranapps',
		'video': 'res://slides/video/guaranapps-level-editor.ogv'
	},
	{
		'title': 'Wallrider, by Zylann',
		'video': 'res://slides/video/zylann-wallrider-canon-level.ogv'
	},
	{
		'title': 'Tool mode in Wallrider',
		'video': 'res://slides/video/zylann-wallrider-canon-tool.ogv'
	},
]


var create = [
	{
		"title": "What can be done with Godot?",
		"subtitle": "First of all games, this seems expected",
#		"footer": "To cut it short: many, many things",
		'video': 'res://slides/video/furry-defenders.ogv',
	},
	{
		"title": "Applications",
		"subtitle": "for example, this presentation",
		"video": 'res://slides/video/presentaception.ogv',
	},
	{
		"title": "Some... game engines???",
		"subtitle": "Welcome to RPG in a Box",
#		"body":
#			"""The interface reminds you something? Here is RPG in a Box, a voxel RPG making software conceived using Godot.
#			""",
		'picture': 'res://slides/img/rpg-in-a-box-map.png',
		"footer": ""
	},
	{
		"title": "RPG in a Box",
		"subtitle": "A game, made with an engine, made with an engine",
		'video': 'res://slides/video/rpg-in-a-box-roguelike.ogv',
	},
]


var learning = [
	{
		"title": "How to learn Godot?",
		"subtitle": "And where, exactly?",
		'body':
		"""Godot offers:

		- A [b]very[/b] active [color=%s]community[/color]. Social networks, forum, IRC, Discord...
		- A [color=%s]questions/answers[/color] site
		- Some [color=%s]tutorials[/color] and an online [color=%s]manual[/color]
		- A [color=%s]in app doc[/color] withing the editor
		- An open source demo package
		""" % [BLUE, BLUE, GREEN, GREEN, PINK],
		'picture': 'res://slides/img/docs-community-websites.png',
		"footer": "The majority of ressources are in english. A good opportunity to practice."
	},
	{
		"title": "In-app help",
		"subtitle": "No need to struggle with your browser",
		'body':
		"""Select a piece of text in the script editor, click on [color=%s]Shift F1[/color]:

		A list of nodes, variables and functions corresponding appears instantly.
		The reference opens [color=%s]in the scripts editor[/color].
		""" % [PINK, PINK],
		'picture': 'res://slides/img/docs-integrated-help.png',
		"footer": "Press F4 to open the search bar withing the opened reference"
	},
	{
		"title": "Videographers",
		"subtitle": "Some recommendations for beginning",
		'body':
		"""There are still few good and free video tutorial series for Godot. I recommend 3 channels:

		- [color=%s]KidsCanCode[/color], for beginners, complete series
		- [color=%s]Angega Studios[/color], for beginners/intermediates, complete series
		- [color=%s]GDQuest[/color], for intermédiaite levels
		""" % [ORANGE, PINK, BLUE],
		'picture': '',
		"footer": "You can also follow Heartbeast and Ivan Skodje"
	}
]


var gdquest = [
	{
		"title": "Game Design Quest",
		"subtitle": "The creation of video games with free softwares",
		'body':
		"""Former les [color=%s]créateurs indépendants[/color] du monde entier à toutes les [color=%s]techniques des professionnels[/color] de la création de jeux vidéo

		Donner accès aux designers du monde entier à des ressources de qualité.
		Couvrir [color=%s]tous les domaines[/color] liés à la création de jeux et d'applications interactives.
		""" % [BLUE, GREEN, GREEN],
		'picture': 'res://slides/img/gdquest-business-card.png',
		"footer": "Pour impacter les gens, partez d'un concept précis, personnel, qui répond à un désir, ou mieux: un besoin"
	},
	{
		"title": "Comment?",
		"subtitle": "Plus facile à dire qu'à faire",
		'body':
		"""Pour percer, il faut être [color=%s]cohérent[/color], se [color=%s]démarquer[/color], et [color=%s]persévérer[/color]:

		- Les [color=%s]logiciels libres[/color] pour rendre le contenu plus accessible
		- La moitié du contenu est [color=%s]gratuit et/ou open source[/color]
		- À l'opposé des tendances, [color=%s]la qualité plutôt que la quantité[/color]
		- Proche des gens, avec une communication naturelle
		""" % [GREEN, BLUE, PINK, GREEN, BLUE, PINK],
		'picture': 'res://slides/img/gdquest-video-edit.png',
		"footer": "La forme juridique? Fondation, trop dur, association, trop seul: micro-entreprise"
	},
	{
		"title": "Gagner sa vie: le crowdfunding",
		"subtitle": "Difficile de vivre de tout projet indépendent...",
		'body':
		"""...mais pas impossible. Il faut être aussi créatif sur le [color=%s]modèle économique[/color] que pour le reste:

		Mélange de financement participatif, ventes et sous-traitance
		Ajout de sponsors, subventions et création de technologies libres à l'avenir?

		Le plus important, c'est de trouver une approche qui marche et qui est en [color=%s]accord avec soi[/color]
		""" % [GREEN, BLUE],
		'picture': 'res://slides/img/gdquest-ks-stretch-goals.png',
		"footer": "Les backers financent à 50% du contenu gratuit/libre et à 50% des récompenses payantes"
	},
	{
		"title": "Beaucoup de travail",
		"subtitle": "Est-ce vraiment la santé?",
		'body':
		"""Se lancer dans le [color=%s]libre[/color] et sur le [color=%s]web[/color], c'est aussi:

		- Pas de vacances depuis 1 an
		- Pas de jours féries, peu de week-ends
		- Du travail pour 5 personnes, de quoi en payer aucune
		""" % [BLUE, ORANGE],
		'picture': 'res://slides/img/gdquest-semaine-type.png',
		"footer": "Communication, marketing, programmation, web, game design, vidéo, comptabilité..."
	},
	{
		"title": "Et ça en vaut la peine",
		"subtitle": "Surtout maintenant que GDQuest est sur les rails",
		'body':
		"""C'est une activité extrêmement [color=%s]épanouïssante[/color].

		On apprend plus que dans la plupart des jobs: dans le jeu vidéo et dans le libre, les gens [color=%s]partagent leurs connaissances[/color].

		L'indépendence, cela veut aussi dire que vous pouvez travailler [color=%s]depuis n'importe où[/color].
		""" % [BLUE, BLUE, BLUE],
		'picture': 'res://slides/img/gdquest-japan.jpg',
		"footer": "Il y a un temps à investir pour démarrer: ensuite ça roule"
	}
]


var questions = [{
		"title": "Merci!",
		"subtitle": "Vous avez été adorables. Des questions?",
		'body':
		"""Retrouvez la présentation et tous les liens sur [url=http://gdquest.com]GDQuest.com[/url]. Crédits:

		Furry Defenders par [url=http://www.kivano.games/]Kivano[/url]
		[url=https://play.google.com/store/apps/details?id=fr.guaranapps.games.get_teddy]Get Teddy[/url] par Guaranapps
		[url=https://jaggygames.itch.io/jotswaycanyon]Jotsway Canyon[/url] par JaggyGames
		[url=http://www.rpginabox.com/]RPG in a Box[/url] par Justin
		[url=https://www.youtube.com/user/ndee85]Andreas Esau[/url]
		Wallrider par [url=https://www.youtube.com/user/ZylannMP3/videos]Zylann Productions[/url]
		""",
		'picture': 'res://slides/img/gdquest-business-card.png',
		"footer": ""
}]
