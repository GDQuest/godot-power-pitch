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
		"title": "The engine you've waited for",
		"subtitle": "Powerful, Free, Open Source",
		'picture': 'res://slides/img/realtime-global-illumination.jpg',
		"footer": "See Beckett's 'Waiting for Godot'"
	},
	{
		"title": "What is Godot?",
		"body":
			"""[b]The[b] Unity-like Free engine featuring :

			- Two separate [color=%s]2d[/color] and [color=%s]3d[/color] engines
			- A complete editor to create your levels
			- Multiplatform: Windows, Mac, Linux
			- Exports available for PC, mobile, web*""" % [BLUE, PINK],
		'picture': 'res://slides/img/2d-viewport-2.x.png',
		"footer": "*And consoles for businesses"
	},
	{
		"title": "A Godot console port",
		"subtitles": "Deponia's PS4 version",
		'picture': 'res://slides/img/deponia-ps4-game.png'
	},
	{
		"title": "Its philosophy: all-in-one",
		"body":
			"""If it misses anything essential, we add it!

			- Code editor with embedded docs and autocompletion
			- [color=%s]Animation[/color] editor with 2d rigging
			- Visual programming for designers
			- [color=%s]Shader[/color] editors, both text and graph-based*
			""" % [BLUE, GREEN],
		'picture': 'res://slides/img/godot-2-shader-editor.png',
		"footer": "*Not available in 3.0 yet, port in progress and completion scheduled for 3.1"
	},
	{
		"title": "Three programming languages",
		'subtitle': 'To make your life easier',
		"body":
			"""Code faster with:

			- [color=%s]GDScript[/color], inspired by Python and Lua, designed for games
			- [color=%s]VisualScript[/color], for artists and designers on your team
			- [color=%s]ShaderScript[/color], to simplify material creation
			""" % [PINK, BLUE, GREEN],
		'picture': 'res://slides/img/visual-script.png'
	},
	{
		"title": "GDScript example",
		'picture': 'res://slides/img/gdscript-example.png'
	}
]


var health = [
	{
		"title": "Size does not matter",
		'subtitle': 'Twenty megabytes of pure joy',
		"body":
			"""One [color=%s]20 MB[/color] executable:

			- Download it [color=%s]in a few seconds[/color]
			- [color=%s]No installation[/color]

			Everything that requires more disk space is optional: mobile export templates, Mono and C#...
			""" % [BLUE, BLUE, BLUE],
		'picture': 'res://slides/img/multiplatform-editor.jpg',
		"footer": "This small file contains the entire engine, UI tools and everything you need to make a complete game"
	},
	{
		"title": "New in Godot 3",
		'subtitle': 'Please buckle your seatbelts',
		'picture': 'res://slides/img/gltf-damaged-helmet.jpg',
		"footer": "All you're going to see took little more than a year of development"
	},
	{
		"demo": "res://demos/new-in-godot-3/img.tscn"
	},
	{
		"title": "No, size does matter",
		"subtitle": "The cake was a lie!",
		"body":
			"""An open source project [color=%s]in excellent shape[/color]:

			- [color=%s]450+[/color] contributors
			- 10 000+ commits
			- 11 000+ stars

			[color=%s]$6000[/color] a month on Patreon. Sponsored by Mozilla and even Microsoft for C# support.
			""" % [GREEN, GREEN, GREEN],
		'picture': 'res://slides/img/github-pulse-october.png',
		"footer": "Juan, the lead developer, already declined job offers for other engines"
	},
	{
		"title": "Godot attracts professionals",
		"subtitle": "",
		"body":
			"""These professionals already use Godot 2.1:

			- [color=%s]Game studios[/color]: Gamblify, GuaranApps, Kivano...
			- [color=%s]Schools[/color]: School4Games, KidsCanCode...
			- [color=%s]Content creators[/color]: Heartbeast, [i]GDQuest[/i]...
			""" % [PINK, BLUE, GREEN],
		'picture': 'res://slides/img/gamblify-monsters-5.jpg',
		"footer": "Get ready for more after Godot 3.0's release"
	}
]


