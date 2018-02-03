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
	print(len(data))


var intro = [
	{
		"title": "O motor que você sempre quis",
		"subtitle": "Poderoso, gratuito e livre",
		'picture': 'res://slides/img/realtime-global-illumination.jpg',
		"footer": "Veja 'Esperando Godot' de Beckett"
	},
	{
		"title": "O que é Godot?",
		"body":
			"""[b]Um[b] motor livre estilo Unity que possui:

			- Motores [color=%s]2d[/color] e [color=%s]3d[/color] separados
			- Um editor completo para criar seus níveis
			- Suporte para PC, Mac e Linux
			- Exporta para PC, mobile, web*""" % [BLUE, PINK],
		'picture': 'res://slides/img/2d-viewport-2.x.png',
		"footer": "*E consoles para os profissionais"
	},
	{
		"title": "Exemplo de um port usando Godot",
		"subtitles": "Versão PS4 de Deponia",
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
			""" % [BLUE, GREEN],
		'picture': 'res://slides/img/godot-2-shader-editor.png',
		"footer": "*Indisponible dans la 3.0, retour prévu pour la 3.1"
	},
	{
		"title": "Trois langages de programmation",
		'subtitle': 'Conçus pour vous simplifier la vie',
		"body":
			"""Programmez plus vite à l'aide de:

			- [color=%s]GDScript[/color], inspiré de Python et Lua, conçu pour les jeux
			- [color=%s]VisualScript[/color], pour les artistes et designers en équipe
			- [color=%s]ShaderScript[/color], facilite la création de matériaux
			""" % [PINK, BLUE, GREEN],
		'picture': 'res://slides/img/visual-script.png'
	},
	{
		"title": "Exemple de GDScript",
		'picture': 'res://slides/img/gdscript-example.png'
	}
]


var health = [
	{
		"title": "C'est pas la taille qui compte",
		'subtitle': 'Vingt mégaoctets de pur bonheur',
		"body":
			"""Un seul exécutable de [color=%s]20mo[/color]:

			- Téléchargez le [color=%s]en quelques secondes[/color]
			- [color=%s]Pas d'installation[/color]

			Tout ce qui ajoute du poids est en option: templates d'export mobile, mono et C#...
			""" % [BLUE, BLUE, BLUE],
		'picture': 'res://slides/img/multiplatform-editor.jpg',
		"footer": "Ce petit fichier contient le moteur, les outils d'UI et tout pour faire un jeu complet"
	},
	{
		"title": "Nouveau dans Godot 3",
		'subtitle': 'Attachez vos ceintures...',
		'picture': 'res://slides/img/gltf-damaged-helmet.jpg',
		"footer": "Le tout en un peu plus d'un an de développement"
	},
	{
		"demo": "res://demos/new-in-godot-3/img.tscn"
	},
	{
		"title": "C'est bien la taille qui compte",
		"subtitle": "On vous a menti depuis le début!",
		"body":
			"""Un projet libre [color=%s]en pleine forme[/color]:

			- [color=%s]450+[/color] contributeurs
			- 10 000+ commits
			- 11 000+ étoiles

			Financé à hauteur de [color=%s]4000$[/color] par mois sur Patreon, sponsorisé par Mozilla et même Microsoft pour le support de C#
			""" % [GREEN, GREEN, GREEN],
		'picture': 'res://slides/img/github-pulse-october.png',
		"footer": "Juan, le lead développeur, a déjà refusé des postes sur les autres moteurs"
	},
	{
		"title": "Les pros s'y intéressent doucement",
		"subtitle": "",
		"body":
			"""Des professionnels utilisent déjà Godot 2.0:

			- Que ce soient les [color=%s]studios[/color]: Gamblify, Guaranapps...
			- Les [color=%s]écoles[/color]: School4Games, KidsCanCode...
			- Les [color=%s]vidéastes[/color]: Heartbeast, [i]GDQuest[/i]...
			""" % [PINK, BLUE, GREEN],
		'picture': 'res://slides/img/gamblify-monsters-5.jpg',
		"footer": "Attendez-vous à voir plus de monde après la sortie de Godot 3.0"
	}
]


var concepts = [
	{
		"title": "Les grands principes de Godot",
		"subtitle": "Voyons un peu ce qui le rend unique",
		"body":
			"""Chaque moteur de jeu est différent. Godot a deux particularités:

			- Il intègre tous les [color=%s]outils[/color] pour produire votre jeu: [color=%s]éditeur de niveaux[/color], [color=%s]d'animation[/color], etc.
			- Pas de modèle de programmation classique comme le [color=%s]MVC[/color]* ou l'[color=%s]ECS[/color]*

			Dans Godot on parle de [color=%s]node tree[/color] ou [color=%s]arbre de noeuds[/color].
			""" % [BLUE, BLUE, BLUE, GREEN, GREEN, GREEN, GREEN],
		'picture': 'res://slides/img/node-tree.png',
		'footer': '*Model-View-Controller et Entity-Component System'
	},
	{
		"title": "Un éditeur Orienté Objet",
		"subtitle": "Héritage, hiérarchie et liberté: est-ce cela, la flexi-sécurité?",
		"body":
			"""Chaque écran de jeu est un [color=%s]arbre[/color] de nodes.

			Un groupe de nodes peut être sauvé* dans une scène: une [color=%s]branche[/color].

			Tous les nodes [color=%s]héritent[/color] de noeuds de base et fonctionnent un peu pareil.
			""" % [GREEN, BLUE, PINK],
		'picture': 'res://slides/img/node-tree-2.png',
		'footer': '*Encapsulé, pour parler en termes de programmation orientée objet.\nCe design orienté objet vous aide à structurer vos scènes pour refléter votre game design.'
	},
	{
		"title": "Godot est un jeu Godot",
		"subtitle": "L'éditeur utilise le même moteur que vous",
		"body":
			"""L'interface repose sur les [color=%s]nodes d'interface[/color] du moteur.

			Ceux-ci ne sont pas que puissants: vous pouvez créer des [color=%s]plugins[/color] de la même manière que vous créez vos jeux.
			""" % [GREEN, GREEN],
		'picture': 'res://slides/img/fsm-plugin.png',
		'footer': 'L\'éditeur possède un asset store intégré, comme Unity ou Game maker'
	},
	{
		"title": "Unity, Godot, c'est qui le meilleur?",
		"subtitle": "TL;DR: oubliez les histoire de 'meilleur'",
		"body":
			"""Chaque moteur de jeu [color=%s]répond à des besoins différents.[/color]

			[i]Unity, Unreal, Godot, Game Maker, Phaser, LibGDX...[/i] Tous sont valables en fonction du projet.

			Aujourd'hui, [color=%s]Godot[/color] répond bien aux besoins des [color=%s]indépendents[/color].
			""" % [BLUE, BLUE, BLUE],
		'picture': 'res://slides/img/engine-logos.png',
		'footer': 'Il n\'y a pas de meilleur moteur: seulement des technologies adaptées à un jeu donné.\nComment choisir le bon outil? Avec de l\'expérience et des prototypes'
	}
]


var features = [
	{
		"title": "Quelques features...",
		"subtitle": "...parmi tant d'autres",
		"body":
			"""les moteurs sont si [color=%s]complexes[/color] qu'il est difficile de s'y retrouver.

			Il y a beaucoup de nouveautés dans Godot 3, mais aussi beaucoup d'outils intéressants dans Godot 2.

			Voici quelques fonctionalités choisies qui démarquent ce moteur.
			""" % PINK,
		'picture': 'res://slides/img/some-features.png',
		"footer": "On commence avec les trucs qui feront plaisir aux développeurs"
	},
	{
		"title": "Programmez en C#",
		"subtitle": "De quoi ravir les programmeurs Unity",
		"body":
			"""La programmation en [color=%s]C#[/color] est disponible sous 3.0

			Basé sur la dernière version de Mono,
			Support de XamarinStudio, VSCode, et Visual Studio

			C'est l'un des trois langages inclus dans l'éditeur, avec GDScript et VisualScript
			""" % ORANGE,
		'picture': 'res://slides/img/c-sharp-vstudio.png',
		"footer": "Travail réalisé par Ignacio R. Etcheverry, sponsorisé par Microsoft"
	},
	{
		"title": "Les performances sans compiler",
		"subtitle": "Bindings dynamiques avec GDNative",
		"body":
			"""Utilisez n'importe quelle librairie [color=%s]dynamiquement[/color]

			GDnative expose [b]toutes[/b] les fonctions du moteur

			Support des langages [color=%s]C[/color], [color=%s]C[/color]++, [color=%s]Rust[/color], et [color=%s]D[/color] par la communauté
			""" % [GREEN, ORANGE, ORANGE, PINK, GREEN],
		'picture': 'res://slides/img/gdnative.png',
		"footer": "Oui, du C et du C++ sans re-compiler le moteur! Par Karroffel et Bojidar"
	},
	{
		"title": "Signals ou l'observer intégré",
		"subtitle": "Faites communiquer vos nodes sans les coupler",
		"body":
			"""[color=%s]Connectez[/color] des scènes entre elles dans le code ou via l'interface, sans les exposer mutuellement.

			Par exemple pour mettre à jour la barre de vie d'un personnage lorsqu'il prend un coup.
			""" % BLUE,
		"picture": "res://slides/img/signals.png",
		"footer": ""
	},
	{
		"title": "Exemple de signals",
		"demo": "res://demos/lifebar/LevelMockup.tscn"
	},
	{
		"title": "Animez tout...",
		"subtitle": "...et n'importe quoi!",
		"body":
			"""Animez [b]toutes[/b] les propriétés de [b]tous[/b] les noeuds.

			[color=%s]Taille[/color], [color=%s]position[/color], activez/désactivez les [color=%s]collisions[/color], activez des [color=%s]interrupteurs[/color]...
			""" % [BLUE, BLUE, GREEN, GREEN],
		'picture': 'res://slides/img/godot-skeleton-1280x720.png',
		"footer": "GoBot par Andreas Esau"
	},
	{
		"title": "Combat à base d'animation",
		"demo": "res://demos/characters_and_weapons/Game.tscn",
		"footer": "Avouez que c'est à couper le souffle!"
	},
	{
		"title": "Éditeur de tilemaps",
		"subtitle": "En vue de haut comme isométrique",
		'picture': 'res://slides/img/isometric-tilemap.png',
	},
	{
		"title": "Escoria pour les jeux d'aventure",
		"subtitle": "Point & Click, arbres de dialogues...",
		'picture': 'res://slides/img/dog-mendoza.png',
		"body":
			"""Escoria offre un langage pour écrire des jeux d'aventure dans la veine de RenPy et autres moteurs de Visual Novel:

			[color=%s]:talk[/color]
			[color=%s]say[/color] [color=%s]player[/color] "What a strange critter…" [color=%s]default[/color] avatar_panda
			[color=%s]say[/color] [color=%s]chameleon[/color] "You know I can hear you, right?" [color=%s]default[/color] avatar_chameleon
			""" % [PINK, ORANGE, BLUE, ORANGE, ORANGE, BLUE, ORANGE,]
	},
	{
		"title": "Moteur 3d dans l'ère du temps",
		'picture': 'res://slides/img/sponza-2.jpg',
		"footer": "Pensé pour offrir un rendu proche de Blender Eevee"
	},
	{
		"title": "Parlons un peu particules",
		'demo': 'res://demos/many-particles/Sparkles.tscn',
		"body":
		"""


		[center][color=%s]Piuuu[/color] [color=%s]Piuuu[/color][/center]

		[center][color=%s]Boom[/color][/center]

		[center][color=%s]Ratatatatata[/color][/center]
		""" % [PINK, PINK, ORANGE, GREEN],
		"footer": "Nouveau moteur = beaucoup plus de particules"
	},
	{
		"title": "Réalité Virtuelle et Augmentée",
		"body":
			"""Créez des jeux pour l'[color=%s]Occulus Rift[/color], le [color=%s]Gear VR[/color] et bien d'autres dans Godot 3.

			Créez des jeux en [color=%s]réalité augmentée[/color] avec l'ARKit.
			""" % [PINK, PINK, GREEN],
		'picture': 'res://slides/img/arkit-1280x720.jpg',
		"footer": "Gros du par Bastiaan Olij, avec l'aide de Karroffel et Hinsbart"
	},
	{
		'title': 'Réalité augmentée',
		'footer': 'Certes, Bastiaan n\'est pas un artiste, mais ça marche!',
		'video': 'res://slides/video/godot-arkit.ogv'
	},
	{
		'title': 'Réalité Virtuelle',
		'video': 'res://slides/video/vr-capture.ogv',
		'config': {
			'video_size': {
				'x': 756,
				'y': 840
			}
		}
	},
	{
		"title": "Interfaces complexes...",
		"subtitle": "...et flexibles",
		"body":
			"""Système de [color=%s]conteneurs[/color], tabs, marges, [color=%s]ancrage[/color]...

			Vous pouvez mettre en page toute votre UI dans l'éditeur
			""" % [GREEN, GREEN],
		'picture': 'res://slides/img/rpg-in-a-box-graph.png',
		"footer": "Travail par Bastiaan Olij"
	},
	{
		"title": "Sync script, sync scenes",
		"body":
			"""Testez votre jeu. Modifiez un script, une scène, un niveau: le changement est [color=%s]immédiat[/color].

			Cela marche aussi avec votre téléphone et sur plusieurs appareils en simultané.

			Les changements sont [color=%s]sauvegardés[/color] même quand vous fermez le jeu.
			""" % [BLUE, BLUE],
		'picture': 'res://slides/img/jotsway-canyon-screen.png',
		"footer": "Jotsway Canyon, jeu de combats tactiques par Johnny Goss"
	},
	{
		'title': 'Script sync sur Jotsway Canyon',
		'video': 'res://slides/video/jotsway-canyon-live-scripting.ogv'
	},
	{
		"title": "Tool mode: la Godot-ception",
		"body":
			"""Ajoutez le mot clé [color=%s]tool[/color] en haut de vos scripts: ils fonctionnent dans l'éditeur!

			Utilisez [color=%s]tool[/color] pour visualiser le chemin de patrouille d'une IA, tester la génération aléatoire, améliorer l'éditeur de niveaux...
			""" % [ORANGE, ORANGE],
		'picture': 'res://slides/img/teddy-game.jpg',
		"footer": ""
	},
	{
		'title': 'Asset dropper par Andreas Esau',
		'video': 'res://slides/video/andreas-godot-asset-drop.ogv'
	},
	{
		'title': 'Get Teddy par Guaranapps',
		'video': 'res://slides/video/guaranapps-level-editor.ogv'
	},
	{
		'title': 'Wallrider, par Zylann',
		'video': 'res://slides/video/zylann-wallrider-canon-level.ogv'
	},
	{
		'title': 'Tool mode dans Wallrider',
		'video': 'res://slides/video/zylann-wallrider-canon-tool.ogv'
	},
]


var create = [
	{
		"title": "Que peut-on faire avec Godot?",
		"subtitle": "Déjà des jeux, cela semble logique",
#		"footer": "Pour faire court: beaucoup, beaucoup de choses",
		'video': 'res://slides/video/furry-defenders.ogv',
	},
	{
		"title": "Des applications",
		"subtitle": "Par exemple, cette présentation",
		"video": 'res://slides/video/presentaception.ogv',
	},
	{
		"title": "Des... moteurs de jeux???",
		"subtitle": "Bienvenue dans RPG in a Box",
#		"body":
#			"""L'interface vous rappelle quelque chose? Voici RPG in a Box, un logiciel de création de RPG en voxels conçu à l'aide de Godot.
#			""",
		'picture': 'res://slides/img/rpg-in-a-box-map.png',
		"footer": ""
	},
	{
		"title": "RPG in a Box",
		"subtitle": "Un jeu, fait avec un moteur, fait avec un moteur",
		'video': 'res://slides/video/rpg-in-a-box-roguelike.ogv',
	},
]


