extends 'properties.gd'


func _init():
	for array in [intro, health, concepts, features, learning, questions]:
		for val in array:
			data.push_back(val)
	print(len(data))


var intro = [
	{
		"title": "O motor que você sempre quis",
		"subtitle": "Poderoso, gratuito e livre",
		'picture': 'realtime-global-illumination.jpg',
		"footer": "Veja 'Esperando Godot' de Beckett"
	},
	{
		"title": "O que é Godot?",
		"body":
			"""[b]Um[b] motor livre estilo Unity que possui:

			- Motores [color=%s]2D[/color] e [color=%s]3D[/color] separados
			- Um editor completo para criar seus níveis
			- Suporte para PC, Mac e Linux
			- Exporta para PC, mobile, web*""" % [BLUE, PINK],
		'picture': '2d-viewport-2.x.png',
		"footer": "*E consoles para os profissionais"
	},
	{
		"title": "Exemplo de um port usando Godot",
		"subtitles": "Versão PS4 de Deponia",
		'picture': 'deponia-ps4-game.png'
	},
	{
		"title": "Sua filosofia: tudo em um",
		"body":
			"""Se falta algo essencial, nós adicionamos!

			- Editor de código com documentação embutida e autocompletar
			- Editor de [color=%s]animação[/color] com [i]rigging[/i] 2D
			- Linguagem de programação visual para os designers
			- Editor de [i][color=%s]shaders[/color][/i] tradicional e visual*
			""" % [BLUE, GREEN],
		'picture': 'godot-2-shader-editor.png',
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
		'picture': 'visual-script.png'
	},
	{
		"title": "Exemplo de GDScript",
		'picture': 'gdscript-example.png'
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
		'picture': 'multiplatform-editor.jpg',
		"footer": "Um pequeno arquivo contém o motor, ferramentas para UI e tudo que precisa para fazer seu jogo"
	},
	{
		"title": "Novidades do Godot 3",
		'subtitle': 'Apertem os cintos...',
		'picture': 'gltf-damaged-helmet.jpg',
		"footer": "Tudo a seguir foi feito em um pouco mais de um ano de desenvolvimento"
	},
	{
		"demo": "new-in-godot-3/img.tscn"
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
		'picture': 'github-pulse-october.png',
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
		'picture': 'gamblify-monsters-5.jpg',
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
		'picture': 'node-tree.png',
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
		'picture': 'node-tree-2.png',
		'footer': '*Encapsulamento, visto de uma perspectiva de programação orientada a objetos.\nIsso ajuda a estruturar suas cenas de modo que reflitam o seu game design.'
	},
	{
		"title": "Godot é um jogo Godot",
		"subtitle": "O editor usa o mesmo motor que você",
		"body":
			"""A interface do editor utiliza os [color=%s]nós de UI[/color] do próprio motor.

			Eles não são apenas poderosos: você pode criar [color=%s]plugins[/color] da mesma maneira que cria jogos.
			""" % [GREEN, GREEN],
		'picture': 'fsm-plugin.png',
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
		'picture': 'engine-logos.png',
		'footer': 'Não há o melhor motor: apenas a tecnologia que melhor se adequa às suas necessidades.\nComo escolher a ferramenta certa? Através da experiência e protótipos'
	}
]