var concepts = [
	{
		"title": "Godot's core principles",
		"subtitle": "The design decisions that make it unique",
		"body":
			"""Every game engine is different. Godot differs from most in two ways:

			- It integrates every [color=%s]tool[/color] you need to produce your game:
			[color=%s]level editor[/color], [color=%s]animation editor[/color], etc.

			- No enforced programming patterns like [color=%s]MVC[/color]* or [color=%s]ECS[/color]*

			Godot uses simpler [color=%s]node trees[/color] instead.
			""" % [BLUE, BLUE, BLUE, GREEN, GREEN, GREEN],
		'picture': 'res://slides/img/node-tree.png',
		'footer': '*Model-View-Controller and Entity-Component-System'
	},
	{
		"title": "An Object-Oriented editor",
		"subtitle": "Inheritance, strong hierarchy and freedom",
		"body":
			"""Every game screen is a [color=%s]node tree[/color].

			Any node group can be saved* as a scene: it becomes a [color=%s]branch[/color].

			Every node [color=%s]inherits[/color] from base nodes: all nodes work more or less the same.
			""" % [GREEN, BLUE, PINK],
		'picture': 'res://slides/img/node-tree-2.png',
		'footer': '*Encapsulated if we see it from an Object-Oriented perspective.\nThis design helps you structure your scenes so they reflect your game design.'
	},
	{
		"title": "Godot is a 'Godot game'",
		"subtitle": "The editor relies on the game engine",
		"body":
			"""The engine's own UI nodes power [color=%s]the editor's interface[/color].

			They are not only powerful: you can create [color=%s]plugins[/color] with the same code you use in your games.
			""" % [GREEN, GREEN],
		'picture': 'res://slides/img/fsm-plugin.png',
		'footer': 'Godot also comes with a built-in a asset store, with a catch: everything is free'
	},
	{
		"title": "Unity, Godot, which is the best?",
		"subtitle": "TL;DR: forget about 'best'",
		"body":
			"""Each game engine [color=%s]answers different needs.[/color]

			[i]Unity, Unreal, Godot, Game Maker, Phaser, LibGDX...[/i] They're all valid options, depending on the project.

			Today, [color=%s]Godot[/color] answers the needs of [color=%s]indies[/color] very well.
			""" % [BLUE, BLUE, BLUE],
		'picture': 'res://slides/img/engine-logos.png',
		'footer': 'There are no best engines: only technologies adapted to specific needs.\nHow to choose the right tool? With experience and prototypes'
	}
]


