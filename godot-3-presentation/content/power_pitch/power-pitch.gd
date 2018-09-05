const BLUE = "#26BFE3"
const GREEN = "#02E180"
const ORANGE = "#F2971A"
const PINK = "#E3266F"

var data = []

func _init():
	for array in [intro, features, market, project]:
		for val in array:
			data.push_back(val)


var intro = [
	{
		"picture": "title-screen.png"
	},
	{
		"title": "A Free modern engine",
		"body":
			"""
			Separate [color=%s]2d[/color] and [color=%s]3d[/color] renderers
			Complete [color=%s]game editor[/color]

			Create projects with Windows, Mac, Linux
			Build games for PC, mobile, web*""" % [BLUE, PINK, ORANGE],
		"picture": "car-3d.jpg",
		"footer": "*And PS4, XboxOne, Switch, PS Vita..."
	},
]


var features = [
	{
		# TODO: Multiple pics for features
		"title": "An all-in-one package",
		"body":
			"""- [color=%s]Code editor[/color] with embedded docs and autocompletion
			- [color=%s]Animation[/color] editor with 2d rigging
			- [color=%s]Tilemap editor[/color] with autotiles
			- [color=%s]Shader[/color] editor, visual and code
			- [color=%s]UI theme editor[/color]
			
			If it misses anything essential, we add it!
			""" % [PINK, BLUE, ORANGE, GREEN, GREEN],
		"picture": "mesh2d_bones.png",
		"footer": "2d IK available, meshes and skinning coming soon!"
	},
	{
		# TODO: Pic worth a thousand words - use a sexier pic
		"title": "Meet the editor",
		"subtitle": "Design and code, all in the same place",
		"picture": "godot-editor.png",
		"footer": "You can extend the editor with plugins or use it to design User Interface!"
	},
	{
		"title": "State of the art 3d engine",
		"picture": "modern-engine.jpg",
		"footer": "Designed to work well with Blender 2.8's Eevee realtime engine"
	},
	{
		"title": "Virtual and Augmented Reality",
		"body": """Powered by Steam VR
		Supports all common hardware like:
		- Occulus Rift
		- Gear VR
		- Leap Motion
		- ...
		""",
		"footer": "Powered by Steam VR",
		# Use footage from https://youtu.be/vumX-Or9J5U?t=5m34s instead
		"video": "vr-capture.ogv",
		"config": {
			"video_size": {
				"x": 756,
				"y": 840
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
		"picture": "teddy-game.jpg",
	},
	{
		"title": "Made with Godot...",
		"video": "shooter-game.ogv",
	},
]

var project = [
	{
		"title": "Godot is in great shape",
		"body":
			"""Godot is Free Software. Hundreds of people worked on it already, and it's growing faster over time:

			- [color=%s]680+[/color] contributors
			- 16 000+ commits
			- 16 000+ stars
			- Well-organized project

			[color=%s]$9000+[/color] a month on Patreon. Sponsored by Mozilla and even Microsoft for C# support.
			""" % [GREEN, GREEN],
		"picture": "repo-health.png",
	},
	{
		"title": "How do I get started?",
		"body":
		"""- Start with the [color=%s]official guide[/color] and [color=%s]open source demos[/color]!
		- Watch free video tutorials on Youtube
		- Join the [b]very[/b] active [color=%s]community[/color]. Social networks, forum, IRC, Discord...
		- There's a [color=%s]Questions/Answers[/color] website
		- Use the [color=%s]built-in reference[/color], inside the editor
		""" % [GREEN, GREEN, BLUE, BLUE, PINK],
		"picture": "docs-community-websites.png",
		"footer": "Most resources are in English now!"
	},
	{
		"title": "Learn from simple Free demos",
		"demo": "attacks/Demo.tscn",
		"footer": "Both official and 3rd-party",
	},
	{
		"title": "Thank you!",
		"subtitle": "Questions?",
		"body":
		"""SNS:
		[color=%s]@NathanGDquest[/color]
		[color=%s]youtube.com/c/gdquest[/color]

		Credits:
		- [url=https://play.google.com/store/apps/details?id=fr.guaranapps.games.get_teddy]Get Teddy[/url] by GuaranApps
		- [url=http://www.rpginabox.com/]RPG in a Box[/url] by Justin

		This presentation is an Open Source Godot project!
		Find it on [url=https://github.com/GDquest/godot-3-presentation]GitHub[/url]. It's available in multiple languages.
		""" % [BLUE, ORANGE],
		"picture": "gdquest-business-card.png",
	}
]
