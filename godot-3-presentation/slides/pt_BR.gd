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
		"title": "Sua filosofia: tudo em um",
		"body":
			"""Se falta algo essencial, nós adicionamos!

			- Editor de código com documentação embutida e autocompletar
			- Editor de [color=%s]animação[/color] com [i]rigging[/i] 2d
			- Linguagem de programação visual para os designers
			- Editor de [i][color=%s]shaders[/color][/i] tradicional e visual*
			""" % [BLUE, GREEN],
		'picture': 'res://slides/img/godot-2-shader-editor.png',
		"footer": "*Indisponível na versão 3.0, previsto para a 3.1"
	},
	{
		"title": "Três linguagens de programação",
		'subtitle': 'Para tornar sua vida mais fácil',
		"body":
			"""Programe mais rápido com:

			- [color=%s]GDScript[/color], inspirada em Python e Lua, concebida para jogos
			- [color=%s]VisualScript[/color], para os artistas e [i]designers[/i] de sua equpe
			- [color=%s]ShaderScript[/color], para facilitar a criação de materiais
			""" % [PINK, BLUE, GREEN],
		'picture': 'res://slides/img/visual-script.png'
	},
	{
		"title": "Exemplo de GDScript",
		'picture': 'res://slides/img/gdscript-example.png'
	}
]


var health = [
	{
		"title": "O tamanho não importa",
		'subtitle': 'Vinte megabytes de pura alegria',
		"body":
			"""Apenas um executável de [color=%s]20 MB[/color]:

			- Baixe em [color=%s]poucos segundos[/color]
			- [color=%s]Não necessita de instalação[/color]

			Tudo o que ocupa mais espaço é opcional: [i]templates[/i] de exportação, Mono e C#...
			""" % [BLUE, BLUE, BLUE],
		'picture': 'res://slides/img/multiplatform-editor.jpg',
		"footer": "Um pequeno arquivo contém o motor, ferramentas para UI e tudo que precisa para fazer seu jogo"
	},
	{
		"title": "Novidades do Godot 3",
		'subtitle': 'Apertem os cintos...',
		'picture': 'res://slides/img/gltf-damaged-helmet.jpg',
		"footer": "Tudo a seguir foi feito em um pouco mais de um ano de desenvolvimento"
	},
	{
		"demo": "res://demos/new-in-godot-3/img.tscn"
	},
	{
		"title": "Bem... O tamanho importa sim",
		"subtitle": "The cake was a lie!",
		"body":
			"""Um projeto livre [color=%s]em ótima forma[/color]:

			- [color=%s]450+[/color] contribuidores
			- 10 000+ commits
			- 11 000+ stars

			[color=%s]6000$[/color] por mês no Patreon, apoio da Mozilla e até da Microsoft para suportar C#
			""" % [GREEN, GREEN, GREEN],
		'picture': 'res://slides/img/github-pulse-october.png',
		"footer": "Juan, o desenvolvedor-chefe, já recusou ofertas de trabalho de outros motores"
	},
	{
		"title": "Godot atrai os profissionais",
		"subtitle": "",
		"body":
			"""Estes profissionais já usam Godot 2.1:

			- [color=%s][i]Game studios[/i][/color]: Gamblify, Guaranapps...
			- [color=%s]Escolas[/color]: School4Games, KidsCanCode...
			- Os [color=%s]criadores de conteúdo[/color]: Heartbeast, [i]GDQuest[/i]...
			""" % [PINK, BLUE, GREEN],
		'picture': 'res://slides/img/gamblify-monsters-5.jpg',
		"footer": "Preparem-se para ainda mais após o lançamento do Godot 3.0"
	}
]


