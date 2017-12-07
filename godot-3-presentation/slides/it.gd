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
		"title": "Il motore di gioco che aspettavi",
		"subtitle": "Potente, Gratuito, Open Source",
		'picture': 'res://slides/img/realtime-global-illumination.jpg',
		"footer": "Vedi 'Waiting for Godot' di Beckett"
	},
	{
		"title": "Cosa è Godot?",
		"body":
			"""[b]Un[b] motore Unity-like gratuito:

			- Due motori [color=%s]2d[/color] e [color=%s]3d[/color] separati
			- Un editor completo per creare i tuoi livelli
			- Multipiattaforma: PC, Mac, Linux
			- Esportazioni disponibili per PC, mobile, web*""" % [BLUE, PINK],
		'picture': 'res://slides/img/2d-viewport-2.x.png',
		"footer": "*E console per business"
	},
	{
		"title": "Un porting Godot per console",
		"subtitles": "Versione di Deponia per PS4",
		'picture': 'res://slides/img/deponia-ps4-game.png'
	},
	{
		"title": "La nostra filosofia: tutto in uno",
		"body":
			"""Se manca qualcosa di essenziale, lo aggiungiamo!

			- Editor di codice con documentazione integrata e completamento automatico
			- Editor di [color=%s]animazione[/color] con rigging 2d
			- Programmazione visiva per designer
			- Editor [color=%s]Shader[/color], sia testuale che grafico*
			""" % [BLUE, GREEN],
		'picture': 'res://slides/img/godot-2-shader-editor.png',
		"footer": "*Non ancora disponibile in 3.0, porting in corso e completamento previsto per 3.1"
	},
	{
		"title": "Tre linguaggi di programmazione",
		'subtitle': 'Per semplificarsi la vita',
		"body":
			"""Programmare più velocemente con:

			- [color=%s]GDScript[/color], ispirato da Python e Lua, progettato per i giochi
			- [color=%s]VisualScript[/color], per artisti e designer del vostro team
			- [color=%s]ShaderScript[/color], per semplificare la creazione di materiali
			""" % [PINK, BLUE, GREEN],
		'picture': 'res://slides/img/visual-script.png'
	},
	{
		"title": "Esempio di GDScript",
		'picture': 'res://slides/img/GDScript-example.png'
	}
]


var health = [
	{
		"title": "Le dimensioni non contano",
		'subtitle': 'Venti megabyte di pura gioia',
		"body":
			"""Un eseguibile da [color=%s]20mb[/color]:

			- Scaricalo [color=%s]in pochi secondi[/color]
			- [color=%s]Nessuna installazione[/color]

			Tutto ciò che richiede più spazio su disco è opzionale: modelli di esportazione mobile, Mono e C#....
			""" % [BLUE, BLUE, BLUE],
		'picture': 'res://slides/img/multiplatform-editor.jpg',
		"footer": "Questo piccolo file contiene l'intero motore, gli strumenti UI e tutto il necessario per creare un gioco completo"
	},
	{
		"title": "Nuovo in Godot 3",
		'subtitle': 'Allacciate le cinture!',
		'picture': 'res://slides/img/gltf-damaged-helmet.jpg',
		"footer": "Tutto quello che stai per vedere è stato sviluppato in poco più di un anno"
	},
	{
		"demo": "res://demos/new-in-godot-3/img.tscn"
	},
	{
		"title": "No, le dimensioni contano",
		"subtitle": "The cake was a lie!",
		"body":
			"""Un progetto open source [color=%s]in perfetta forma[/color]:

			- [color=%s]450+[/color] contributori
			- 10 000+ commit
			- 11 000+ stelle

			[color=%s]6000$[/color] al mese su Patreon. Sponsorizzato da Mozilla, e Microsoft per il supporto C#.
			""" % [GREEN, GREEN, GREEN],
		'picture': 'res://slides/img/github-pulse-october.png',
		"footer": "Juan, lo sviluppatore capo, ha già declinato le offerte di lavoro per altri motori"
	},
	{
		"title": "Godot attira professionisti",
		"subtitle": "",
		"body":
			"""Questi professionisti usano già Godot 2.0:

			- [color=%s]Game studios[/color]: Gamblify, Guaranapps, Kivano...
			- [color=%s]Scuole[/color]: School4Games, KidsCanCode...
			- [color=%s]Creatori di contenuti[/color]: Heartbeast, [i]GDQuest[/i]...
			""" % [PINK, BLUE, GREEN],
		'picture': 'res://slides/img/gamblify-monsters-5.jpg',
		"footer": "E molti altri dopo il rilascio di Godot 3.0"
	}
]


