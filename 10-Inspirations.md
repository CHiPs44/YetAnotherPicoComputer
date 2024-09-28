<!-- SPDX-Copyright-Text: © 2023 CHiPs44 <chips44@gmail.com> -->
<!-- SPDX-License-Identifier: CC-BY-SA-4.0 -->

# YAPC - Inspirations

From the release of the Raspbery Pi Pico in January 2021 till now (december 2023), there are many projects around VGA and DVI/HDMI screen output, surrounded by a more ancient wave of other retro computers using other micro-controllers and/or 8 or 16 bits CPUs, mainly because old 8 bits computers are either too old or too expensive compared to what Arduino, ESP32 & al. cost and are able to achieve.

Here's now a list of projects that are related to this:

## Pico stuff

### **VGA scanvideo** from `pico-extras` by the **Raspberry Pi Foundation**

- For me, this is the base for all of this!
- <https://github.com/raspberrypi/pico-extras/tree/master/src/common/pico_scanvideo>

### **VGA demo board** by **Pimoroni**

- Implementation of reference design from chapter 3 of <https://datasheets.raspberrypi.com/rp2040/hardware-design-with-rp2040.pdf>
- <https://shop.pimoroni.com/products/pimoroni-pico-vga-demo-base>
- RGAB5515 output: 5 bits for red, green and blue, 1 bit for alpha / transparency

### **First thread about VGA** on the **Raspberry Pi forums**

- That's what interested me in this stuff, I bought a couple Picos in early 2021 and then the VGA demo board
- <https://forums.raspberrypi.com/viewtopic.php?p=1829133>

### **HAGL** by **tuupola**

- Generic library for bitmap graphics, originally written with I²C or SPI LCD panels in mind
- <https://github.com/tuupola/hagl/>
- Uses **Unicode** fonts in FONTX format, cf. <http://elm-chan.org/docs/dosv/fontx_e.html>
- Can be extended to new types of screens via an **Hardware Abstraction Layer (HAL)**, cf. below

### **HAGL HAL for Pico VGA board** by **CHiPs44** (it’s me ;-))

- <https://github.com/CHiPs44/hagl_pico_vgaboard>
- Framebuffer based
- For the VGA demo board
- Implements many VGA modes from <http://tinyvga.com/vga-timing> and several other sources
- Still buggy in terms of stability when using some modes and/or framebuffer manipulation techniques
- Has a rather complete demo

### **pshell** by **lurk101**

- Serial accessible shell
- With vi (from busybox)
- And C compiler generating ARM M0+ code
- <https://github.com/lurk101/pshell>
- Uses internal flash by default with LittleFS, SD card support for VGA board

### **pt52** by **DarkElevenAngel**

- VT-52 compatible serial terminal with vi editor that uses the VGA demo board
- <https://gitlab.com/DarkElvenAngel/pt52>
- **pt52-lua** is on the way, cf. <https://gitlab.com/DarkElvenAngel/pt52-lua>

### **PicoVGA** by **Miroslav Nemecek**

- <https://github.com/Panda381/PicoVGA>
- RGB332, not scanvideo based, uses its own DAC and PIO
- With sprites & layers
- See also <https://github.com/Panda381/PicoLibSDK>

### **MCUME** by **Jean-Marc Harvengt**

- <https://github.com/Jean-MarcHarvengt/MCUME>
- MCUME includes several emulators of 8 bits computers for several MCUs
- VGA for the Pico is based on PicoVGA

### **PicoSystem** from **Pimoroni**

- Game console on a tiny 240x240 LCD, with a C (C++?) SDK
- <https://shop.pimoroni.com/products/picosystem>
- <https://github.com/pimoroni/picosystem>
- Can run yocto-8 and some Pico-8 games

### **PicoBB** by **Memotech-Bill & others**

- <https://github.com/Memotech-Bill/PicoBB>
- BBC Basic implementation for the VGA board
- IIRC, every function from the SDK is accessible and automatically included!

### **Picocomputer 6502** by **Rumbledethumps**

- <https://github.com/picocomputer>
- 8 Mhz 65C02 as CPU + 2 supporting Picos for VGA and I/O
- Interesting concept of the PIX to handle communication between the Picos via PIO
- Back to an publicly open source project after a blackout period
- Scanvideo features on "GPU" side: 3 selectable layers (bitmap, tilemap, sprites, text) with scrolling and "affine" sprites
- 8 channels PSG with waveforms and ADSR parameters (january 2024)

