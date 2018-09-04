extends 'properties.gd'


func _init():
	for array in [intro, health, concepts, features, learning, questions]:
		for val in array:
			data.push_back(val)


var intro = [
	{
		"title": "Die Engine auf die du gewartet hast",
		"subtitle": "Leistungsstark, Frei, Open Source",
		'picture': 'realtime-global-illumination.jpg',
		"footer": "Siehe Becketts 'Waiting for Godot'"
	},
	{
		"title": "Was ist Godot?",
		"body":
			"""[b]Die[b] Unity-ähnliche freie Engine kennzeichnet :

			- Zwei eigenständige [color=%s]2d[/color] und [color=%s]3d[/color] Engines
			- Ein kompletter Editor um deine Levels zu erstellen
			- Multiplattform: PC, Mac, Linux
			- Exporter verfügbar für PC, Mobile, Web*""" % [BLUE, PINK],
		'picture': '2d-viewport-2.x.png',
		"footer": "*und Konsolen für Unternehmen"
	},
	{
		"title": "Eine Godot Konsolenumsetzung",
		"subtitles": "Deponia's PS4 Version",
		'picture': 'deponia-ps4-game.png'
	},
	{
		"title": "Die Philosophie: All-in-one",
		"body":
      """Wir fügen es hinzu, wenn etwas wesentliches fehlt !

			- Code-Editor mit Dokumentation und Autovervollständigung eingeschlossen
			- [color=%s]Animation[/color]s Editor mit 2d Rigging
			- Visual-Programming für Designer
			- [color=%s]Shader[/color] Editoren, Text- und Graph-basierend*
			""" % [BLUE, GREEN],
		'picture': 'godot-2-shader-editor.png',
		"footer": "*Noch nicht in 3.0 verfügbar, Umsetzung in Arbeit und Fertigstellung für 3.1 geplant"
	},
	{
		"title": "Drei Programmiersprachen",
		'subtitle': 'Um dein Leben zu erleichtern',
		"body":
			"""Programmiere schneller mit:

			- [color=%s]GDScript[/color], inspiriert durch Python und Lua, designt für Spiele
			- [color=%s]VisualScript[/color], für Künstler und Designer in deinem Team
			- [color=%s]ShaderScript[/color], um Materialerstellung zu vereinfachen
			""" % [PINK, BLUE, GREEN],
		'picture': 'visual-script.png'
	},
	{
		"title": "GDScript Beispiel",
		'picture': 'gdscript-example.png'
	}
]


var health = [
	{
		"title": "Größe spielt keine Rolle",
		'subtitle': 'Zwanzig Megabyte reiner Freude',
		"body":
			"""Ein [color=%s]20mb[/color] Programm:

			- Ladet es [color=%s]in ein paar Sekunden[/color] herunter
			- [color=%s]Keine Installation[/color]

			Alles was mehr Speicherplatz verbraucht ist optional: Mobile Export-Templates, Mono und C#...
			""" % [BLUE, BLUE, BLUE],
		'picture': 'multiplatform-editor.jpg',
		"footer": "Diese kleine Datei beinhaltet die gesamte Engine, UI-Werkzeuge und alles was du braucht, um ein komplettes Spiel zu erstellen"
	},
	{
		"title": "Neu in Godot 3",
		'subtitle': 'Jetzt schnall dich an',
		'picture': 'gltf-damaged-helmet.jpg',
		"footer": "Alles was du nun zu sehen bekommst, hat nur ein gutes Jahr an Entwicklung benötigt"
	},
	{
		"demo": "new-in-godot-3/img.tscn"
	},
	{
		"title": "Nein, Größe spielt eine Rolle",
		"subtitle": "Der Kuchen ist eine Lüge!",
		"body":
			"""Ein Open-Source Projekt [color=%s]in herausragender Verfassung[/color]:

			- [color=%s]450+[/color] Mitwirkende
			- 10 000+ Commits
			- 11 000+ Sterne

			[color=%s]6000$[/color] pro Monat über Patreon. Gesponsert von Mozilla und selbst Microsoft für C# Unterstützung.
			""" % [GREEN, GREEN, GREEN],
		'picture': 'github-pulse-october.png',
		"footer": "Juan, der Hauptentwickler hat bereits Stellenangebote für andere Engines abgelehnt"
	},
	{
		"title": "Godot zieht Profis an",
		"subtitle": "",
		"body":
			"""Diese Profis benutzen bereits Godot 2.0:

			- [color=%s]Spielsudios[/color]: Gamblify, Guaranapps, Kivano...
			- [color=%s]Schulen[/color]: School4Games, KidsCanCode...
			- [color=%s]Ersteller von Inhalten[/color]: Heartbeast, [i]GDQuest[/i]...
			""" % [PINK, BLUE, GREEN],
		'picture': 'gamblify-monsters-5.jpg',
		"footer": "Mache dich nach der Godot 3.0 Veröffentlichung für mehr bereit"
	}
]