var concepts = [
	{
		"title": "I principi fondamentali di Godot",
		"subtitle": "Le decisioni progettuali che lo rendono unico",
		"body":
			"""Ogni motore di gioco è diverso. Godot differisce dalla maggior parte in due modi:

			- Integra ogni [color=%s]strumento[/color] necessario per produrre il tuo gioco:
			[color=%s]editor di livelli[/color], [color=%s]editor di animazioni[/color], ecc.

			- Nessun pattern di programmazione imposto come [color=%s]MVC[/color]* o [color=%s]ECS[/color]*

			Godot utilizza invece delle più semplici [color=%s]strutture ad albero[/color].
			""" % [BLUE, BLUE, BLUE, GREEN, GREEN, GREEN],
		'picture': 'res://slides/img/node-tree.png',
		'footer': '*Model-View-Controller e Entity-Component System'
	},
	{
		"title": "Un editor Object-Oriented",
		"subtitle": "Ereditarietà, una forte gerarchia e libertà",
		"body":
			"""Ogni schermata di gioco è una [color=%s]struttura ad albero[/color].

			Ogni gruppo di nodi può essere salvato come scena: diventa un [color=%s]ramo[/color].

			Ogni nodo [color=%s]eredita[/color] da nodi di base: tutti i nodi funzionano più o meno allo stesso modo.
			""" % [GREEN, BLUE, PINK],
		'picture': 'res://slides/img/node-tree-2.png',
		'footer': '*Incapsulato se lo vediamo da una prospettiva orientata all' oggetto.\n Questo design ti aiuta a strutturare le scene in modo che riflettano il tuo design di gioco.'
	},
	{
		"title": "Godot è 'un gioco fatto con Godot'",
		"subtitle": "L' editor si basa sul motore di gioco stesso",
		"body":
			"""I nodi UI del motore sono utilizzati per [color=%s]l'interfaccia dell'editor[/color].

			Non sono solo potenti: puoi creare [color=%s]plugin[/color] con lo stesso codice che usi nei tuoi giochi.
			""" % [GREEN, GREEN],
		'picture': 'res://slides/img/fsm-plugin.png',
		'footer': 'Godot viene fornito anche con un asset store integrato, solo che tutto è gratis'
	},
	{
		"title": "Unity, Godot, quale è il migliore?",
		"subtitle": "TL;DR: dimenticati del 'migliore'",
		"body":
			"""Ogni motore di gioco [color=%s]soddisfa esigenze diverse.[/color]

			[i]Unity, Unreal, Godot, Game Maker, Phaser, LibGDX...[/i] Sono tutte opzioni valide, a seconda del progetto.

			Oggi, [color=%s]Godot[/color] soddisfa molto bene le esigenze degli [color=%s]indie[/color].
			""" % [BLUE, BLUE, BLUE],
		'picture': 'res://slides/img/engine-logos.png',
		'footer': 'Non ci sono motori migliori: solo tecnologie adattate alle esigenze specifiche.\n Come scegliere lo strumento giusto?  Con esperienza e prototipi'
	}
]