var concepts = [
	{
		"title": "Os princípios do Godot",
		"subtitle": "O que o faz único",
		"body":
			"""Todo motor de jogo é diferente. Godot possui duas principais particularidades:

			- Integração de todas [color=%s]ferramentas[/color] para produzir seu jogo: [color=%s]editor de níveis[/color], [color=%s]de animação[/color], etc.
			- Não força padrões de projeto de software clássicos como [color=%s]MVC[/color]* ou [color=%s]ECS[/color]*

			Godot usa [color=%s]node tree[/color] ou [color=%s]árvore de nós[/color].
			""" % [BLUE, BLUE, BLUE, GREEN, GREEN, GREEN, GREEN],
		'picture': 'res://slides/img/node-tree.png',
		'footer': '*Model-View-Controller e Entity-Component System'
	},
	{
		"title": "Um editor orientado a objetos",
		"subtitle": "Herança, hierarquia e liberdade",
		"body":
			"""Toda cena de seu jogo é uma [color=%s]árvore[/color] de nós.

			Um grupo de nós pode ser salvo* como uma cena: torna-se um [color=%s]ramo[/color].

			Todos os nós [color=%s]herdam[/color] dos nós base e funcionam de maneira parecida.
			""" % [GREEN, BLUE, PINK],
		'picture': 'res://slides/img/node-tree-2.png',
		'footer': '*Encapsulamento, visto de uma perspectiva de programação orientada a objetos.\nIsso ajuda a estruturar suas cenas de modo que reflitam o seu game design.'
	},
	{
		"title": "Godot é um jogo Godot",
		"subtitle": "O editor usa o mesmo motor que você",
		"body":
			"""A interface do editor utiliza os [color=%s]nós de UI[/color] do próprio motor.

			Eles não são apenas poderosos: você pode criar [color=%s]plugins[/color] da mesma maneira que cria jogos.
			""" % [GREEN, GREEN],
		'picture': 'res://slides/img/fsm-plugin.png',
		'footer': 'Godot também possui uma loja de assets integrada, como Unity ou Game Maker'
	},
	{
		"title": "Unity, Godot, qual é o melhor?",
		"subtitle": "TL;DR: esqueça essa história de 'melhor'",
		"body":
			"""Cada motor de jogo [color=%s]resolve necessidades distintas.[/color]

			[i]Unity, Unreal, Godot, Game Maker, Phaser, LibGDX...[/i] Todos são válidos, dependendo do seu projeto.

			Atualmente, [color=%s]Godot[/color] responde bem às necessidades dos [color=%s]indies[/color].
			""" % [BLUE, BLUE, BLUE],
		'picture': 'res://slides/img/engine-logos.png',
		'footer': 'Não há o melhor motor: apenas a tecnologia que melhor se adequa às suas necessidades.\nComo escolher a ferramenta certa? Através da experiência e protótipos'
	}
]