var concepts = [
	{
		"title": "Godots Kernprinzipien",
		"subtitle": "Die Design Entscheidungen die es einzigartig machen",
		"body":
			"""Jede Spiele-Engine ist anders. Godot unterscheidet sich von den meisten in 2 Dingen:

			- Integration jedes [color=%s]Werkzeugs[/color] für die Erstellung deines Spiels:
			[color=%s]Leveleditor[/color], [color=%s]Animationseditor[/color], usw.

			- Keine erzwungenen Programmiermuster wie [color=%s]MVC[/color]* oder [color=%s]ECS[/color]*

			Godot benutzt stattdessen simplere [color=%s]Nodetrees[/color].
			""" % [BLUE, BLUE, BLUE, GREEN, GREEN, GREEN],
		'picture': 'node-tree.png',
		'footer': '*Model-View-Controller und Entity-Component System'
	},
	{
		"title": "Ein Objektorientierter Editor",
		"subtitle": "Vererbung, strenge Hierachien und Freiheit",
		"body":
			"""Jeder Spielbildschirm ist ein [color=%s]Nodetree[/color].

			Jede Node-Gruppe kann als Szene gespeichert werden: Diese wird zu einen [color=%s]Branch[/color].

			Jeder Node [color=%s]erbt[/color] von Basis-Nodes: Alle Nodes arbeiten mehr oder weniger gleich.
			""" % [GREEN, BLUE, PINK],
		'picture': 'node-tree-2.png',
		'footer': '*Eingekapselt wenn wir es von einer objektorientierten Perspektive sehen.\nDieses Design hilft dir deine Szenen so zu strukturieren, dass sie deinen Spieldesign wiederspiegeln'
	},
	{
		"title": "Godot ist ein 'Godot Spiel'",
		"subtitle": "Der Editor beruht auf der Spieleengine",
		"body":
			"""Godots eigene UI Nodes versorgen [color=%s]das Interface des Editors[/color].

			Sie sind nicht nur leistungsstark: Du kannst [color=%s]Plugins[/color] mit den selben Code wie in deinen Spiel erstellen.
			""" % [GREEN, GREEN],
		'picture': 'fsm-plugin.png',
		'footer': 'Godot kommt auch mit einen eingebauten Assetstore. Mit einen Aber: Alles ist kostenlos'
	},
	{
		"title": "Unity, Godot, welche ist die Beste?",
		"subtitle": "TL;DR: vergiss 'die Beste'",
		"body":
			"""Jede Spieleengine [color=%s]beantwortet verschiedene Anforderungen.[/color]

			[i]Unity, Unreal, Godot, Game Maker, Phaser, LibGDX...[/i] All diese sind berechtigte Möglichkeiten, abhängig vom Projekt.

			Heutzutage erfüllt [color=%s]Godot[/color] die Anforderungen von [color=%s]indies[/color] ziemlich gut.
			""" % [BLUE, BLUE, BLUE],
		'picture': 'engine-logos.png',
		'footer': "Es gibt keine 'beste' Engine: Nur Technologie, angepasst an bestimmte Anforderungen.\nWie entscheidet man sich für das richtige Tool? Mit Erfahrung und Prototypen"
	}
]


