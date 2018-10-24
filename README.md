<h1 align="center">
Godot Slides 2.0</br>
<small>Build beautiful and gamified presentations</small>
</h1>

<p align='center'>
  <img src="https://i.imgur.com/bm30rQI.png" alt="Godot Slides logo" />
</p>

Godot Slides a tool to create elegant slideshows with the Godot game engine, using drag and drop UI widget. As it's a Godot game, you can:

- Run **games inside your slides**
- **Translate your presentations** into many languages with only a spreadsheet editor
- **Animate anything** with the animation editor or tweens, add particles and sounds
- Or even be creative and display the slides inside of a game!

Godot Slides comes with the Power Pitch, a 10 minutes presentation of the engine available in multiple languages. It'll save you hours of work if you want to introduce Godot at meetups and other gamedev events. And you can customize it to better suit your needs!

⚠ 2018/10/20: the git history got a full rewrite to make the repository and the project 4 times lighter. If you cloned it before and want to contribute, please delete your working copy and re-download it.

## Videos and articles

1. [Discover Godot: the Free 2D and 3D game engine](https://youtu.be/qVl3BYY6zaQ) (Power Pitch)
1. [How to Use Translations and Contribute New Languages](https://youtu.be/txCSyNgzvzw)
1. [Godot slides 2.0: open source presentation tool in Godot](https://youtu.be/JO2TvlLGf8Q) (Project overview)

You can also find a video recording of the original 40 minutes [Intro to Godot 3](https://www.youtube.com/watch?v=4v3qge-3CqQ) (*Thanks to Gabriel Marais for the English translation*).

## Controls

You can change the slide with a swipe of your finger on a touchscreen, or by hovering and clicking on the arrows on the edges of the screen. You can also navigate the slides with left and right mouse clicks: <kbd>LMB</kbd> and <kbd>RMB</kbd>.

On a keyboard, press <kbd>n</kbd> and <kbd>p</kbd> to jump to the **next** and the **previous** slide respectively. You may also use <kbd>,</kbd> and <kbd>.</kbd>, the <kbd><</kbd> and <kbd>></kbd> keys on QWERTY keyboards. You can use the angle brackets to avoid colliding with the demos' input actions inside your slides. To toggle fullscreen, press <kbd>f</kbd>.

## Help us translate the slides!

The Power Pitch currently ships with these languages in version 2.0:

- English
- French
- Japanese
- Spanish
- Portuguese (BR)
- German
- Indonesian
- Italian
- Chinese
- Korean
- Ukrainian
- Slovak
- Polish

Let's translate it in as many languages as possible! This way people can pitch Godot all around the world, in local game creator meetups.

## How to contribute translations

First, open the translations file located at `godot-3-presentation/content/power-pitch/PowerPitch.csv` with your preferred text or spreadsheets editor.

Then, you will see various language codes in the first row. Add to the next available column your language code according to [this list](https://godot.readthedocs.io/en/stable/tutorials/i18n/locales.html).

In the followings rows, add your translation for each text, in the column you used to add your language. Remember to respect the BBCode!

After that, open up the project in Godot. A `*.translation` file with your language code will be generated at `godot-3-presentation/content/power-pitch`. We will add this file to translations by going into `Project > Project Settings > Localization` and clicking the `Add` button.

Finally, open the `godot-3-presentation/presentation/Presentation.gd` file. In the first lines, you will see an exported enumeration with different language codes. Add yours (the same that you added before).

```
export(String, 'en', 'ja', 'fr', 'es', 'pt_BR', 'de', 'it') var LANGUAGE_MAIN = 'en'
export(String, 'en', 'ja', 'fr', 'es', 'pt_BR', 'de', 'it') var LANGUAGE_SECOND = 'ja'
```

Then you can set up your language in the `godot-3-presentation/presentation/Presentation.tscn` scene and run the presentation with your language.
Thank you for your translation!

## Licenses

**The code is under the MIT license terms**. The pictures and video files are under CC-By 4.0 (see below for the full credits).

### Credits

- Furry Defenders by [Kivano](http://www.kivano.games/)
- [Slyway](https://play.google.com/store/apps/details?id=fr.guaranapps.games.get_teddy) by Guaranapps
- [Jotsway Canyon](https://jaggygames.itch.io/jotswaycanyon) by JaggyGames
- [RPG in a Box](http://www.rpginabox.com/) by Justin
- [Andreas Esau](https://www.youtube.com/user/ndee85)
- Wallrider by [Zylann Productions](https://www.youtube.com/user/ZylannMP3/videos)
- HTC Vive/Virtual Reality demo modelled by Clelio Rossi, Davide Romboli and Andrea Laghi, developed by Lamberto Tedaldi