var features = [
	{
		"title": "Algumas funcionalidades...",
		"subtitle": "...entre muitas outras",
		"body":
			"""Mototres de jogos são tão [color=%s]complexos[/color] que é difícil descobrir o que podem fazer.

			Há muitas novas ferramentas no Godot 3, mas há muitas ferramentas interessantes desde o Godot 2.

			Aqui vão algumas características que destacam o motor.
			""" % PINK,
		'picture': 'res://slides/img/some-features.png',
		"footer": "Comecemos pelas que agradam os desenvolvedores"
	},
	{
		"title": "Programe em C#",
		"subtitle": "Para os programadores de C# e os usuários do Unity",
		"body":
			"""[color=%s]C#[/color] está disponível a partir da versão 3.0

			Baseado na versão mais recente do compilador Mono,
			Programe com XamarinStudio, VSCode, e Visual Studio

			É uma das três linguagens inclusas no editor, além do GDScript e VisualScript
			""" % ORANGE,
		'picture': 'res://slides/img/c-sharp-vstudio.png',
		"footer": "Trabalho feito por Ignacio R. Etcheverry, apoiado pela Microsoft"
	},
	{
		"title": "GDNative",
		"subtitle": "Desempenho nativo sem a necessidade de compilar",
		"body":
			"""Use qualquer biblioteca [color=%s]dinamicamente[/color] com desempenho próximo ao nativo

			GDnative expõe [b]todas[/b] as funções do motor, ligando-o com bibliotecas externas

			Linguagens suportadas: [color=%s]C[/color], [color=%s]C[/color]++, [color=%s]Rust[/color], [color=%s]Python[/color], e [color=%s]D[/color] graças à comunidade
			""" % [GREEN, ORANGE, ORANGE, PINK, GREEN, GREEN],
		'picture': 'res://slides/img/gdnative.png',
		"footer": "Sim, C e C++ sem recompilar o motor! Agradecimentos a Karroffel e Bojidar"
	},
	{
		"title": "Sinais ou o observador integrado",
		"subtitle": "Envie sinais entre seus nós sem precisar acoplá-los",
		"body":
			"""[color=%s]Conecte[/color] nós através do código ou do editor sem expor dados desnecessários.

			Defina seus próprios sinais ou use os vários já prédefinidos. Ligue variáveis e envie valores juntos ao sinal.
			""" % BLUE,
		"picture": "res://slides/img/signals.png",
		"footer": "Por exemplo, atualizar a barra de vida de um personagem quando este recebe um ataque"
	},
	{
		"title": "Exemplo de sinais",
		"demo": "res://demos/lifebar/LevelMockup.tscn"
	},
	{
		"title": "Anime qualquer coisa...",
		"subtitle": "...não importa o quê!",
		"body":
			"""Anime [b]qualquer[/b] propriedade de [b]qualquer[/b] nó.

			[color=%s]Tamanho[/color], [color=%s]posição[/color], ativar/desativar [color=%s]colisões[/color], [color=%s][i]booleans[/i][/color]...
			
			Chame funções no editor de animação.
			""" % [BLUE, BLUE, GREEN, GREEN],
		'picture': 'res://slides/img/godot-skeleton-1280x720.png',
		"footer": "GoBot de Andreas Esau"
	},
	{
		"title": "Mecânicas de combate baseadas em animação",
		"demo": "res://demos/characters_and_weapons/Game.tscn",
		"footer": "Não é incrível?"
	},
	{
		"title": "Editor de tilemaps",
		"subtitle": "Vista superior e isométrica",
		'picture': 'res://slides/img/isometric-tilemap.png',
	},
	{
		"title": "Escoria para jogos de aventura",
		"subtitle": "Point & Click, árvores de diálogos...",
		'picture': 'res://slides/img/dog-mendoza.png',
		"body":
			"""Escoria oferece uma linguagem natural para a escrita de jogos de aventura assim como RenPy e outros motores de Visual Novel:

			[color=%s]:talk[/color]
			[color=%s]say[/color] [color=%s]player[/color] "Que criatura estranha…" [color=%s]default[/color] avatar_panda
			[color=%s]say[/color] [color=%s]chameleon[/color] "Sabe que posso te ouvir, não?" [color=%s]default[/color] avatar_chameleon
			""" % [PINK, ORANGE, BLUE, ORANGE, ORANGE, BLUE, ORANGE,]
	},
	{
		"title": "Um moderno motor 3D",
		'picture': 'res://slides/img/sponza-2.jpg',
		"footer": "Pensado para integrar-se bem com o Eevee do Blender"
	},
	{
		"title": "Agora vamos falar de partículas",
		'demo': 'res://demos/many-particles/Sparkles.tscn',
		"body":
		"""


		[center][color=%s]Piuuu[/color] [color=%s]Piuuu[/color][/center]

		[center][color=%s]Boom[/color][/center]

		[center][color=%s]Ratatatatata[/color][/center]
		""" % [PINK, PINK, ORANGE, GREEN],
		"footer": "Novo motor = muito mais partículas"
	},
	{
		"title": "Realidade Virtual e Aumentada",
		"body":
			"""Crie jogos para[color=%s]Occulus Rift[/color], [color=%s]Gear VR[/color] e outros no Godot 3 através do OpenVR da Valve.

			Também crie jogos em [color=%s]realidade aumentada[/color] com o ARKit.
			""" % [PINK, PINK, GREEN],
		'picture': 'res://slides/img/arkit-1280x720.jpg',
		"footer": "Por Bastiaan Olij, com ajuda de Karroffel e Hinsbart"
	},
	{
		'title': 'Realidade aumentada',
		'footer': 'Bastiaan não é um artista, mas funciona muito bem!',
		'video': 'res://slides/video/godot-arkit.ogv'
	},
	{
		'title': 'Realidade Virtual',
		'video': 'res://slides/video/vr-capture.ogv',
		'config': {
			'video_size': {
				'x': 756,
				'y': 840
			}
		}
	},
	{
		"title": "Interfaces de usuário complexas...",
		"subtitle": "...e flexíveis",
		"body":
			"""Sistema de [color=%s]contêineres[/color], tabulações, margens, [color=%s]ancoragem[/color], gráficos de nós...

                        Godot possui suas próprias robustas ferramentas para programação e para design de UI. Leiautes automatizados de UI, alinhamento inteligente como no Photoshop, grades e guias...

			Você pode desenvolver seus jogos e plugins no editor.
			""" % [GREEN, GREEN],
		'picture': 'res://slides/img/rpg-in-a-box-graph.png',
		"footer": "RPG in a Box: um editor de RPG feito no Godot. Trabalho de Bastiaan Olij"
	},
	{
		"title": "Sincronize cenas e scripts",
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
