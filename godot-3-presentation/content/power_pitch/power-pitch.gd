extends '../properties.gd'


func _init():
	for array in [intro, features, market]:
		for val in array:
			data.push_back(val)


var intro = [
	{
		"picture": "../img/title-screen.png"
	},
	{
		"title": "A free, modern engine",
		"body":
			"""
			Separate [color=%s]2d[/color] and [color=%s]3d[/color] renderers
			Complete [color=%s]game editor[/color]

			Runs on Windows, Mac, Linux
			Exports to PC, mobile, web""" % [BLUE, PINK, ORANGE],
		'picture': '../img/car-3d.jpg',
		"footer": "*And PS4, XboxOne, Switch, PS Vita..."
	},
	{
		"title": "Meeting Godot",
		"subtitle": "The Engine Editor",
		"body":
			"""
			A powerful 20MB Multiplatform editor with
			- Task sensitive interface
			- Built-in documentation
			- 2D, 3D and Code workspaces
			""",
		"picture": "godot-editor.png",
		"footer": "Customize it with themes, plugins and more!"
	},
	
]


var features = [
	{
		"title": "All-in-one package",
		"body":
			"""- [color=%s]Code editor[/color] with embedded docs and autocompletion
			- [color=%s]Animation[/color] editor with 2d rigging
			- [color=%s]Tilemap editor[/color] with autotiles
			- [color=%s]Shader[/color] editor, with autocompletion
			- [color=%s]UI theme editor[/color]
			
			If it misses anything essential, we add it!
			""" % [PINK, BLUE, ORANGE, GREEN, GREEN],
		'picture': 'mesh2d_bones.png',
		'footer': '2d IK available, meshes and skinning coming soon!'
	},
	{
		"title": "Bleeding edge 3D", #maybe change this title?
		'picture': '../img/modern-engine.jpg',
		"footer": "Designed to work well with Blender Eevee"
	},
	{
		'title': 'Virtual Reality',
		'body': """Augmented and Virtual Reality
		Powered by Steam VR

		Supports all common hardware like:
		- Occulus Rift
		- Gear VR
		- Leap Motion
		- ...
		""",
		# Use footage from https://youtu.be/vumX-Or9J5U?t=5m34s instead
		'video': 'vr-capture.ogv',
		'config': {
			'video_size': {
				'x': 756,
				'y': 840
			}
		}
	},
]

var market = [
	{
		"title": "Professionals use Godot",
		"body":
			"""- [color=%s]Game studios[/color]: Gamblify, GuaranApps, Kivano...
			- [color=%s]Schools[/color]: School4Games, KidsCanCode...
			- [color=%s]Content creators[/color]: Heartbeast, [i]GDQuest[/i]...
			""" % [PINK, BLUE, GREEN],
		'picture': '../img/teddy-game.jpg',
	},
	{
		'title': 'Made with Godot...',
		'video': 'shooter-game.ogv',
	},
	
]

var project = [
	{
		"title": "Godot is in great shape",
		"body":
			"""The development speed keeps going up:

			- [color=%s]680+[/color] contributors
			- 16 000+ commits
			- 16 000+ stars

			[color=%s]$9000+[/color] a month on Patreon. Sponsored by Mozilla and even Microsoft for C# support.
			""" % [GREEN, GREEN],
		'picture': 'repo-health.png',
	},
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
		"footer": "Most resources are in English now!"
	},
	{
		'title': 'Learn from simple Free demos',
		'demo': 'attacks/Demo.tscn',
		'footer': 'Both official and 3rd-party',
	},
	{
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
	}
]