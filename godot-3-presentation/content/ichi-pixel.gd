extends 'properties.gd'


func _init():
	for array in [intro, health, concepts, features, learning, questions]:
		for val in array:
			data.push_back(val)


var intro = [
	{
#		"title": "The engine you've waited for",
#		"subtitle": "Powerful, Free, Open Source",
		'picture': 'title-screen.png',
#		"footer": "See Beckett's 'Waiting for Godot'"
	},
	{
		"title": "A free, modern engine",
		"body":
			"""
			Separate [color=%s]2d[/color] and [color=%s]3d[/color] renderers
			Complete [color=%s]game editor[/color]

			Runs on Windows, Mac, Linux
			Exports to PC, mobile, web""" % [BLUE, PINK, ORANGE],
		'picture': 'advanced-materials.jpg',
		"footer": "*And PS4, XboxOne, Switch, PS Vita..."
	},
	{
		"title": "Deponia PS4, made with Godot",
		'picture': 'deponia-ps4-game.png'
	},
	{
		"title": "All-in-one package",
		"body":
			"""- [color=%s]Code editor[/color] with embedded docs and autocompletion
			- [color=%s]Animation[/color] editor with 2d rigging
			- [color=%s]Tilemap editor[/color] with autotiles
			- [color=%s]Shader[/color] editor, with autocompletion
			- [color=%s]UI theme editor[/color]
			""" % [PINK, BLUE, ORANGE, GREEN, GREEN],
		'picture': 'godot-skeleton-1280x720.png',
		'footer': '2d IK available, meshes and skinning coming soon!'
	},
	{
		"title": "Four programming languages",
		"body":
			"""Code games fast with:
			- [color=%s]GDScript[/color], custom gameplay programming language
			- [color=%s]VisualScript[/color], for artists and designers
			- [color=%s]ShaderScript[/color], to simplify material creation
			- [color=%s]C#[/color] is also supported
			""" % [PINK, BLUE, GREEN, ORANGE],
		'picture': 'visual-script.png'
	}
]


var health = [
	{
		"title": "Professionals use Godot",
		"body":
			"""- [color=%s]Game studios[/color]: Gamblify, GuaranApps, Kivano...
			- [color=%s]Schools[/color]: School4Games, KidsCanCode...
			- [color=%s]Content creators[/color]: Heartbeast, [i]GDQuest[/i]...
			""" % [PINK, BLUE, GREEN],
		'picture': 'teddy-game.jpg',
	},
	{
		"title": "Godot is in great shape",
		"body":
			"""The development speed keeps going up:

			- [color=%s]600[/color] contributors
			- 14 000 commits
			- 14 000+ stars

			[color=%s]$8000[/color] a month on Patreon. Sponsored by Mozilla and even Microsoft for C# support.
			""" % [GREEN, GREEN],
		'picture': 'github-pulse-october.png',
		"footer": "Juan, the lead developer, already declined job offers for other engines"
	},

]


var concepts = [
	{
		"title": "Great to learn game code",
		"subtitle": "Inheritance, strong hierarchy and freedom",
		"body":
			"""Godot focuses on intuitive Object-Oriented principles

			Every game screen is a [color=%s]node tree[/color].

			Any node group can be saved* as a scene: it becomes a [color=%s]branch[/color].

			Every node [color=%s]inherits[/color] from base nodes: all nodes work more or less the same.
			""" % [GREEN, BLUE, PINK],
		'picture': 'node-tree-2.png',
		'footer': 'It helps you to create good code structures'
	},
	{
		"title": "Godot is a 'Godot game'",
		"body":
			"""The engine's own UI nodes power [color=%s]the editor's interface[/color].

			They are not only powerful: you can create [color=%s]plugins[/color] with the same code you use in your games.
			""" % [GREEN, GREEN],
		'picture': 'fsm-plugin.png',
		'footer': 'Godot also comes with a built-in a asset store, with a catch: everything is Free'
	},
]