var features = [
	{
		"title": "Ein paar Features...",
		"subtitle": "...unter vielen",
		"body":
			"""Spieleengines sind so [color=%s]komplex[/color], dass es schwer ist alles herauszufinden, was sie können.

			Es gibt jede Menge neuer Werkzeuge in Godot 3, aber auch tonnenweise interessante Werkzeuge vergangener Veröffentlichungen.

			Hier sind ein paar Hauptfeatures, die die Engine ausmachen.
			""" % PINK,
		'picture': 'some-features.png',
		"footer": "Lasst uns mit den Dingen starten, die die Entwickler glücklich machen"
	},
	{
		"title": "Programmiere mit C#",
		"subtitle": "Für C# Entwickler und Leute die von Unity kommen",
		"body":
			"""[color=%s]C#[/color] ist offiziell beginnend mit Version 3.0 unterstützt

			Basiert auf den neusten Mono Compiler.
			Programmiere mit XamarinStudio, VSCode, und Visual Studio.

			Es ist eine der drei offiziell unterstützten Gameplay Programmiersprachen, zusammen mit GDScript und VisualScript
			""" % ORANGE,
		'picture': 'c-sharp-vstudio.png',
		"footer": "Arbeit abgeschlossen von Ignacio R. Etcheverry, gesponsert von Microsoft"
	},
	{
		"title": "GDNative",
		"subtitle": "Native Performance ohne zu kompilieren",
		"body":
			"""Benutze jede Bibliothek [color=%s]dynamisch[/color] mit beinahe nativer Performance.

			GDnative überbrückt Godot mit externen Bibliotheken.

			Unterstützt derzeitig folgende Sprachen: [color=%s]C[/color], [color=%s]C++[/color], [color=%s]Rust[/color], [color=%s]Python[/color], und [color=%s]D[/color], Dank an die Community
			""" % [GREEN, ORANGE, ORANGE, PINK, GREEN, GREEN],
		'picture': 'gdnative.png',
		"footer": "Ja, C and C++ ohne die Engine neu zu kompilieren! Dank geht an Karroffel und Bojidar"
	},
	{
		"title": "Signale oder Godots Observer",
		"subtitle": "Sende Nachrichten zwischen deinen Nodes ohne sie zu zusammen zu binden",
		"body":
			"""Signale sind Observer auf Steroiden. [color=%s]Verbinde[/color] Nodes miteinander via Code oder im Editor. Lasse sie kommunizieren, ohne die gesamten Klassen sichtbar zu machen.

			Definiere deine eigenen Signale oder nutze die vielen bereits integrierten. Binde Variablen und sende Werte mit den Signalen mit.
			""" % BLUE,
		"picture": "signals.png",
		"footer": "Zum Beispiel, um die Lebensanzeige eines Charakters zu aktualisieren, wenn dieser getroffen wird"
	},
	{
		"title": "Beispiel: Signale",
		"demo": "lifebar/LevelMockup.tscn"
	},
	{
		"title": "Animier etwas...",
		"subtitle": "...oder alles!",
		"body":
			"""Du kannst [b]jede[/b] Property von [b]jedem[/b] Node animieren.

			[color=%s]Größe[/color], [color=%s]Position[/color], aktivieren/deaktivieren [color=%s]Kollisionen[/color], [color=%s]Booleans[/color]...

			Rufe Funktionen über den Animationseditor auf!
			""" % [BLUE, BLUE, GREEN, GREEN],
		'picture': 'godot-skeleton-1280x720.png',
		"footer": "GoBot von Andreas Esau"
	},
	{
		"title": "Animation-basierende Kampfmechaniken",
		"demo": "characters_and_weapons/Game.tscn",
		"footer": "Ist es nicht atemberaubend?"
	},
	{
		"title": "Tilemap-Editor",
		"subtitle": "Top-down und Isometrisch",
		'picture': 'isometric-tilemap.png',
	},
	{
		"title": "Escoria für Adventurespiele",
		"subtitle": "Point & Click, Dialogbäume...",
		'picture': 'dog-mendoza.png',
		"body":
			"""Escoria gibt dir eine natürliche Sprache zum schreiben von Adventurespielen in die Hand, ähnlich wie RenPy und andere Visual Novel Engines:

			[color=%s]:talk[/color]
			[color=%s]say[/color] [color=%s]player[/color] "Was für ein seltsames Lebewesen…" [color=%s]default[/color] avatar_panda
			[color=%s]say[/color] [color=%s]chameleon[/color] "Du weißt das ich dich hören kann, nicht wahr?" [color=%s]default[/color] avatar_chameleon
			""" % [PINK, ORANGE, BLUE, ORANGE, ORANGE, BLUE, ORANGE,]
	},
	{
		"title": "Eine moderne 3d Engine",
		'picture': 'sponza-2.jpg',
		"footer": "Designt um gut mit Blender Eevee zu arbeiten"
	},
	{
		"title": "Lasst uns über Partikel reden",
		'demo': 'many-particles/Sparkles.tscn',
		"body":
		"""


		[center][color=%s]Piuuu[/color] [color=%s]Piuuu[/color][/center]

		[center][color=%s]Boom[/color][/center]

		[center][color=%s]Ratatatatata[/color][/center]
		""" % [PINK, PINK, ORANGE, GREEN],
		"footer": "Neue Engine = Viel mehr Partikel"
	},
	{
		"title": "Augmented und Virtual Reality",
		"body":
			"""Erstelle Spiele für [color=%s]Occulus Rift[/color], [color=%s]Gear VR[/color] und viele andere in Godot 3, angetrieben durch Valve's OpenVR.

			[color=%s]Augmented reality[/color] ist ebenfalls unterstützt, mit dem ARKit.
			""" % [PINK, PINK, GREEN],
		'picture': 'arkit-1280x720.jpg',
		"footer": "Arbeit von Bastiaan Olij, mit Hilfe von Karroffel und Hinsbart"
	},
	{
		'title': 'Augmented Reality',
		'footer': 'Bastiaan ist kein Künstler, aber es funktioniert tadellos!',
		'video': 'godot-arkit.ogv'
	},
	{
		'title': 'Virtual Reality',
		'video': 'vr-capture.ogv',
		'config': {
			'video_size': {
				'x': 756,
				'y': 840
			}
		}
	},
	{
		"title": "Komplexe Benutzerinterfaces...",
		"subtitle": "...so einfach wie möglich",
		"body":
			"""[color=%s]Container[/color] system, tabs, margins, [color=%s]anchors[/color], node graphs...

			Godot wird mit einen eigenen, sehr robusten UI Design und Programmierwerkzeugen ausgeliefert. Automatisierte UI Layouts, Photoshop-ähnliches Smartsnapping, Grid und Guides...

			Du kannst alle Benutzerinterfaces deines Spiels und deiner Plugins innerhalb des Editors designen.
			""" % [GREEN, GREEN],
		'picture': 'rpg-in-a-box-graph.png',
		"footer": "RPG in a Box: Ein RPG Editor in Godot erstellt"
	},
	{
		"title": "Synchronisiere Skripte/Szenen",
		"body":
			"""Teste dein Spiel. Editier ein Skript, eine Szene, ein Level: Die Änderungen erscheinen direkt [color=%s]im Spiel, in Echtzeit[/color].

			Das funktioniert ebenso mit Smartphones und externe Geräte.

			Die Änderungen werden [color=%s]gespeichert[/color], selbst nachdem du das Spiel geschlossen hast.
			""" % [BLUE, BLUE],
		'picture': 'jotsway-canyon-screen.png',
		"footer": "Jotsway Canyon, taktisches RPG von Johnny Goss"
	},
	{
		'title': 'Skript sync von Jotsway Canyon',
		'video': 'jotsway-canyon-live-scripting.ogv'
	},
	{
		"title": "Werkzeugmodus: Godot-ception",
		"body":
			"""Füge [color=%s]tool[/color] als Schlüsselwort zum Anfang deines Skripts hinzu: Der Code läuft im Editor!

			Benutze [color=%s]tool[/color] um den Patrouillengang  vom IA zu visualisieren, probiere prozedurale Generierung aus, verbessere den Leveleditor...
			""" % [ORANGE, ORANGE],
		'picture': 'teddy-game.jpg',
		"footer": ""
	},
	{
		'title': 'Asset dropper von Andreas Esau',
		'video': 'andreas-godot-asset-drop.ogv'
	},
	{
		'title': 'Get Teddy von Guaranapps',
		'video': 'guaranapps-level-editor.ogv'
	},
	{
		'title': 'Wallrider, von Zylann',
		'video': 'zylann-wallrider-canon-level.ogv'
	},
	{
		'title': 'Tool mode in Wallrider',
		'video': 'zylann-wallrider-canon-tool.ogv'
	},
]