var features = [
	{
		"title": "Alcune funzionalità...",
		"subtitle": "...fra tante",
		"body":
			"""I motori di gioco sono così [color=%s]complessi[/color] che è difficile scoprire tutto quello che possono fare.

			Ci sono molti nuovi strumenti in Godot 3, ma anche tonnellate di strumenti interessanti da versioni precedenti.

			Ecco alcune funzionalità chiave.
			""" % PINK,
		'picture': 'res://slides/img/some-features.png',
		"footer": "Iniziamo con le cose che piaceranno agli sviluppatori"
	},
	{
		"title": "Programma in C#",
		"subtitle": "Per sviluppatori C# e per chi arriva da Unity",
		"body":
			"""[color=%s]C#[/color] è ufficialmente supportato a partire dalla versione 3.0

			Si basa sull' ultimo compilatore Mono.
			Programma utilizzando XamarinStudio, VSCode, o Visual Studio.

			È uno dei tre linguaggi di programmazione gameplay ufficialmente supportati, assieme a GDScript e VisualScript
			""" % ORANGE,
		'picture': 'res://slides/img/c-sharp-vstudio.png',
		"footer": "Lavoro svolto da Ignacio R. Etcheverry, sponsorizzato da Microsoft"
	},
	{
		"title": "GDNative",
		"subtitle": "Prestazioni native senza compilazione",
		"body":
			"""Utilizza qualsiasi libreria [color=%s]dinamicamente[/color] con prestazioni quasi native.

			GDnative collega Godot con librerie esterne.

			Linguaggi attualmente supportati: [color=%s]C[/color], [color=%s]C++[/color], [color=%s]Rust[/color], [color=%s]Python[/color], e [color=%s]D[/color], grazie alla comunità
			""" % [GREEN, ORANGE, ORANGE, PINK, GREEN, GREEN],
		'picture': 'res://slides/img/gdnative.png',
		"footer": "Sì, C e C+++ senza ricompilare il motore! Grazie a Karroffel e Bojidar"
	},
	{
		"title": "Segnali o l'Observer di Godot",
		"subtitle": "Inviare messaggi tra i nodi senza collegarli tra loro",
		"body":
			"""Segnali sono Observers su steroidi. [color=%s]Collega[/color] nodi tramite codice o tramite l'editor. Fateli comunicare senza esporre l'intera classe.

			Definire i propri segnali o utilizzare quelli integrati. Collegate le variabili e inviate i valori insieme al segnale.
			""" % BLUE,
		"picture": "res://slides/img/signals.png",
		"footer": "Per esempio, per aggiornare la barra della vita di un personaggio quando viene colpito"
	},
	{
		"title": "Esempio di segnale",
		"demo": "res://demos/lifebar/LevelMockup.tscn"
	},
	{
		"title": "Animare qualsiasi cosa...",
		"subtitle": "...o ogni cosa!",
		"body":
			"""È possibile animare [b]qualsiasi[/b] propertà su [b]qualsiasi[/b] nodo.

			[color=%s]Scala[/color], [color=%s]posizione[/color], attiva/disattiva [color=%s]collisioni[/color], [color=%s]booleans[/color]...

			Chiama funzioni dall'editor delle animazioni!
			""" % [BLUE, BLUE, GREEN, GREEN],
		'picture': 'res://slides/img/godot-skeleton-1280x720.png',
		"footer": "GoBot di Andreas Esau"
	},
	{
		"title": "Meccanica di combattimento basata sull' animazione",
		"demo": "res://demos/characters_and_weapons/Game.tscn",
		"footer": "Non è mozzafiato?"
	},
	{
		"title": "Tilemap editor",
		"subtitle": "Top-down e isometrico",
		'picture': 'res://slides/img/isometric-tilemap.png',
	},
	{
		"title": "Escoria per giochi di avventura",
		"subtitle": "Punta e Clicca, alberi di dialogo...",
		'picture': 'res://slides/img/dog-mendoza.png',
		"body":
			"""Escoria ti dà un linguaggio naturale per scrivere giochi di avventura, simile a quello di RenPy e altri motori Visual Novel:

			[color=%s]:talk[/color]
			[color=%s]say[/color] [color=%s]player[/color] "Che strana creatura…" [color=%s]default[/color] avatar_panda
			[color=%s]say[/color] [color=%s]chameleon[/color] "o sai che posso sentirti, vero?" [color=%s]default[/color] avatar_chameleon
			""" % [PINK, ORANGE, BLUE, ORANGE, ORANGE, BLUE, ORANGE,]
	},
	{
		"title": "Un moderno motore 3D",
		'picture': 'res://slides/img/sponza-2.jpg',
		"footer": "Progettato per funzionare bene con Blender Eevee"
	},
	{
		"title": "Parliamo di particelle",
		'demo': 'res://demos/many-particles/Sparkles.tscn',
		"body":
		"""


		[center][color=%s]Piuuu[/color] [color=%s]Piuuu[/color][/center]

		[center][color=%s]Boom[/color][/center]

		[center][color=%s]Ratatatatata[/color][/center]
		""" % [PINK, PINK, ORANGE, GREEN],
		"footer": "Nuovo motore = più effetti particellari"
	},
	{
		"title": "Realtà Aumentata e Virtuale",
		"body":
			"""Crea giochi per [color=%s]Occulus Rift[/color], [color=%s]Gear VR[/color] e molti altri con Godot 3 e OpenVR di Valve.

			La [color=%s]Realtà Aumentata[/color] è anche supportata, tramite ARKit.
			""" % [PINK, PINK, GREEN],
		'picture': 'res://slides/img/arkit-1280x720.jpg',
		"footer": "Lavoro di Bastiaan Olij, con l'aiuto di Karroffel e Hinsbart"
	},
	{
		'title': 'Realtà Aumentata',
		'footer': 'Bastiaan non è un artista, ma funziona perfettamente!',
		'video': 'res://slides/video/godot-arkit.ogv'
	},
	{
		'title': 'Realtà Virtuale',
		'video': 'res://slides/video/vr-capture.ogv',
		'config': {
			'video_size': {
				'x': 756,
				'y': 840
			}
		}
	},
	{
		"title": "Interfacce utente complesse...",
		"subtitle": "...rese il più facile possibile",
		"body":
			"""Sistema di [color=%s]Contenitori[/color], schede, margini, [color=%s]ancore[/color], grafici di nodi...

			Godot è dotato di strumenti di progettazione e programmazione dell'interfaccia utente molto robusti. Layout dell'interfaccia utente automatizzati, allineamento intelligente come Photoshop, griglia e guide...

			È possibile progettare tutta l'interfaccia utente del gioco e dei plugin all'interno dell' editor.
			""" % [GREEN, GREEN],
		'picture': 'res://slides/img/rpg-in-a-box-graph.png',
		"footer": "'RPG in a box': un editor RPG realizzato in Godot"
	},
	{
		"title": "Sincronizza script, sincronizza scene",
		"body":
			"""Prova il tuo gioco. Modifica uno script, una scena, un livello: il cambiamento si riflette [color=%s]in gioco, in tempo reale[/color].

			Funziona anche con smartphone e dispositivi remoti.

			Le modifiche vengono anche [color=%s]salvate[/color] dopo aver chiuso il gioco.
			""" % [BLUE, BLUE],
		'picture': 'res://slides/img/jotsway-canyon-screen.png',
		"footer": "Jotsway Canyon, RPG tattico di Johnny Goss"
	},
	{
		'title': 'Sincronizzazione script su Jotsway Canyon',
		'video': 'res://slides/video/jotsway-canyon-live-scripting.ogv'
	},
	{
		"title": "Modalità utensile: Godot-ception",
		"body":
			"""Aggiungi la parola chiave '[color=%s]tool[/color]' nella parte iniziale degli script: il codice verrà eseguito nell'editor!

			Utilizza '[color=%s]tool[/color]' per visualizzare il percorso di pattuglia di una IA, provare una generazione procedurale, migliorare l'editor di livelli...
			""" % [ORANGE, ORANGE],
		'picture': 'res://slides/img/teddy-game.jpg',
		"footer": ""
	},
	{
		'title': 'Asset dropper di Andreas Esau',
		'video': 'res://slides/video/andreas-godot-asset-drop.ogv'
	},
	{
		'title': 'Get Teddy di Guaranapps',
		'video': 'res://slides/video/guaranapps-level-editor.ogv'
	},
	{
		'title': 'Wallrider, di Zylann',
		'video': 'res://slides/video/zylann-wallrider-canon-level.ogv'
	},
	{
		'title': 'Modalità utensile in Wallrider',
		'video': 'res://slides/video/zylann-wallrider-canon-tool.ogv'
	},
]