var features = [
	{
		'picture': 'godot-3.0.jpg',
	},
	{
		"title": "GDNative",
		"subtitle": "Native performance without compiling",
		"body":
			"""Use any library [color=%s]dynamically[/color] with near native performance.

			GDnative bridges Godot with external libraries.

			Currently supported languages: [color=%s]C[/color], [color=%s]C++[/color], [color=%s]Rust[/color], [color=%s]Python[/color], and [color=%s]D[/color], thanks to the community
			""" % [GREEN, ORANGE, ORANGE, PINK, GREEN, GREEN],
		'picture': 'gdnative.png',
		"footer": "Yes, C and C++ without re-compiling the engine! Thanks Karroffel and Bojidar"
	},
	{
		"title": "Modern 3d engine",
		'picture': 'modern-engine.jpg',
		"footer": "Designed to work well with Blender Eevee"
	},
	{
		'title': 'Made with Godot...',
		'video': 'shooter-game.ogv',
	},
	{
		'title': 'Virtual Reality',
		'body': """Augmented and Virtual Reality
		Powered by Steam VR

		Supports all common hardware like:
		- Occulus Rift
		- Gear VR
		- ...
		""",
		'video': 'vr-capture.ogv',
		'config': {
			'video_size': {
				'x': 756,
				'y': 840
			}
		}
	},
	{
		"title": "Complex User Interface...",
		"subtitle": "...made as easy as can be",
		"body":
			"""[color=%s]Container[/color] system, tabs, margins, [color=%s]anchors[/color], node graphs...

			Godot ships with its own, very robust UI design and programming tools.
			Automated UI layouts, Photoshop-like [color=%s]smart snapping[/color], grid and guides...

			You can design all of your game and plugins' UI within the editor.
			""" % [GREEN, GREEN, BLUE],
		'picture': 'rpg-in-a-box-graph.png',
		"footer": "RPG in a Box: an RPG editor made in Godot"
	},
]


var learning = [
	{
		"title": "How to get started",
		'body':
		"""- A [b]very[/b] active [color=%s]community[/color]. Social networks, forum, IRC, Discord...
		- A [color=%s]Questions/Answers[/color] website
		- Official [color=%s]tutorials[/color] and an [color=%s]online manual[/color]
		- A [color=%s]built-in reference[/color], available inside the editor
		- Open source demos
		""" % [BLUE, BLUE, GREEN, GREEN, PINK],
		'picture': 'docs-community-websites.png',
		"footer": "Most resources are in English now. A good way to practice?"
	},
	{
		'title': 'Learn from simple Free demos',
		'demo': 'attacks/Demo.tscn',
		'footer': 'Both official and 3rd-party',
	},
	{
		"title": "Built-in code reference",
		'body':
		"""Select text in the script editor, press [color=%s]Shift F1[/color]:

		A list of corresponding nodes, variables and functions appear instantly.

		The code documentation opens [color=%s]right in the script editor[/color].
		""" % [PINK, PINK],
		'picture': 'docs-integrated-help.png',
		"footer": "Press F4 to start with an empty search bar"
	},
	{
		"title": "Content Creators",
		'body':
		"""There are more and more good and free video tutorial series for Godot.
		Three recommended channels:

		- [color=%s]KidsCanCode[/color], complete series for beginners
		- [color=%s]Heartbeast[/color], for beginners
		- [color=%s]GDQuest[/color], for intermediate users
		""" % [ORANGE, PINK, BLUE],
		'picture': 'youtube-thumb-gdquest.jpg',
	},
]


var questions = [{
		"title": "Thank you!",
		"subtitle": "Questions?",
		'body':
		"""SNS:
		[color=%s]@NathanGDquest[/color]
		[color=%s]youtube.com/c/gdquest[/color]

		Credits:
		- [url=https://play.google.com/store/apps/details?id=fr.guaranapps.games.get_teddy]Get Teddy[/url] by GuaranApps
		- [url=http://www.rpginabox.com/]RPG in a Box[/url] by Justin

		This presentation is Open Source on [url=https://github.com/GDquest/godot-3-presentation]GitHub[/url]
		""" % [BLUE, ORANGE],
		'picture': 'gdquest-business-card.png',
},]
