<!-- SPDX-Copyright-Text: © 2023 CHiPs44 <chips44@gmail.com> -->
<!-- SPDX-License-Identifier: CC-BY-SA-4.0 -->

# YAPC - Inspirations<!-- omit in toc -->

From the release of the Raspbery Pi Pico in January 2021 till now (december 2023), there are many projects around VGA and DVI/HDMI screen output, surrounded by a more ancient wave of other retro computers using other micro-controllers and/or 8 or 16 bits CPUs, mainly because old 8 bits computers are either too old or too expensive compared to what Arduino, ESP32 & al. cost and are able to achieve.

Here's now a list of projects that are related to this:

- [My road to VGA on a modern micro-controller](#my-road-to-vga-on-a-modern-micro-controller)
  - [**First thread about VGA** on the **Raspberry Pi forums**](#first-thread-about-vga-on-the-raspberry-pi-forums)
  - [**VGA scanvideo** from `pico-extras` by the **Raspberry Pi Foundation**](#vga-scanvideo-from-pico-extras-by-the-raspberry-pi-foundation)
  - [**VGA demo board** by **Pimoroni**](#vga-demo-board-by-pimoroni)
  - [**HAGL** by **tuupola**](#hagl-by-tuupola)
  - [**HAGL HAL for Pico VGA board** by **CHiPs44** (it’s me ;-))](#hagl-hal-for-pico-vga-board-by-chips44-its-me--)
- [Pico stuff](#pico-stuff)
  - [**pshell** by **lurk101**](#pshell-by-lurk101)
  - [**pt52** and **pt52-lua** by **DarkElevenAngel**](#pt52-and-pt52-lua-by-darkelevenangel)
  - [**PicoVGA** by **Miroslav Nemecek**](#picovga-by-miroslav-nemecek)
  - [**MCUME** by **Jean-Marc Harvengt**](#mcume-by-jean-marc-harvengt)
  - [**PicoSystem** from **Pimoroni**](#picosystem-from-pimoroni)
  - [**PicoBB** by **Memotech-Bill \& others**](#picobb-by-memotech-bill--others)
  - [**Picocomputer 6502** by **Rumbledethumps**](#picocomputer-6502-by-rumbledethumps)
  - [**RP2040-PICO-PC** by **Olimex**](#rp2040-pico-pc-by-olimex)
  - [**PicoMiteVGA** \& **WebMite** by **Geoff \& others**](#picomitevga--webmite-by-geoff--others)
  - [**Neotron Pico** by **Jonathan Pallant (the JPster)**](#neotron-pico-by-jonathan-pallant-the-jpster)
  - [**Picoputer** by **amen**](#picoputer-by-amen)
  - [**Pico-56** by **Troy Schrapel**](#pico-56-by-troy-schrapel)
  - [**Neo6502** by **OLIMEX**](#neo6502-by-olimex)
  - [**PicoVision** by **Pimoroni**](#picovision-by-pimoroni)
  - [**pico-vdp** by Patrick Alastair](#pico-vdp-by-patrick-alastair)
  - [**DECstation 2040** by **Scott**](#decstation-2040-by-scott)
  - [**Pico Mac** by **Matt Evans**](#pico-mac-by-matt-evans)
  - [**Pretty Poly** by **lowfatcode**](#pretty-poly-by-lowfatcode)
- [Non Pico stuff](#non-pico-stuff)
  - [**FabGL** by **Fabrizio Di Vittorio**](#fabgl-by-fabrizio-di-vittorio)
  - [**LVGL** by **the LVGL team**](#lvgl-by-the-lvgl-team)
  - [**raylib** by **Ramon Santamaria**](#raylib-by-ramon-santamaria)
  - [**Adafruit GFX Library** by **Adafruit**](#adafruit-gfx-library-by-adafruit)
  - [**Pico-8** and **TIC-80** fantasy consoles](#pico-8-and-tic-80-fantasy-consoles)
  - [**Agon light 2** from **the Byte Attic**](#agon-light-2-from-the-byte-attic)
  - [**RC2014** ecosystem](#rc2014-ecosystem)

## My road to VGA on a modern micro-controller

I think I have to give some background informations about me.

My first "computer" was a [Texas Instruments TI-57](https://en.wikipedia.org/wiki/TI-57) around 1980, and then a [Tandy TRS-80 PC-2 / Sharp PC-1500](https://en.wikipedia.org/wiki/Sharp_PC-1500) circa. 1983.

In between, my brother bought a [Sinclair ZX-81](https://en.wikipedia.org/wiki/ZX81) in kit form and built it.

In 1985, for my [Baccalauréat in electrical engineering](https://en.wikipedia.org/wiki/Baccalaur%C3%A9at), I got the short lived [Amstrad CPC 664](https://en.wikipedia.org/wiki/Amstrad_CPC) with the monochrome GT-65 monitor.

In 1987, I got my [DUT](https://en.wikipedia.org/wiki/University_technical_institute_(France)#Description) in electrical engineering and industrial computing.

Due to administrative concerns, I had to work for one year before returning to university and earned enough to afford my first Atari ST, an [Atari 1040 STF](https://en.wikipedia.org/wiki/Atari_ST) and shortly after a [PC-XT compatible](https://en.wikipedia.org/wiki/IBM_Personal_Computer_XT).

I got my [master's degree](https://en.wikipedia.org/wiki/Master%27s_degree_(France)) in "Micro Computing and Micro Electronics" in 1990, when micro controllers and FPGAs were a dream or too expensive to do at home.

If I summarize after that since this intro begins to be a little too long:

- I never worked in the electronics world
- I discovered Free and Libre Open Source Software (and GNU/Linux) around 1994 and most of my geek instincts were satisfied, even if only at home...
- I still work as a developer, with databases and "serious" web stuff mostly, using Visual Basic, ASP/VBScript, ASP.NET/C#, and then PHP, Symfony & al.
- I learned about and tried Arduino Uno around 2010, but didn't got very interested as they were rather limited even if the programming with a simple USB cable seduced me.
- I got interested in Raspberry Pis 2, 3 & 4, too, and got an Xbox 360 to play Fable II...

In 2021, shortly after I learned the existence of the RP2040 and the Pico, I stumbled on this forum thread and is still hooked up:

### **First thread about VGA** on the **Raspberry Pi forums**

- That's what interested me in this stuff, I bought a couple Picos in early 2021 and then the VGA demo board
- cf. <https://forums.raspberrypi.com/viewtopic.php?p=1829133>
- I had to (re)learn C and its low level (WTF, no objects nor associative arrays?)
- It's so easy to reprogram it through USB!

### **VGA scanvideo** from `pico-extras` by the **Raspberry Pi Foundation**

- For me, this is the base for all of this!
- cf. <https://github.com/raspberrypi/pico-extras/tree/master/src/common/pico_scanvideo>
- It seems kudos go mainly to [Kilograham](https://github.com/kilograham)!

### **VGA demo board** by **Pimoroni**

- The real enlightment: no soldering needed!
- Implementation of reference design from chapter 3 of <https://datasheets.raspberrypi.com/rp2040/hardware-design-with-rp2040.pdf>
- cf. <https://shop.pimoroni.com/products/pimoroni-pico-vga-demo-base>
- RGAB5515 output: 5 bits for red, green and blue, 1 bit for alpha / transparency
- Most of GPIO pins are used for VGA (17 of 25/26 for Pico 1 or 2), leaving just enough for **sound** (PWM **or** DAC) and **SD card** (4-bits or 1-bit with cutted PCB traces for **serial**):

<center>

| GPIO# | Function         |
| ----: | ---------------- |
|   0-4 | VGA: RED 0-4     |
|  6-10 | VGA: GREEN 0-4   |
| 11-15 | VGA: BLUE 0-4    |
|    16 | VGA: VSYNC       |
|    17 | VGA: HSYNC       |
| 18-22 | SD CARD & SERIAL |
|    25 | ONBOARD LED      |
|    26 | ONLY 1 FREE?     |
| 27-28 | PWM / DAC        |

</center>

### **HAGL** by **tuupola**

- Generic library for bitmap graphics, originally written with I²C or SPI LCD panels in mind
- cf. <https://github.com/tuupola/hagl/>
- Uses **Unicode** fonts (in fact, UTF-16 ones) in FONTX format, cf. <http://elm-chan.org/docs/dosv/fontx_e.html>
- Can be extended to new types of screens via an **Hardware Abstraction Layer (HAL)**, cf. below

### **HAGL HAL for Pico VGA board** by **CHiPs44** (it’s me ;-))

- cf. <https://github.com/CHiPs44/hagl_pico_vgaboard>
- Framebuffer based, no multiplane yet
- Implements many VGA modes from <http://tinyvga.com/vga-timing> and several other sources
- Still buggy in terms of stability when using some modes and/or framebuffer manipulation techniques
- Has a rather complete demo, see <https://github.com/CHiPs44/hagl_pico_vgaboard_example>
- Supports compiling with SDL and executing on host with <https://github.com/raspberrypi/pico-host-sdl>

## Pico stuff

### **pshell** by **lurk101**

- Serial accessible shell with:
  - base commands: `ls`, `cd`, `mkdir`, `cat`, ...
  - `vi` editor (from an old busybox version)
  - `cc`, C compiler generating ARM M0+ and now M33 code
- cf. <https://github.com/lurk101/pshell>
- Uses internal flash by default with LittleFS, SD card support for VGA board

### **pt52** and **pt52-lua** by **DarkElevenAngel**

- VT-52 compatible terminal with vi editor that uses the VGA demo board
- Uses VGA demo board and scanvideo library
- cf. <https://gitlab.com/DarkElvenAngel/pt52>
- With an embedded Lua integration
- **pt52-lua** is on the way, cf. <https://gitlab.com/DarkElvenAngel/pt52-lua>

### **PicoVGA** by **Miroslav Nemecek**

- cf. <https://github.com/Panda381/PicoVGA>
- RGB332, not scanvideo based, uses its own DAC and PIO
- With sprites & layers
- See also <https://github.com/Panda381/PicoLibSDK>

### **MCUME** by **Jean-Marc Harvengt**

- cf. <https://github.com/Jean-MarcHarvengt/MCUME>
- MCUME includes several emulators of 8 bits computers for several MCUs
- VGA for the Pico is based on Panda381's PicoVGA

### **PicoSystem** from **Pimoroni**

- Game console on a tiny 240x240 LCD, with a C (C++?) SDK
- cf. <https://shop.pimoroni.com/products/picosystem>
- cf. <https://github.com/pimoroni/picosystem>
- Can run yocto-8 and some Pico-8 games

### **PicoBB** by **Memotech-Bill & others**

- cf. <https://github.com/Memotech-Bill/PicoBB>
- BBC Basic implementation for the VGA board
- IIRC, every function from the SDK is accessible and automatically included!

### **Picocomputer 6502** by **Rumbledethumps**

- cf. <https://github.com/picocomputer>
- 8 Mhz 65C02 as CPU + 2 supporting Picos for VGA and I/O
- Interesting concept of the 4-bits PIX to handle communication between the 2 Picos via PIO
- Scanvideo features on "GPU" side: 3 selectable layers
  - bitmap
  - tilemap with scrolling
  - sprites and "affine" sprites
  - text
- 8 channels PSG with waveforms and ADSR parameters (january 2024)

### **RP2040-PICO-PC** by **Olimex**

- cf. <https://www.olimex.com/Products/MicroPython/RP2040-PICO-PC/open-source-hardware>
- "Motherboard" is only 12€ (without Pico or Pico W)!
- "RP2040-PICO-PC allows RP2040-PICO to become a computer with SD card, HDMI display, Audio, USB keyboard, Li-Po charger and battery support, UEXT connector, and I2C connector."
- DVI/HDMI instead of VGA
- GPL v3 license

### **PicoMiteVGA** & **WebMite** by **Geoff & others**

- cf. <https://geoffg.net/picomitevga.html> / <https://geoffg.net/webmite.html>
- cf. <https://github.com/UKTailwind/PicoMite> / <https://github.com/UKTailwind/PicoMiteWeb>
- MMBasic seems to be great but its license is too restrictive, being open source only, not free as GPL nor permissive like MIT or BSD, see <https://geoffg.net/OpenSource.html> for an explanation
- Handles GPIO, I²C, SPI from MMBasic
- WebMite has interesting ideas about networking functions (NTP, ...)

### **Neotron Pico** by **Jonathan Pallant (the JPster)**

- cf. <https://github.com/Neotron-Compute/Neotron-Pico>
- VGA is a 12 bits (RGB444) implementation of scanvideo to limit the amount of GPIO pins used
- Code is written in Rust (and intended as a showcase of embedded Rust)
- I/O controller is not a Pico, but there is an interesting notion of BIOS and an API to communicate via SPI (or serial ?)
- Motherboard is in micro ATX form factor and embeds several expansion connectors usable with SPI (or I²C?)

### **Picoputer** by **amen**

- Emulation of Transputer nodes
- cf. <https://github.com/blackjetrock/picoputer>
- cf. <https://trochilidae.blogspot.com/2021/07/stack-based-with-os-in-hardware.html>
- Interesting for high speed communication between nodes using PIO
- I can't say I understand all the concepts around this ;-)

### **Pico-56** by **Troy Schrapel**

- "The HBC-56 (65C02/TMS9918A/AY-3-8910 retro computer) fully emulated on a Raspberry Pi Pico"
- 12 bits VGA with homemade PIO (not scanvideo based)
- PS/2 keyboard, 2 NES ports,
- 65C02 CPU, 65C22 VIA, TMS9918A VDP, Dual AY-3-8910 PSGs, Dual NES controller inputs, PS/2 keyboard input, 96KB Banked RAM/ROM
- cf. <https://github.com/visrealm/pico-56/>
- MIT license
- can be repurposed to be whatever computer, see "episodes" for examples

### **Neo6502** by **OLIMEX**

- 65C02 with RP2040 managing RAM and clock, HDMI output, USB keyboard
- cf. <https://github.com/OLIMEX/Neo6502>
- Olimex sells it as Open Source Hardware, cf. <https://www.olimex.com/Products/Retro-Computers/Neo6502/open-source-hardware>
- Prototype as of August 2023
- Apple //e, ][+ & Oric Atmos emulator: <https://github.com/vsladkov/reload-emulator>

### **PicoVision** by **Pimoroni**

- Dual RP2040 (Pico W + RP2040 on board), DVI (HDMI), 2x8MB PSRAM (!)
- Shop: <https://shop.pimoroni.com/products/picovision?variant=41048911904851>
- Code: <https://github.com/pimoroni/picovision>, MIT license
- Pico-W soldered, no way to replace it

### **pico-vdp** by Patrick Alastair

- cf. <https://github.com/alastairpatrick/pico-vdp>
- Raspberry Pi Pico based Video Display Processor RC2014 Board with video and audio output, keyboard and mouse input
- Seems to be stalled in the "sprite" branch since 2022
- C, GPL 3.0

### **DECstation 2040** by **Scott**

- "RP2040 based DECstation 3000 emulator that can run DECWindows (Ultrix + X Window)"
- MIPS CPU emulation and 32 MB of PSRAM! (thanks to [Dmitry's LinuxCard](http://dmitry.gr/?r=05.Projects&proj=33.%20LinuxCard))
- Monochrome VGA at 1024 x 864, PIO driven (not scanvideo based), with seperate 16x16 cursor plane overlay
- cf. <https://github.com/rscott2049/DECstation2040>

### **Pico Mac** by **Matt Evans**

- Runs the [umac Mac 128K emulator](https://github.com/evansm7/umac) on a RP2040 Pico (up to Mac 208K)
- Outputs VGA 640x480@60Hz, 512x342 monochrome, using three resistors and PIO (not scanvideo based)
- USB HID keyboard and mouse, SD card option, ...
- cf. <https://github.com/evansm7/pico-mac>

### **Pretty Poly** by **lowfatcode**

- "Pretty Poly - A super-sampling complex polygon renderer for low resource platforms. 🦜"
- cf. <https://github.com/lowfatcode/pretty-poly>
- Language: C17 (header only library)
- License: MIT
- NB: MichaelBell & Gadgetoid made pull request, so it should be good stuff!

### **Raspberry Pi Pico: loading code into RAM and running it** by **Kevin Boone**

- Not a library, but an interesting article in 2 parts
  - <https://kevinboone.me/pico_run_ram.html>
  - <https://kevinboone.me/pico_run_ram2.html>

## Non Pico stuff

### **FabGL** by **Fabrizio Di Vittorio**

- C++ graphics library for ESP32 with 64 colors VGA output supporting PS/2 keyboard and mouse
- <http://www.fabglib.org/>

### **LVGL** by **the LVGL team**

- Light and Versatile Graphic Library
- cf. <https://lvgl.io/>
- License: MIT
- Language: C99 (C++ compatible)
- Very complete / complex
- Ported to Pico / RP2040 with LCD SPI/I²C screens in mind

### **raylib** by **Ramon Santamaria**

- "raylib is a simple and easy-to-use library to enjoy videogames programming."
- cf. <https://www.raylib.com/>
- License: unmodified zlib/libpng
- Language: C99 (using PascalCase/camelCase notation)
- Not aware of Pico officially and at first sight

### **Adafruit GFX Library** by **Adafruit**

- "This is the core graphics library for all our displays, providing a common set of graphics primitives (points, lines, circles, etc.)."
- cf. <https://github.com/adafruit/Adafruit-GFX-Library>
- License: BSD (2 clauses?)
- Language: C / C++
- Arduino IDE oriented?

### **Pico-8** and **TIC-80** fantasy consoles

- cf. <https://www.lexaloffle.com/pico-8.php>
- Not open source, but great, see games like Celeste <https://www.lexaloffle.com/bbs/?tid=2145> for example!
- cf. <https://github.com/nesbox/TIC-80>
- Open source (MIT license)
- Both use Lua as default language
- Both include sprite / map / sound / code editors
- The virtual resources are limited (low resolution, 16 colors, 4 channel sound, ...), but demand much more resources on the host, see <https://github.com/yocto-8/yocto-8> for an example of a Pico-8 player for RP2040 and the difficulties encountered

### **Agon light 2** from **the Byte Attic**

- Modern Z80 implementation with a micro-controller for video and I/O
- cf. <https://github.com/TheByteAttic/AgonLight>
- cf. <https://www.thebyteattic.com/>
- No Pico inside, but it’s representative of some of the goals of this project
- Olimex sells it as Open Source Hardware, cf. <https://www.olimex.com/Products/Retro-Computers/AgonLight2/open-source-hardware>
- Runs BBC Basic

### **RC2014** ecosystem

- Z80 based modular system
- cf. <https://rc2014.co.uk/>
- Runs either homebrew, Microsoft BASIC, CP/M or MSX software
- Can use a Pico VGA terminal, cf. <https://rc2014.co.uk/modules/pi-pico-vga-terminal/>
