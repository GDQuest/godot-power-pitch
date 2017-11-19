# A Godot 3 presentation made in Godot

This presentation is made in Godot 3, available to the entire community to use all around the world.

The code is under the MIT license terms. The pictures and video files are under CC-By 4.0 (see below for the full credits).

## Call for translations

Please help translate the presentation! All you need to do is to copy the content of the fr.gd file and replace the text strings with translations.

## How to use


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
  'picture': 'path/to/a/picture',
  'video': 'path/to/a/video',
  # Currently if you use a video, you should not use a body and a picture
  # Godot only supports .webm and .ogv formats (encoded with libtheora)
  'footer': 'A one line message at the bottom'
}

```

See `res://slides/fr.gd` for a presentation example.``

## Credits

- Furry Defenders par [Kivano](http://www.kivano.games/)
- [Get Teddy](https://play.google.com/store/apps/details?id=fr.guaranapps.games.get_teddy) par Guaranapps
- [Jotsway Canyon](https://jaggygames.itch.io/jotswaycanyon) par JaggyGames
- [RPG in a Box](http://www.rpginabox.com/) par Justin
- [Andreas Esau](https://www.youtube.com/user/ndee85)
- Wallrider par [Zylann Productions](https://www.youtube.com/user/ZylannMP3/videos)
- HTC Vive/Virtual Reality demo modelled by Clelio Rossi, Davide Romboli and Andrea Laghi, developed by Lamberto Tedaldi