### **RP2040-PICO-PC** by **Olimex**

- <https://www.olimex.com/Products/MicroPython/RP2040-PICO-PC/open-source-hardware>
- "Motherboard" is only 12€ (without Pico or Pico W)!
- "RP2040-PICO-PC allows RP2040-PICO to become a computer with SD card, HDMI display, Audio, USB keyboard, Li-Po charger and battery support, UEXT connector, and I2C connector."
- DVI/HDMI instead of VGA
- GPL v3 license

### **PicoMiteVGA** & **WebMite** by **Geoff & others**

- <https://geoffg.net/picomitevga.html> / <https://geoffg.net/webmite.html>
- <https://github.com/UKTailwind/PicoMite> / <https://github.com/UKTailwind/PicoMiteWeb>
- MMBasic seems to be great but its license is too restrictive, being open source only, not free as GPL nor permissive like MIT or BSD, see <https://geoffg.net/OpenSource.html> for an explanation
- Handles GPIO, I²C, SPI from MMBasic
- WebMite has interesting ideas about networking functions (NTP, ...)

### **Neotron Pico** by **Jonathan Pallant (the JPster)**

- <https://github.com/Neotron-Compute/Neotron-Pico>
- VGA is a 12 bits (RGB444) implementation of scanvideo to limit the amount of GPIO pins used
- Code is written in Rust (and intended as a showcase of embedded Rust)
- I/O controller is not a Pico, but there is an interesting notion of BIOS and an API to communicate via SPI (or serial ?)
- Motherboard is in micro ATX form factor and embeds several expansion connectors usable with SPI (or I²C?)

### **Picoputer** by **amen**

- Emulation of Transputer nodes
- <https://github.com/blackjetrock/picoputer>
- <https://trochilidae.blogspot.com/2021/07/stack-based-with-os-in-hardware.html>
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
- <https://github.com/OLIMEX/Neo6502>
- Olimex sells it as Open Source Hardware, cf. <https://www.olimex.com/Products/Retro-Computers/Neo6502/open-source-hardware>
- Prototype as of August 2023
- Apple //e, ][+ & Oric Atmos emulator: <https://github.com/vsladkov/reload-emulator>

### **PicoVision** by **Pimoroni**

- Dual RP2040 (Pico W + RP2040 on board), DVI (HDMI), 2x8MB PSRAM (!)
- Shop: <https://shop.pimoroni.com/products/picovision?variant=41048911904851>
- Code: <https://github.com/pimoroni/picovision>, MIT license
- Pico-W soldered, no way to replace it

### **pico-vdp** by Patrick Alastair

- <https://github.com/alastairpatrick/pico-vdp>
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

## Non Pico stuff

### **FabGL** by **Fabrizio Di Vittorio**

- C++ graphics library for ESP32 with 64 colors VGA output supporting PS/2 keyboard and mouse
- <http://www.fabglib.org/>

### **LVGL** by **the LVGL team**

- Light and Versatile Graphic Library
- <https://lvgl.io/>
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

- <https://www.lexaloffle.com/pico-8.php>
- Not open source, but great, see games like Celeste <https://www.lexaloffle.com/bbs/?tid=2145> for example!
- <https://github.com/nesbox/TIC-80>
- Open source (MIT license)
- Both use Lua as default language
- Both include sprite / map / sound / code editors
- The virtual resources are limited (low resolution, 16 colors, 4 channel sound, ...), but demand much more resources on the host, see <https://github.com/yocto-8/yocto-8> for an example of a Pico-8 player for RP2040 and the difficulties encountered

### **Agon light 2** from **the Byte Attic**

- Modern Z80 implementation with a micro-controller for video and I/O
- <https://github.com/TheByteAttic/AgonLight>
- <https://www.thebyteattic.com/>
- No Pico inside, but it’s representative of some of the goals of this project
- Olimex sells it as Open Source Hardware, cf. <https://www.olimex.com/Products/Retro-Computers/AgonLight2/open-source-hardware>
- Runs BBC Basic

### **RC2014** ecosystem

- Z80 based modular system
- <https://rc2014.co.uk/>
- Runs either homebrew, Microsoft BASIC, CP/M or MSX software
- Can use a Pico VGA terminal, cf. <https://rc2014.co.uk/modules/pi-pico-vga-terminal/>
