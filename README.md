<h1 align="center">
  A Godot 3 presentation made in Godot
</h1>

<p align='center'>
  <img src="https://raw.githubusercontent.com/GDquest/godot-3-presentation/master/img/new-in-godot-3.png" alt="Clouds of words showing the new features in Godot 3.0" />
</p>


This presentation **runs inside Godot 3**. It's open source, available to the entire community to use all around the world. It comes with **40 slides** and enough content for a 1 hour long conference talk.

It has one big advantage over any external program: you can run game demos inside your slides.

**The code is under the MIT license terms**. The pictures and video files are under CC-By 4.0 (see below for the full credits). The repository contains the entire Godot project, the text and pictures, but not the videos (130mb).

**To download the full package, see the [ releases ](https://github.com/GDquest/godot-3-presentation/releases)**.

## Controls

Press <kbd>p</kbd> and <kbd>n</kbd> to jump to the **next** and the **previous** slide respectively. You may also use <kbd>,</kbd> and <kbd>.</kbd>, the <kbd><</kbd> and <kbd>></kbd> keys on QWERTY keyboards.

They may seem weird but as you can have demos inside the slides, they work this way so they won't collide with other game examples.


## Help translate the slides

The presentation is available in:

1. English
1. Spanish
1. French
1. Italian

Please help translate it so people can use it all around the world! To translate the slides: duplicate the `res://slides/fr.gd` file, and rename it to the language you're covering (en, es, pt, jp...) file and replace the text strings with translations.

The presentation was designed with French people in mind, with some light touches of humor. Feel free to adapt the content to your culture!

## How to customize the presentation

The slides are defined in a GDscript file in the `slides` folder. The initial release only contains a presentation in French: `res://slides/fr.gd`.

To change the slides file the presentation shows, open the `Presentation.tscn` scene. Select the `Presentation` node and set its `Slides Path` using a path to the slides.

The repository contains all the pictures, but not the video files as they're a bit heavy.

### The slides

Each slide is a dictionary with six slots. They are all optional, so you only need to fill the ones you use:

```python
{
  'title': 'The title',
  'subtitle': 'Displays right below the title',
  'body': """
  The main body of text. If there's a picture, it take the left side of the screen. If there's no picture, it resizes to span over the screen's width.
  If the body is empty, the picture or video will take all the space instead.
  Supports bbcode.
  """,
  'picture': 'path/to/a/picture.png',
    # Supports all image formats.
    # Should support SVG too (automatically converted to bitmap by Godot).
  'video': 'path/to/a/video.ogv',
    # Currently if you use a video, you should not use a body and a picture
    # Godot only supports .webm and .ogv formats (encoded with libtheora)
  'demo': 'path/to/a/scene.tscn',
    # Inserts the demo under the Demo node in the scene tree
    # It's best to use it alone like videos
    # It shows behind the text and pictures, so you may use it as an animated background
  'footer': 'A one line message at the bottom, in italics'
}

```

See `res://slides/fr.gd` in the Godot project for a presentation example.

## Credits

- Furry Defenders par [Kivano](http://www.kivano.games/)
- [Get Teddy](https://play.google.com/store/apps/details?id=fr.guaranapps.games.get_teddy) par Guaranapps
- [Jotsway Canyon](https://jaggygames.itch.io/jotswaycanyon) par JaggyGames
- [RPG in a Box](http://www.rpginabox.com/) par Justin
- [Andreas Esau](https://www.youtube.com/user/ndee85)
- Wallrider par [Zylann Productions](https://www.youtube.com/user/ZylannMP3/videos)
- HTC Vive/Virtual Reality demo modelled by Clelio Rossi, Davide Romboli and Andrea Laghi, developed by Lamberto Tedaldi

### Translations

English: Gabriel Marais
Spanish: Antonio Torres Moríñigo
Italian: Enrico Monese
