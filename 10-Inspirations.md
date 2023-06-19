# YAPC - Inspirations

From the release of the Raspbery Pi Pico in January 2021 till now (May 2023), there is a bubbling of projects around VGA output, surrounded by a more ancient wave of other retro computers using other micro-controllers and 8 or 16 bits CPUs, mainly because old 8 bits computers are either too old or too expensive compared to what Arduino, ESP32 & al. cost and are able to achieve.

Here's now a list of projects that are related to this:

- __VGA scanvideo__ from pico-extras by the Raspberry Pi Foundation
  - The base for all of this!
  - <https://github.com/raspberrypi/pico-extras/tree/master/src/common/pico_scanvideo>
  - Language: C (C++ compatible)

- __VGA demo board__ by Pimoroni
  - Implementation of reference design from chapter 3 of <https://datasheets.raspberrypi.com/rp2040/hardware-design-with-rp2040.pdf>
  - <https://shop.pimoroni.com/products/pimoroni-pico-vga-demo-base>

- __First thread about VGA__ on the Raspberry Pi forums
  - That's what interested me in this stuff, after I bought a couple Picos in early 2021 and then the VGA demo board
  - <https://forums.raspberrypi.com/viewtopic.php?p=1829133>

- __HAGL__ by tuupola
  - Generic library for bitmap graphics, originally written with I²C or SPI LCD panels in mind
  - <https://github.com/tuupola/hagl/>
  - Uses Unicode fonts in FONTX format, cf. <http://elm-chan.org/docs/dosv/fontx_e.html>
  - Language: C (C++ compatible)

- __HAGL HAL for Pico VGA board__ by CHiPs44 (it’s me ;-))
  - <https://github.com/CHiPs44/hagl_pico_vgaboard>
  - Framebuffer based
  - For the VGA demo board
  - Implements many VGA modes from <http://tinyvga.com/vga-timing> and several other sources
  - Still buggy in terms of stability when using some modes and/or framebuffer manipulation techniques
  - Has a rather complete demo
  - Language: C (C++ compatible)

- __FabGL__ by Fabrizio Di Vittorio
  - Graphics library for ESP32 with VGA output supporting PS/2 keyboard and mouse
  - <http://www.fabglib.org/>
  - Language: C++

- __LVGL__ by the LVGL team
  - Light and Versatile Graphic Library
  - <https://lvgl.io/>
  - License: MIT
  - Language: C99 (C++ compatible)

- __Pico-8__ and __TIC-80__ fantasy consoles
  - <https://www.lexaloffle.com/pico-8.php>
    - Not open source, but great, see games like Celeste <https://www.lexaloffle.com/bbs/?tid=2145> for example!
    - Uses Lua
  - <https://github.com/nesbox/TIC-80>
    - Open source
    - Uses Lua, too
  - Both include sprite / map / sound / code editors
  - The virtual resources are limited (low resolution, 16 colors, 4 channel sound, ...), but demand much more resources on the host, see <https://github.com/yocto-8/yocto-8> for an example of a Pico-8 player for RP2040 and the difficulties encountered

- __PicoSystem__ from Pimoroni
  - Game console on a tiny LCD, with a C (C++?) SDK
  - <https://shop.pimoroni.com/products/picosystem>
  - <https://github.com/pimoroni/picosystem>
  - Can run yocto-8 and some Pico-8 games

- __pshell__ by lurk101
  - Serial accessible shell with vi and C compiler generating ARM M0+ code
  - <https://github.com/lurk101/pshell>
  - Every function from the SDK is accessible and automatically included!
  - Language: C (C++ compatible)

- __pt52__ by DarkElevenAngel
  - VT-52 compatible serial terminal with vi editor that uses the VGA demo board
  - <https://gitlab.com/DarkElvenAngel/pt52>
  - pt52-lua is on the way, cf. <https://gitlab.com/DarkElvenAngel/pt52-lua>
  - Language: C (C++ compatible)

- __PicoVGA__ by Miroslav Nemecek / __MCUME__ by Jean-Marc Harvengt
  - <https://github.com/Panda381/PicoVGA>
    - RGB332
    - With sprites & layers
  - <https://github.com/Jean-MarcHarvengt/MCUME>
    - MCUME includes several emulators of 8 bits computers for several MCUs
    - VGA for the Pico is based on PicoVGA
  - Language: C (C++ compatible)

- __Agon light 2__ from the Byte Attic
  - Modern Z80 implementation with a micro-controler for video and I/O
  - <https://github.com/TheByteAttic/AgonLight>
  - <https://www.thebyteattic.com/>
  - No Pico inside, but it’s representative of the goals of this project
  - Olimex sells it as Open Source Hardware, cf. <https://www.olimex.com/Products/Retro-Computers/AgonLight2/open-source-hardware>
  - Runs BBC Basic
  - Language: C (C++ compatible)

- __PicoBB__ by Memotech-Bill & others
  - <https://github.com/Memotech-Bill/PicoBB>
  - BBC Basic implementation for the VGA board
  - Language: C (C++ compatible)

- __Picocomputer 6502__ by Rumbledethumps
  - <https://github.com/picocomputer>
  - 8 Mhz 65C02 as CPU + 2 supporting Picos for VGA and I/O
  - Interesting concept of the PIX to handle communication between the Picos via PIO
  - Sadly now a not so open project like it was at the beginning
  - Language: C (C++ compatible)

- __PicoMiteVGA__ & __WebMite__ by Geoff & others
  - <https://geoffg.net/picomitevga.html> / <https://geoffg.net/webmite.html>
  - <https://github.com/UKTailwind/PicoMite> / <https://github.com/UKTailwind/PicoMiteWeb>
  - MMBasic seems to be great but its license is too restrictive, being open source only, not free as GPL nor permissive like MIT or BSD, see <https://geoffg.net/OpenSource.html> for an explanation
  - Handles GPIO, I²C, SPI
  - WebMite has interesting ideas about networking functions (NTP, ...)
  - Language: C (C++ compatible)

- __Neotron Pico__ by Jonathan Pallant (the JPster)
  - <https://github.com/Neotron-Compute/Neotron-Pico>
  - VGA is a 12 bits (RGB444) implementation of scanvideo to limit the amount of GPIO pins used
  - Code is written in Rust (and intended as a showcase of embedded Rust)
  - I/O controller is not a Pico, but there is an interesting notion of BIOS and an API to communicate via SPI (or serial ?)
  - Motherboard is in micro ATX form factor and embeds several expansion connectors
  - Language: Rust

- __Picoputer__ by amen
  - Emulation of Transputer nodes
  - <https://github.com/blackjetrock/picoputer>
  - <https://trochilidae.blogspot.com/2021/07/stack-based-with-os-in-hardware.html>
  - Interesting for high speed communication between nodes using PIO
  - I can't say I understand all the concepts around this ;-)

- __RC2014__ ecosystem
  - Z80 based modular system
  - <https://rc2014.co.uk/>
  - Runs either homebrew, Microsoft BASIC, CP/M or MSX software

- __pico-vdp__ by Patrick Alastair
  - <https://github.com/alastairpatrick/pico-vdp>
  - Video Display Processor RC2014 Board with video output, audio output, keyboard input, mouse input
  - Seems to be stalled in the "sprite" branch since 2022
  - C, GPL 3.0
