# YAPC - Inspirations

```text
_   __   _   
\ \ / /__| |_ 
 \ V / -_)  _|
  |_|\___|\__|
   _            _   _            
  /_\  _ _  ___| |_| |_  ___ _ _ 
 / _ \| ' \/ _ \  _| ' \/ -_) '_|
/_/ \_\_||_\___/\__|_||_\___|_|  
 ___ _        
| _ (_)__ ___ 
|  _/ / _/ _ \
|_| |_\__\___/ 
  ___                     _           
 / __|___ _ __  _ __ _  _| |_ ___ _ _ 
| (__/ _ \ '  \| '_ \ || |  _/ -_) '_|
 \___\___/_|_|_| .__/\_,_|\__\___|_|  
               |_|                    

```

(from <http://www.network-science.de/ascii/>, "small" font)

From the release of the Raspbery Pi Pico in January 2021 till now (december 2023), there are many projects around VGA and DVI/HDMI screen output, surrounded by a more ancient wave of other retro computers using other micro-controllers and/or 8 or 16 bits CPUs, mainly because old 8 bits computers are either too old or too expensive compared to what Arduino, ESP32 & al. cost and are able to achieve.

Here's now a list of projects that are related to this:

## Pico stuff

### __VGA scanvideo__ from `pico-extras` by the __Raspberry Pi Foundation__

- For me, this is the base for all of this!
- <https://github.com/raspberrypi/pico-extras/tree/master/src/common/pico_scanvideo>

### __VGA demo board__ by __Pimoroni__

- Implementation of reference design from chapter 3 of <https://datasheets.raspberrypi.com/rp2040/hardware-design-with-rp2040.pdf>
- <https://shop.pimoroni.com/products/pimoroni-pico-vga-demo-base>

### __First thread about VGA__ on the __Raspberry Pi forums__

- That's what interested me in this stuff, after I bought a couple Picos in early 2021 and then the VGA demo board
- <https://forums.raspberrypi.com/viewtopic.php?p=1829133>

### __HAGL__ by __tuupola__

- Generic library for bitmap graphics, originally written with I²C or SPI LCD panels in mind
- <https://github.com/tuupola/hagl/>
- Uses __Unicode__ fonts in FONTX format, cf. <http://elm-chan.org/docs/dosv/fontx_e.html>
- Can be extended to new types of screens via an __Hardware Abstraction Layer (HAL)__, cf. below

### __HAGL HAL for Pico VGA board__ by __CHiPs44__ (it’s me ;-))

- <https://github.com/CHiPs44/hagl_pico_vgaboard>
- Framebuffer based
- For the VGA demo board
- Implements many VGA modes from <http://tinyvga.com/vga-timing> and several other sources
- Still buggy in terms of stability when using some modes and/or framebuffer manipulation techniques
- Has a rather complete demo

### __pshell__ by __lurk101__

- Serial accessible shell
- With vi (from busybox)
- And C compiler generating ARM M0+ code
- <https://github.com/lurk101/pshell>
- Uses internal flash by default with LittleFS, SD card support for VGA board

### __pt52__ by __DarkElevenAngel__

- VT-52 compatible serial terminal with vi editor that uses the VGA demo board
- <https://gitlab.com/DarkElvenAngel/pt52>
- __pt52-lua__ is on the way, cf. <https://gitlab.com/DarkElvenAngel/pt52-lua>

### __PicoVGA__ by __Miroslav Nemecek__

- <https://github.com/Panda381/PicoVGA>
- RGB332, not scanvideo based, uses its own DAC and PIO
- With sprites & layers
- See also <https://github.com/Panda381/PicoLibSDK>

### __MCUME__ by __Jean-Marc Harvengt__

- <https://github.com/Jean-MarcHarvengt/MCUME>
- MCUME includes several emulators of 8 bits computers for several MCUs
- VGA for the Pico is based on PicoVGA

### __PicoSystem__ from __Pimoroni__

- Game console on a tiny 240x240 LCD, with a C (C++?) SDK
- <https://shop.pimoroni.com/products/picosystem>
- <https://github.com/pimoroni/picosystem>
- Can run yocto-8 and some Pico-8 games

### __PicoBB__ by __Memotech-Bill & others__

- <https://github.com/Memotech-Bill/PicoBB>
- BBC Basic implementation for the VGA board
- IIRC, every function from the SDK is accessible and automatically included!

### __Picocomputer 6502__ by __Rumbledethumps__

- <https://github.com/picocomputer>
- 8 Mhz 65C02 as CPU + 2 supporting Picos for VGA and I/O
- Interesting concept of the PIX to handle communication between the Picos via PIO
- Back to an publicly open source project after a blackout period of time
- Great features on "GPU" side: 3 layers (bitmap, tilemap, text) with scrolling and "affine" sprites
- 8 channels PSG with waveforms and ADSR parameters (january 2024)

### __RP2040-PICO-PC__ by __Olimex__

- <https://www.olimex.com/Products/MicroPython/RP2040-PICO-PC/open-source-hardware>
- "Motherboard" is only 12€ (without Pico or Pico W)!
- "RP2040-PICO-PC allows RP2040-PICO to become a computer with SD card, HDMI display, Audio, USB keyboard, Li-Po charger and battery support, UEXT connector, and I2C connector."
- DVI/HDMI instead of VGA
- GPL v3 license

### __PicoMiteVGA__ & __WebMite__ by __Geoff & others__

- <https://geoffg.net/picomitevga.html> / <https://geoffg.net/webmite.html>
- <https://github.com/UKTailwind/PicoMite> / <https://github.com/UKTailwind/PicoMiteWeb>
- MMBasic seems to be great but its license is too restrictive, being open source only, not free as GPL nor permissive like MIT or BSD, see <https://geoffg.net/OpenSource.html> for an explanation
- Handles GPIO, I²C, SPI from BBC Basic
- WebMite has interesting ideas about networking functions (NTP, ...)

### __Neotron Pico__ by __Jonathan Pallant (the JPster)__

- <https://github.com/Neotron-Compute/Neotron-Pico>
- VGA is a 12 bits (RGB444) implementation of scanvideo to limit the amount of GPIO pins used
- Code is written in Rust (and intended as a showcase of embedded Rust)
- I/O controller is not a Pico, but there is an interesting notion of BIOS and an API to communicate via SPI (or serial ?)
- Motherboard is in micro ATX form factor and embeds several expansion connectors usable with SPI (or I²C?)

### __Picoputer__ by __amen__

- Emulation of Transputer nodes
- <https://github.com/blackjetrock/picoputer>
- <https://trochilidae.blogspot.com/2021/07/stack-based-with-os-in-hardware.html>
- Interesting for high speed communication between nodes using PIO
- I can't say I understand all the concepts around this ;-)

### __Pico-56__ by __Troy Schrapel__

- "The HBC-56 (65C02/TMS9918A/AY-3-8910 retro computer) fully emulated on a Raspberry Pi Pico"
- 12 bits VGA with homemade PIO (not scanvideo based)
- PS/2 keyboard, 2 NES ports,
- 65C02 CPU, 65C22 VIA, TMS9918A VDP, Dual AY-3-8910 PSGs, Dual NES controller inputs, PS/2 keyboard input, 96KB Banked RAM/ROM
- cf. <https://github.com/visrealm/pico-56/>
- MIT license
- can be repurposed to be whatever computer, see "episodes" for examples

### __Neo6502__ by __OLIMEX__

- 65C02 with RP2040 managing RAM and clock, HDMI output, USB keyboard
- <https://github.com/OLIMEX/Neo6502>
- Olimex sells it as Open Source Hardware, cf. <https://www.olimex.com/Products/Retro-Computers/Neo6502/open-source-hardware>  
- Prototype as of August 2023
- Apple //e, ][+ & Oric Atmos emulator: <https://github.com/vsladkov/reload-emulator>

### __PicoVision__ by __Pimoroni__

- Dual RP2040 (Pico W + RP2040 on board), DVI (HDMI), 2x8MB PSRAM (!)
- Shop: <https://shop.pimoroni.com/products/picovision?variant=41048911904851>
- Code: <https://github.com/pimoroni/picovision>, MIT license
- Pico-W soldered, no real way to

### __pico-vdp__ by Patrick Alastair

- <https://github.com/alastairpatrick/pico-vdp>
- Raspberry Pi Pico based Video Display Processor RC2014 Board with video and audio output, keyboard and mouse input
- Seems to be stalled in the "sprite" branch since 2022
- C, GPL 3.0

## Non pico stuff

### __FabGL__ by __Fabrizio Di Vittorio__

- C++ graphics library for ESP32 with 64 colors VGA output supporting PS/2 keyboard and mouse
- <http://www.fabglib.org/>

### __LVGL__ by __the LVGL team__

- Light and Versatile Graphic Library
- <https://lvgl.io/>
- License: MIT
- Language: C99 (C++ compatible)
- Very complete / complex
- Ported to Pico / RP2040 with LCD SPI/I²C screens in mind

### __Pico-8__ and __TIC-80__ fantasy consoles

- <https://www.lexaloffle.com/pico-8.php>
- Not open source, but great, see games like Celeste <https://www.lexaloffle.com/bbs/?tid=2145> for example!
- Both use Lua as default language
- <https://github.com/nesbox/TIC-80>
- Open source
- Uses Lua, too
- Both include sprite / map / sound / code editors
- The virtual resources are limited (low resolution, 16 colors, 4 channel sound, ...), but demand much more resources on the host, see <https://github.com/yocto-8/yocto-8> for an example of a Pico-8 player for RP2040 and the difficulties encountered

### __Agon light 2__ from __the Byte Attic__

- Modern Z80 implementation with a micro-controller for video and I/O
- <https://github.com/TheByteAttic/AgonLight>
- <https://www.thebyteattic.com/>
- No Pico inside, but it’s representative of some of the goals of this project
- Olimex sells it as Open Source Hardware, cf. <https://www.olimex.com/Products/Retro-Computers/AgonLight2/open-source-hardware>
- Runs BBC Basic

### __RC2014__ ecosystem

- Z80 based modular system
- <https://rc2014.co.uk/>
- Runs either homebrew, Microsoft BASIC, CP/M or MSX software
- Can use a Pico VGA terminal, cf. <https://rc2014.co.uk/modules/pi-pico-vga-terminal/>