var features = [
	{
		"title": "A few features...",
		"subtitle": "...among many",
		"body":
			"""Game engines are so [color=%s]complex[/color] it is hard to find out all they can do.

			There are many new tools in Godot 3, but also tons of interesting tools from previous releases.

			Here are some key features that make the engine stand out.
			""" % PINK,
		'picture': 'res://slides/img/some-features.png',
		"footer": "Let's start with the things that will please developers"
	},
	{
		"title": "Code with C#",
		"subtitle": "For C# developers and people coming from Unity",
		"body":
			"""[color=%s]C#[/color] is officially supported starting with version 3.0

			It's based on the lastest Mono compiler.
			Code with XamarinStudio, VSCode, and Visual Studio.

			It is one of the three officially supported gameplay programming languages, with GDScript and VisualScript
			""" % ORANGE,
		'picture': 'res://slides/img/c-sharp-vstudio.png',
		"footer": "Work done by Ignacio R. Etcheverry, sponsored by Microsoft"
	},
	{
		"title": "GDNative",
		"subtitle": "Native performance without compiling",
		"body":
			"""Use any library [color=%s]dynamically[/color] with near native performance.

			GDnative bridges Godot with external libraries.

			Currently supported languages: [color=%s]C[/color], [color=%s]C++[/color], [color=%s]Rust[/color], [color=%s]Python[/color], and [color=%s]D[/color], thanks to the community
			""" % [GREEN, ORANGE, ORANGE, PINK, GREEN, GREEN],
		'picture': 'res://slides/img/gdnative.png',
		"footer": "Yes, C and C++ without re-compiling the engine! Thanks Karroffel and Bojidar"
	},
	{
		"title": "Signals or Godot's Observer Pattern",
		"subtitle": "Send messages between your nodes without coupling them",
		"body":
			"""Signals are events on steroids. [color=%s]Connect[/color] nodes with one another via the code or in the editor. Let them communicate without exposing the full class.

			Define your own signals or use the many built-in ones. Bind variables and send values along with the signal.
			""" % BLUE,
		"picture": "res://slides/img/signals.png",
		"footer": "For example, to update the lifebar of a character when they get hit"
	},
	{
		"title": "Signals example",
		"demo": "res://demos/lifebar/LevelMockup.tscn"
	},
	{
		"title": "Animate anything...",
		"subtitle": "...or everything!",
		"body":
			"""You can animate [b]any[/b] property on [b]any[/b] node.

			[color=%s]Size[/color], [color=%s]position[/color], enable/disable [color=%s]collisions[/color], [color=%s]booleans[/color]...

			Call functions from the animation editor!
			""" % [BLUE, BLUE, GREEN, GREEN],
		'picture': 'res://slides/img/godot-skeleton-1280x720.png',
		"footer": "GoBot by Andreas Esau"
	},
	{
		"title": "Animation-based combat mechanics",
		"demo": "res://demos/characters_and_weapons/Game.tscn",
		"footer": "Isn't it breathtaking?"
	},
	{
		"title": "Tilemap editor",
		"subtitle": "Top-down and isometric",
		'picture': 'res://slides/img/isometric-tilemap.png',
	},
	{
		"title": "Escoria for adventure games",
		"subtitle": "Point & Click, dialog trees...",
		'picture': 'res://slides/img/dog-mendoza.png',
		"body":
			"""Escoria gives you a natural language to write adventure games, similar to that of RenPy and other Visual Novel engines:

			[color=%s]:talk[/color]
			[color=%s]say[/color] [color=%s]player[/color] "What a strange critter…" [color=%s]default[/color] avatar_panda
			[color=%s]say[/color] [color=%s]chameleon[/color] "You know I can hear you, right?" [color=%s]default[/color] avatar_chameleon
			""" % [PINK, ORANGE, BLUE, ORANGE, ORANGE, BLUE, ORANGE,]
	},
	{
		"title": "A modern 3d engine",
		'picture': 'res://slides/img/sponza-2.jpg',
		"footer": "Designed to work well with Blender Eevee"
	},
	{
		"title": "Let's talk about particles",
		'demo': 'res://demos/many-particles/Sparkles.tscn',
		"body":
		"""


		[center][color=%s]Piuuu[/color] [color=%s]Piuuu[/color][/center]

		[center][color=%s]Boom[/color][/center]

		[center][color=%s]Ratatatatata[/color][/center]
		""" % [PINK, PINK, ORANGE, GREEN],
		"footer": "New engine = many more particles"
	},
	{
		"title": "Augmented and Virtual Reality",
		"body":
			"""Create games for the [color=%s]Occulus Rift[/color], [color=%s]Gear VR[/color] and many others in Godot 3, powered by Valve's OpenVR.

			[color=%s]Augmented reality[/color] is also supported, with the ARKit.
			""" % [PINK, PINK, GREEN],
		'picture': 'res://slides/img/arkit-1280x720.jpg',
		"footer": "Work by Bastiaan Olij, with the help of Karroffel and Hinsbart"
	},
	{
		'title': 'Augmented Reality',
		'footer': 'Bastiaan isn\'t an artist, but it works like a charm!',
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
		"title": "Complex User Interface...",
		"subtitle": "...made as easy as can be",
		"body":
			"""[color=%s]Container[/color] system, tabs, margins, [color=%s]anchors[/color], node graphs...

			Godot ships with its own, very robust UI design and programming tools. Automated UI layouts, Photoshop-like smart snapping, grid and guides...

			You can design all of your game and plugins' UI within the editor.
			""" % [GREEN, GREEN],
		'picture': 'res://slides/img/rpg-in-a-box-graph.png',
		"footer": "RPG in a Box: an RPG editor made in Godot"
	},
	{
		"title": "Sync script, sync scenes",
		"body":
			"""Try out your game. Edit a script, a scene, a level: the change reflects [color=%s]in-game, in real time[/color].

			This also works with smartphones and on remote devices.

			The changes are [color=%s]saved[/color] even after you close the game.
			""" % [BLUE, BLUE],
		'picture': 'res://slides/img/jotsway-canyon-screen.png',
		"footer": "Jotsway Canyon, tactical-RPG by Johnny Goss"
	},
	{
		'title': 'Script sync on Jotsway Canyon',
		'video': 'res://slides/video/jotsway-canyon-live-scripting.ogv'
	},
	{
		"title": "Tool mode: Godot-ception",
		"body":
			"""Add the [color=%s]tool[/color] keyword at the top of your scripts: the code runs in the editor!

			Use [color=%s]tool[/color] to visualise the patrol path of an AI, try out procedural generation, improve the level editor...
			""" % [ORANGE, ORANGE],
		'picture': 'res://slides/img/teddy-game.jpg',
		"footer": ""
	},
	{
		'title': 'Asset dropper by Andreas Esau',
		'video': 'res://slides/video/andreas-godot-asset-drop.ogv'
	},
	{
		'title': 'Get Teddy by GuaranApps',
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
		"title": "What can you do with Godot?",
		"subtitle": "Games, as you might expect",
		"footer": "But there is more!",
		'video': 'res://slides/video/furry-defenders.ogv'
	},
	{
		"title": "Applications",
		"subtitle": "For example, this slideshow",
		"video": 'res://slides/video/presentaception.ogv'
	},
	{
		"title": "Game engines?!",
		"subtitle": "Welcome to RPG in a Box",
#		"body":
#			"""The interface reminds you something? Here is RPG in a Box, a voxel RPG making software conceived using Godot.
#			""",
		'picture': 'res://slides/img/rpg-in-a-box-map.png',
		"footer": ""
	},
	{
		"title": "Rogue-like in RPG in a Box",
		"subtitle": "A game, made with an engine, made with an engine",
		'video': 'res://slides/video/rpg-in-a-box-roguelike.ogv',
	},
]