var create = [
	{
		"title": "Cosa puoi fare con Godot?",
		"subtitle": "Giochi, come avrete immaginato",
		"footer": "Ma c'è dell'altro!",
		'video': 'res://slides/video/furry-defenders.ogv'
	},
	{
		"title": "Applicazioni",
		"subtitle": "Per esempio, questa presentazione",
		"video": 'res://slides/video/presentaception.ogv'
	},
	{
		"title": "Motori di gioco?!",
		"subtitle": "Benvenuti a 'RPG in a box'",
#		"body":
#			"""L' interfaccia ti ricorda qualcosa? Ecco RPG in a Box, un software voxel RPG per la creazione di software ideato utilizzando Godot.
#			""",
		'picture': 'res://slides/img/rpg-in-a-box-map.png',
		"footer": ""
	},
	{
		"title": "Rogue-like in RPG in a Box",
		"subtitle": "Un gioco, fatto con un motore, fatto con un motore, fatto con un motore",
		'video': 'res://slides/video/rpg-in-a-box-roguelike.ogv',
	},
]


var learning = [
	{
		"title": "Come imparare Godot?",
		"subtitle": "Le risorse da utilizzare",
		'body':
		"""Godot offre:

		- Una [color=%s]community[/color] [b]molto[/b] attiva. Social network, forum, IRC, Discord...
		- Un sito di [color=%s]Domande/Risposte[/color]
		- [color=%s]Tutorial[/color] ufficiali e un [color=%s]manuale online[/color]
		- [color=%s]Documentazione integrata[/color], disponibile all'interno dell'editor
		- Demo Open Source
		""" % [BLUE, BLUE, GREEN, GREEN, PINK],
		'picture': 'res://slides/img/docs-community-websites.png',
		"footer": "La maggior parte delle risorse sono in inglese. Una buona opportunità per esercitarsi."
	},
	{
		"title": "Documentazione incorporata",
		"subtitle": "Non è necessario passare al browser Web",
		'body':
		"""Selezionare il testo nell'editor dello script, premere [color=%s]Shift F1[/color]:

		Un elenco di nodi, variabili e funzioni corrispondenti appare istantaneamente.

		La documentazione si apre [color=%s]direttamente nell'editor di script[/color].
		""" % [PINK, PINK],
		'picture': 'res://slides/img/docs-integrated-help.png',
		"footer": "Premere F4 per iniziare con una barra di ricerca vuota"
	},
	{
		"title": "Creatori di contenuti",
		"subtitle": "Alcune indicazioni per iniziare",
		'body':
		"""Ci sono ancora poche serie di video tutorial buone e gratuite per Godot. Tre canali consigliati:

		- [color=%s]KidsCanCode[/color], serie complete per principianti
		- [color=%s]Angega Studios[/color], serie complete per principianti
		- [color=%s]GDQuest[/color], per gli utenti intermedi
		""" % [ORANGE, PINK, BLUE],
		'picture': '',
		"footer": "Potete anche seguire Heartbeast e Ivan Skodje"
	}
]


var questions = [{
		"title": "Grazie!",
		"subtitle": "Domande?",
		'body':
		"""Questa presentazione è Open Source, si può ottenere su [url=https://github.com/GDquest/godot-3-presentation]GitHub[/url]

		Credits:

		Furry Defenders by [url=http://www.kivano.games/]Kivano[/url]
		[url=https://play.google.com/store/apps/details?id=fr.guaranapps.games.get_teddy]Get Teddy[/url] by Guaranapps
		[url=https://jaggygames.itch.io/jotswaycanyon]Jotsway Canyon[/url] by JaggyGames
		[url=http://www.rpginabox.com/]RPG in a Box[/url] by Justin
		[url=https://www.youtube.com/user/ndee85]Andreas Esau[/url]
		Wallrider by [url=https://www.youtube.com/user/ZylannMP3/videos]Zylann Productions[/url]
		""",
		'picture': 'res://slides/img/gdquest-business-card.png',
		"footer": ""
}]