var features = [
	{
		"title": "Algumas funcionalidades...",
		"subtitle": "...entre muitas outras",
		"body":
			"""Motores de jogos são tão [color=%s]complexos[/color] que é difícil descobrir o que podem fazer.

			Há muitas novas ferramentas no Godot 3, mas há muitas ferramentas interessantes desde o Godot 2.

			Aqui vão algumas características que destacam o motor.
			""" % PINK,
		'picture': 'some-features.png',
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
		'picture': 'c-sharp-vstudio.png',
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
		'picture': 'gdnative.png',
		"footer": "Sim, C e C++ sem recompilar o motor! Agradecimentos a Karroffel e Bojidar"
	},
	{
		"title": "Sinais ou o observador integrado",
		"subtitle": "Envie sinais entre seus nós sem precisar acoplá-los",
		"body":
			"""[color=%s]Conecte[/color] nós através do código ou do editor sem expor dados desnecessários.

			Defina seus próprios sinais ou use os vários já prédefinidos. Ligue variáveis e envie valores juntos ao sinal.
			""" % BLUE,
		"picture": "signals.png",
		"footer": "Por exemplo, atualizar a barra de vida de um personagem quando este recebe um ataque"
	},
	{
		"title": "Exemplo de sinais",
		"demo": "lifebar/LevelMockup.tscn"
	},
	{
		"title": "Anime qualquer coisa...",
		"subtitle": "...não importa o quê!",
		"body":
			"""Anime [b]qualquer[/b] propriedade de [b]qualquer[/b] nó.

			[color=%s]Tamanho[/color], [color=%s]posição[/color], ativar/desativar [color=%s]colisões[/color], [color=%s][i]booleans[/i][/color]...

			Chame funções no editor de animação.
			""" % [BLUE, BLUE, GREEN, GREEN],
		'picture': 'godot-skeleton-1280x720.png',
		"footer": "GoBot de Andreas Esau"
	},
	{
		"title": "Combate baseado em animação",
		"demo": "characters_and_weapons/Game.tscn",
		"footer": "Não é incrível?"
	},
	{
		"title": "Editor de tilemaps",
		"subtitle": "Vista superior e isométrica",
		'picture': 'isometric-tilemap.png',
	},
	{
		"title": "Escoria para jogos de aventura",
		"subtitle": "Point & Click, árvores de diálogos...",
		'picture': 'dog-mendoza.png',
		"body":
			"""Escoria oferece uma linguagem natural para a escrita de jogos de aventura assim como RenPy e outros motores de Visual Novel:

			[color=%s]:talk[/color]
			[color=%s]say[/color] [color=%s]player[/color] "Que criatura estranha…" [color=%s]default[/color] avatar_panda
			[color=%s]say[/color] [color=%s]chameleon[/color] "Sabe que posso te ouvir, não?" [color=%s]default[/color] avatar_chameleon
			""" % [PINK, ORANGE, BLUE, ORANGE, ORANGE, BLUE, ORANGE,]
	},
	{
		"title": "Um moderno motor 3D",
		'picture': 'sponza-2.jpg',
		"footer": "Pensado para integrar-se bem com o Eevee do Blender"
	},
	{
		"title": "Agora vamos falar de partículas",
		'demo': 'many-particles/Sparkles.tscn',
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
			"""Crie jogos para [color=%s]Occulus Rift[/color], [color=%s]Gear VR[/color] e outros no Godot 3 através do OpenVR da Valve.

			Também crie jogos em [color=%s]realidade aumentada[/color] com o ARKit.
			""" % [PINK, PINK, GREEN],
		'picture': 'arkit-1280x720.jpg',
		"footer": "Por Bastiaan Olij, com ajuda de Karroffel e Hinsbart"
	},
	{
		'title': 'Realidade aumentada',
		'footer': 'Bastiaan não é um artista, mas funciona muito bem!',
		'video': 'godot-arkit.ogv'
	},
	{
		'title': 'Realidade Virtual',
		'video': 'vr-capture.ogv',
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
		'picture': 'rpg-in-a-box-graph.png',
		"footer": "RPG in a Box: um editor de RPG feito no Godot. Trabalho de Bastiaan Olij"
	},
	{
		"title": "Sincronize cenas e scripts",
		"body":
			"""Teste seu jogo. Modifique um script, uma cena, um nível: a mudança é [color=%s]instantânea, em tempo real[/color].

			Também funciona com telefones celulares e dispositivos remotos.

			As mudanças são [color=%s]salvas[/color] mesmo ao fechar o jogo.
			""" % [BLUE, BLUE],
		'picture': 'jotsway-canyon-screen.png',
		"footer": "Jotsway Canyon, RPG tático de Johnny Goss"
	},
	{
		'title': 'Sinc. de scripts em Jotsway Canyon',
		'video': 'jotsway-canyon-live-scripting.ogv'
	},
	{
		"title": "Modo ferramenta: Godot-ception",
		"body":
			"""Adicione a palavra chave [color=%s]tool[/color] no começo de seus scripts: eles funcionarão no editor!

			Use [color=%s]tool[/color] para visualizar o caminho que segue sua IA, testar a geração procedural, melhorar a edição de níveis...
			""" % [ORANGE, ORANGE],
		'picture': 'teddy-game.jpg',
		"footer": ""
	},
	{
		'title': 'Asset dropper, de Andreas Esau',
		'video': 'andreas-godot-asset-drop.ogv'
	},
	{
		'title': 'Get Teddy, de Guaranapps',
		'video': 'guaranapps-level-editor.ogv'
	},
	{
		'title': 'Wallrider, de Zylann',
		'video': 'zylann-wallrider-canon-level.ogv'
	},
	{
		'title': 'Modo ferramenta em Wallrider',
		'video': 'zylann-wallrider-canon-tool.ogv'
	},
]