var learning = [
	{
		"title": "Comment apprendre Godot?",
		"subtitle": "Et où, en fait?",
		'body':
		"""Godot offre:

		- Une [color=%s]communauté[/color] [b]très[/b] active. Réseaux sociaux, forum, IRC, Discord...
		- Un site de [color=%s]questions/réponses[/color]
		- Des [color=%s]tutoriels[/color] et un [color=%s]manuel[/color] en ligne
		- Une [color=%s]référence intégrée[/color] à l'éditeur
		- Un pack de démos open source
		""" % [BLUE, BLUE, GREEN, GREEN, PINK],
		'picture': 'res://slides/img/docs-community-websites.png',
		"footer": "La majorité des ressources sont en anglais. Une bonne occasion de pratiquer."
	},
	{
		"title": "L'aide intégrée",
		"subtitle": "Pas besoin de jongler avec votre navigateur",
		'body':
		"""Sélectionnez du texte dans l'éditeur de script, appuyez sur [color=%s]Shift F1[/color]:

		Une liste des nodes, variables et fonctions correspondantes apparait instantannément.
		La documentation s'ouvre [color=%s]dans l'éditeur de scripts[/color].
		""" % [PINK, PINK],
		'picture': 'res://slides/img/docs-integrated-help.png',
		"footer": "Appuyez sur F4 pour ouvrir la fenêtre de recherche dans la référence"
	},
	{
		"title": "Vidéastes",
		"subtitle": "Quelques recommendations pour débuter",
		'body':
		"""Il existe encore peu de séries de tutoriels vidéo gratuits de qualité sur Godot. Je vous recommande 3 chaînes:

		- [color=%s]KidsCanCode[/color], pour débutants, séries complètes
		- [color=%s]Angega Studios[/color], pour débutants/intermédiaires, séries complètes
		- [color=%s]GDQuest[/color], niveau intermédiaire
		""" % [ORANGE, PINK, BLUE],
		'picture': '',
		"footer": "Vous pouvez aussi suivre Heartbeast et Ivan Skodje"
	}
]


var gdquest = [
	{
		"title": "Game Design Quest",
		"subtitle": "La création de jeux vidéo à l’aide d'outils libres",
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