var create = [
	{
		"title": "Was kannst du mit Godot tun?",
		"subtitle": "Spiele, wie du erwartest",
		"footer": "Aber noch mehr!",
		'video': 'furry-defenders.ogv'
	},
	{
		"title": "Programme",
		"subtitle": "Zum Beispiel diese Präsentation",
		"video": 'presentaception.ogv'
	},
	{
		"title": "Spieleengines ?!",
		"subtitle": "Willkommen zu RPG in a Box",
#		"body":
#			"""The interface reminds you something? Here is RPG in a Box, a voxel RPG making software conceived using Godot.
#			"""Das Interface erinnert dich an etwas? Hier ist RPG in a Box, eine mit Godot erstelle Software zum Erstellen von Voxel-RPG.
#			""",
		'picture': 'rpg-in-a-box-map.png',
		"footer": ""
	},
	{
		"title": "Rogue-like in RPG in a Box",
		"subtitle": "Ein Spiel, erstellt mit einer Engine, erstellt mit einer Engine",
		'video': 'rpg-in-a-box-roguelike.ogv',
	},
]


var learning = [
	{
		"title": "Wie lernt man Godot?",
		"subtitle": "Die Ressourcen, welche verwendet werden sollten",
		'body':
		"""Godot bietet:

		- Eine [b]sehr[/b] aktive [color=%s]Community[/color]. Soziale Netzwerke, Foren, IRC, Discord...
		- Eine [color=%s]Frage/Antwort[/color] Webseite
		- Offizielle [color=%s]Tutorials[/color] und ein [color=%s]Online-Handbuch[/color]
		- Eine [color=%s]eingebaute Referenz[/color], verfügbar innerhalb des Editors
		- Open Source Demos
		""" % [BLUE, BLUE, GREEN, GREEN, PINK],
		'picture': 'docs-community-websites.png',
		"footer": "Die breite Masse an Ressourcen ist in Englisch. Eine gute Gelegenheit um es zu üben."
	},
	{
		"title": "Eingebaute Referenz",
		"subtitle": "Kein Grund zu deinen Browser zu wechseln",
		'body':
		"""Wähle einen Text im Skripteditor aus und drücke [color=%s]Umschalt F1[/color]:

		A list of dazugehörigen Nodes, Variablen und Funktionen erscheinen schlagartig.

		Die Code Dokumentation öffnet sich [color=%s]direkt im Skripteditor[/color].
		""" % [PINK, PINK],
		'picture': 'docs-integrated-help.png',
		"footer": "Drücke F4 um mit einer leeren Suchleiste zu starten"
	},
	{
		"title": "Ersteller von Inhalten",
		"subtitle": "Ein paar Empfehlungen zum starten",
		'body':
		"""Es gibt einige gute und kostenlose Video-Tutorialserien für Godot. Drei empfehlenswerte Kanäle:

		- [color=%s]KidsCanCode[/color], komplette Serie für Anfänger
		- [color=%s]Angega Studios[/color], komplette Serie für Anfänger
		- [color=%s]GDQuest[/color], für fortgeschrittene Benutzer
		""" % [ORANGE, PINK, BLUE],
		'picture': '',
		"footer": "Du kannst zudem Heartbeast und Ivan Skodje folgen"
	}
]


var questions = [{
		"title": "Dankeschön!",
		"subtitle": "Fragen?",
		'body':
		"""Die Präsentation ist Open Source, erhalte sie auf [url=https://github.com/GDquest/godot-3-presentation]GitHub[/url]

		Credits:

		Furry Defenders von [url=http://www.kivano.games/]Kivano[/url]
		[url=https://play.google.com/store/apps/details?id=fr.guaranapps.games.get_teddy]Get Teddy[/url] von Guaranapps
		[url=https://jaggygames.itch.io/jotswaycanyon]Jotsway Canyon[/url] von JaggyGames
		[url=http://www.rpginabox.com/]RPG in a Box[/url] von Justin
		[url=https://www.youtube.com/user/ndee85]Andreas Esau[/url]
		Wallrider von [url=https://www.youtube.com/user/ZylannMP3/videos]Zylann Productions[/url]
		""",
		'picture': 'gdquest-business-card.png',
		"footer": ""
}]