var create = [
	{
		"title": "O que você pode fazer no Godot?",
		"subtitle": "Jogos, obviamente",
		"footer": "Mas há mais!",
		'video': 'furry-defenders.ogv',
	},
	{
		"title": "Aplicações",
		"subtitle": "Por exemplo, esta apresentação",
		"video": 'presentaception.ogv',
	},
	{
		"title": "Outros motores de jogos???",
		"subtitle": "Bem vindo a RPG in a Box",
#		"body":
#			"""A interface te lembra de alguma coisa? Aqui está RPG in a Box, um software para criaçãp de RPG em voxels feito no Godot.
#			""",
		'picture': 'rpg-in-a-box-map.png',
		"footer": ""
	},
	{
		"title": "Roguelike em RPG in a Box",
		"subtitle": "Um jogo feito em um motor feito em um motor",
		'video': 'rpg-in-a-box-roguelike.ogv',
	},
]


var learning = [
	{
		"title": "Como aprender Godot?",
		"subtitle": "Os recursos que deve usar",
		'body':
		"""Godot oferece:

		- Uma [color=%s]comunidade[/color] [b]muito[/b] ativa. Redes sociais, fórum, IRC, Discord...
		- Um site de [color=%s]perguntas e respostas[/color]
		- [color=%s]Tutoriais[/color] oficiais e um [color=%s]manual[/color] online
		- [color=%s]Referências integradas[/color] ao editor
		- Demos de código aberto
		""" % [BLUE, BLUE, GREEN, GREEN, PINK],
		'picture': 'docs-community-websites.png',
		"footer": "A maioria dos recursos está em inglês. Uma ótima ocasião para praticar."
	},
	{
		"title": "Documentação integrada",
		"subtitle": "Não precisa abrir seu navegador",
		'body':
		"""Selecione texto no editor de script, aperte [color=%s]Shift F1[/color]:

		Uma lista de nós, variáveis e funções corresponentes aparecerá imediatamente.

		A documentação será aberta [color=%s]no editor de scripts[/color].
		""" % [PINK, PINK],
		'picture': 'docs-integrated-help.png',
		"footer": "Pressione F4 para pesquisar na documentação"
	},
	{
		"title": "Criadores de conteúdo",
		"subtitle": "Algumas recomendações para iniciar",
		'body':
		"""Há várias séries de tutoriais em vídeo gratuitos e de qualidade para Godot. Recomendamos três canais:

		- [color=%s]KidsCanCode[/color], série completa para iniciantes
		- [color=%s]Angega Studios[/color], série completa para iniciantes e intermediários
		- [color=%s]GDQuest[/color], nível intermediário
		""" % [ORANGE, PINK, BLUE],
		'picture': '',
		"footer": "Também podem seguir Heartbeast e Ivan Skodje"
	}
]

var questions = [{
		"title": "Obrigado!",
		"subtitle": "Dúvidas?",
		'body':
		"""Esta apresentação é livre, obtenha-a em [url=https://github.com/GDquest/godot-3-presentation]GitHub[/url]

		Créditos:

		Furry Defenders de [url=http://www.kivano.games/]Kivano[/url]
		[url=https://play.google.com/store/apps/details?id=fr.guaranapps.games.get_teddy]Get Teddy[/url] de Guaranapps
		[url=https://jaggygames.itch.io/jotswaycanyon]Jotsway Canyon[/url] de JaggyGames
		[url=http://www.rpginabox.com/]RPG in a Box[/url] de Justin
		[url=https://www.youtube.com/user/ndee85]Andreas Esau[/url]
		Wallrider de [url=https://www.youtube.com/user/ZylannMP3/videos]Zylann Productions[/url]

		""",
		'picture': 'gdquest-business-card.png',
		"footer": ""
}]