var learning = [
	{
		"title": "How to learn Godot?",
		"subtitle": "The resources you should use",
		'body':
		"""Godot offers:

		- A [b]very[/b] active [color=%s]community[/color]. Social networks, forum, IRC, Discord...
		- A [color=%s]Questions/Answers[/color] website
		- Official [color=%s]tutorials[/color] and an [color=%s]online manual[/color]
		- A [color=%s]built-in reference[/color], available inside the editor
		- Open source demos
		""" % [BLUE, BLUE, GREEN, GREEN, PINK],
		'picture': 'res://slides/img/docs-community-websites.png',
		"footer": "The bulk of the resources are in English. A good opportunity to practice it."
	},
	{
		"title": "Built-in reference",
		"subtitle": "No need to switch to your web browser",
		'body':
		"""Select text in the script editor, press [color=%s]Shift F1[/color]:

		A list of corresponding nodes, variables and functions appear instantly.

		The code documentation opens [color=%s]right in the script editor[/color].
		""" % [PINK, PINK],
		'picture': 'res://slides/img/docs-integrated-help.png',
		"footer": "Press F4 to start with an empty search bar"
	},
	{
		"title": "Content Creators",
		"subtitle": "Some recommendations to get started",
		'body':
		"""There are still few good and free video tutorial series for Godot. Three recommended channels:

		- [color=%s]KidsCanCode[/color], complete series for beginners
		- [color=%s]Angega Studios[/color], complete series for beginners
		- [color=%s]GDQuest[/color], for intermediate users
		""" % [ORANGE, PINK, BLUE],
		'picture': '',
		"footer": "You can also follow Heartbeast and Ivan Skodje"
	}
]


var questions = [{
		"title": "Thank you!",
		"subtitle": "Questions?",
		'body':
		"""This presentation is Open Source, get it on [url=https://github.com/GDquest/godot-3-presentation]GitHub[/url]

		Credits:

		Furry Defenders by [url=http://www.kivano.games/]Kivano[/url]
		[url=https://play.google.com/store/apps/details?id=fr.guaranapps.games.get_teddy]Get Teddy[/url] by GuaranApps
		[url=https://jaggygames.itch.io/jotswaycanyon]Jotsway Canyon[/url] by JaggyGames
		[url=http://www.rpginabox.com/]RPG in a Box[/url] by Justin
		[url=https://www.youtube.com/user/ndee85]Andreas Esau[/url]
		Wallrider by [url=https://www.youtube.com/user/ZylannMP3/videos]Zylann Productions[/url]
		""",
		'picture': 'res://slides/img/gdquest-business-card.png',
		"footer": ""
}]
