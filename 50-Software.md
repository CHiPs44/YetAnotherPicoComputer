# YAPC - Software

Here's a list of programs that **should** or could be (re-)written to work with YAPC (or any nostalgic platfor), including some I'm very fond of.

PC Gamer's article "The 50 most important PC games of all time" <https://www.pcgamer.com/most-important-pc-games/> seems to be a good source but is seemmingly very biased towards IBM PC and compatibles.

There won't be many examples of 8-bit console games, as I didn't own or use anyone.

## Games

All of these are 2D.

### All time classics

These were originally text based:

- **Star Trek**, 1971, <https://en.wikipedia.org/wiki/Star_Trek_(1971_video_game)>
- **Colossal Cave Adventure**, 1976, <https://en.wikipedia.org/wiki/Colossal_Cave_Adventure>
- **Zork**, 1977, <https://en.wikipedia.org/wiki/Zork>
- **Rogue**, 1980, <https://en.wikipedia.org/wiki/Rogue_(video_game)>

These were originally text based, too, but had many graphics implementations:

- **Snake**, 1976 (Blockade), <https://en.wikipedia.org/wiki/Snake_(video_game_genre)>
- **Tetris**, <https://en.wikipedia.org/wiki/Snake_(video_game_genre)>

### Arcade classics with fixed screen

- **Space invaders** by Taito, 1978, <https://en.wikipedia.org/wiki/Space_Invaders>
- **Galaxian** by Namco, 1979, <https://en.wikipedia.org/wiki/Galaxian>
- **Pac Man** by Namco, 1980, <https://en.wikipedia.org/wiki/Pac-Man>
- **Galaga** by Namco, 1981, <https://en.wikipedia.org/wiki/Galaga>

### Arcade classics with scrolling

- **Defender** by Williams Electronics, 1981, <https://en.wikipedia.org/wiki/Defender_(1981_video_game)>

### To be sorted

- **Zaxxon**, C64?
- **Gauntlet**, Arcade first?
- **Warcraft**, PC (or one of its more primitive predecessors (Dune / Dune II?))
- **Knight Lore**, Amstrad CPC
- **Bomberman**
- 8bit Guy's **Planet X3** and/or **Attack of the PETSCII robots** (vaguely open sourced)
- **2048**
- **Solitaire**

### 8 bits machines classics

- **Boulder Dash** by First Star Software, 1984, Atari 8-bit, <https://en.wikipedia.org/wiki/Boulder_Dash_(video_game)> (I thought it was originally released for the C64)
- **Prince of Persia** by Broderbund, 1989, Apple II, <https://en.wikipedia.org/wiki/Prince_of_Persia_(1989_video_game)> (had many ports, too)

### 16 bits machines classics

- **Lemmings** by DMA Design, 1991, Amiga, <https://en.wikipedia.org/wiki/Lemmings_(video_game)>

### Amstrad CPC classics

These two ones were my most played ones on my CPC 664 (<https://en.wikipedia.org/wiki/Amstrad_CPC#CPC_664>):

- **Fruity Frank** by Kuma Software, 1984, <https://en.wikipedia.org/wiki/Fruity_Frank>
- **The Way of the Exploding Fist** by Beam Software, 1985, <https://en.wikipedia.org/wiki/The_Way_of_the_Exploding_Fist>

### Atari ST classics

I played numerous hours with these ones on my 1040STF and my MegaSTE:

- **Dungeon Master** by FTL Games, 1987, <https://en.wikipedia.org/wiki/Dungeon_Master_(video_game)>
- **Populous** by Bullfrog productions, 1989, <https://en.wikipedia.org/wiki/Populous_(video_game)>
- **Hero Quest**
- **Space Crusade**

### PC classics

- **Jazz Jackrabbit** by Epic Megagames, 1994, <https://en.wikipedia.org/wiki/Jazz_Jackrabbit_(1994_video_game)>

## Applications

### Simple

- **Game of life**
- **Fractals**, Mandelbrot sets and others, <https://en.wikipedia.org/wiki/Mandelbrot_set>

### Demos

- **3D spinning cube**, <https://rosettacode.org/wiki/Draw_a_rotating_cube>
- **Amiga Boing Ball Demo**, <https://amiga.lychesis.net/applications/AmigaBoingBall.html>

### Complex

- **Audio MOD player** for Amiga style 4 channels stereo (cf. <https://modarchive.org/index.php?request=view_profile&query=90994>)

## Tools

- **Text editor**, be it vi, nano or joe (Wordstar) like
- **Shell**, like sh / dash / ash / bash / ..., POSIX like?

### Multimedia tools

- **SoundTracker**, MOD editor
- **Bitmap editor**, DEGAS Elite / Deluxe Paint style
- **Sprite / Tileset editor**
- **Tilemap editor**

## Development

These are intended to be run on YAPC itself, making it a self contained machine.

They all need an editor of some sort.

### Interpreters

- **BASIC**, be it:
  - **Tiny Basic** <>
  - **piccoloBasic** (<https://github.com/garyexplains/piccoloBASIC>)
  - **BBC Basic** (<https://github.com/Memotech-Bill/PicoBB>)
  - MS Basic
  - or another one with no line numbers and structured programming (example?)
- **Lua**, see <https://gitlab.com/DarkElvenAngel/pt52-lua>
- **Lisp**?
- **Forth**?
- **Pascal**?
- **C**?
- **Java**? ;-)

### Compilers

- **FreeBASIC**, <https://github.com/freebasic>
- **Pascal**, Turbo Pascal 3 (or 5.5?) like, <https://en.wikipedia.org/wiki/Category:Pascal_(programming_language)_compilers>
- **C**, see <https://github.com/lurk101/pshell>, based on
  - **AMACC** <https://github.com/jserv/amacc>)
  - **SCC**, <http://git.simple-cc.org/scc/file/README.html>? (via <https://forums.raspberrypi.com/viewtopic.php?p=2036424&hilit=lurk101+pshell+amacc#p2036500>)
  - **TCC - Tiny C Compiler**, <https://repo.or.cz/w/tinycc.git/>?
