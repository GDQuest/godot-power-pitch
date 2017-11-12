extends Node

var colors = {
	'blue': '#26BFE3',
	'green': '#02E180',
	'orange': '#F2971A',
	'pink': '#E3266F'
}
var data = []

func _init():
#	for array in [intro, health, concepts, features, gdquest]:
	for array in [health, concepts, features, gdquest]:
		for val in array:
			data.push_back(val)



var intro = [
	{
		"title": "Le moteur que vous attendiez",
		"subtitle": "Puissant, gratuit, et libre",
		'picture': 'res://slides/img/realtime-global-illumination.jpg',
		"footer": "Voir 'En attendant Godot' de Beckett"
	},
	{
		"title": "Godot, c'est quoi?",
		"body":
			"""[b]Le[b] moteur libre à la Unity, avec :

			- Moteurs [color=%s]2d[/color] et [color=%s]3d[/color] séparés
			- Un éditeur complet pour créer ses niveaux
			- Fonctionne sur PC, Mac, Linux
			- Export PC, mobile, web*""" % [colors['blue'], colors['pink']],
		'picture': 'res://slides/img/2d-viewport-2.x.png',
		"footer": "*Et consoles pour les entreprises"
	},
	{
		"title": "Exemple de portage Godot",
		"subtitles": "Version PS4 de Deponia",
		'picture': 'res://slides/img/deponia-ps4-game.png'
	},
	{
		"title": "Sa philosophie: tout-en-un",
		"body":
			"""S'il manque un outil essentiel, on l'ajoute !

			- Éditeur de code avec aide et auto-complétion riches
			- Éditeur [color=%s]d'animation[/color] et rigging 2d
			- Langage de programmation visuel pour les designers
			- Éditeur de [color=%s]shaders[/color] standard et visuel*
			""" % [colors['blue'], colors['green']],
		'picture': 'res://slides/img/godot-2-shader-editor.png',
		"footer": "*Indisponible dans la 3.0, retour prévu pour la 3.1"
	},
	{
		"title": "Trois langages de programmation",
		'subtitle': 'Conçus pour vous simplifier la vie',
		"body":
			"""Programmez plus vite à l'aide de:

			- [color=%s]GDscript[/color], inspiré de Python et Lua, conçu pour les jeux
			- [color=%s]VisualScript[/color], pour les artistes et designers en équipe
			- [color=%s]ShaderScript[/color], facilite la création de matériaux
			""" % [colors['pink'], colors['blue'], colors['green']],
		'picture': 'res://slides/img/visual-script.png'
	},
	{
		"title": "Exemple de GDscript",
		'picture': 'res://slides/img/gdscript-example.png'
	}
]

var health = [
	{
		"title": "C'est pas la taille qui compte",
		'subtitle': 'Vingt mégaoctets de pur bonheur',
		"body":
			"""Un seul exécutable de 20mo, utilisable depuis n'importe où, sans installation.
			""",
		"footer": "Si petit, et pourtant si puissant"
	},
	{
		"title": "C'est bien la taille qui compte",
		"body":
			"""450 contributeurs, 10 000 commits, 11 000 étoiles...

			- 4000$ par mois sur Patreon
			- En entreprise: Gamblify, Guaranapps...
			- En école: School4Games, KidsCanCode...
			""",
		"footer": "C'est beau, non?"
	},
	{
		"title": "Les ajouts de la version 3",
		# Design in AD, export multiple images
		# use a shader to displace them if there's time
		"demo": ""
	}
]

var concepts = [
	{
		"title": "Comment faire des jeux avec Godot?",
		"body":
			"""Qu'a-t-il réllement sous le capot?
			"""
	},
	{
		"title": "Scènes, nodes: flexi-sécurité",
		"body":
			"""Tout est une hiérarchie de nodes
			Tout groupe de nodes peut être sauvegardé en tant que scène
			Tout jeu est une hiérarchie et une suite de scènes
			"""
	},
	{
		"title": "",
		"body":
			"""Qu'a-t-il réllement sous le capot?
			"""
	},
	{
		"title": "Animez tout...",
		"body": "...et n'importe quoi!",
		"footer":
			"""Pas que des choses visuelles
			"""
	}
]

var features = [
	{
		"title": "Programmez en C#",
		"body":
			"""La programmation en [color=%s]C#[/color] est disponible sous 3.0
			Basé sur la dernière version de Mono,
			Support de XamarinStudio, VSCode, et bientôt Visual Studio
			""" % colors['orange'],
		'picture': '',
		"footer": "Travail réalisé par Ignacio R. Etcheverry, sponsorisé par Microsoft"
	},
	{
		"title": "Les performances sans compiler",
		"body":
			"""Utilisez n'importe quelle librairie dynamiquement avec GDNative

			GDnative expose [b]toutes[/b] les fonctions du moteur
			Support des langages C, C++, Rust, et D par la communauté
			""",
		"footer": "Oui, du C et du C++ sans re-compiler le moteur!"
	},
	{
		"title": "Tool mode: la Godot-ception",
		"body":
			"""Ajoutez le mot clé [color=%s]tool[/color] en haut de vos scripts: ils tournent dans l'éditeur!
			""" % colors['orange'],
		"footer": "Oui, du C et du C++ sans re-compiler le moteur!"
	},
	{
		"title": "Réalité Virtuelle, Réalité Augmentée",
		"body":
			"""
			"""
	}
]

var gdquest = [

]
