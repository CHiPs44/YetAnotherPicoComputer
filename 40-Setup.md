<!-- SPDX-Copyright-Text: © 2023 CHiPs44 <chips44@gmail.com> -->
<!-- SPDX-License-Identifier: CC-BY-SA-4.0 -->

# Setup

There are not enough GPIO pins nor RAM on a single Pico to handle all the stuff we want, so a dual or even triple Pico setup seems to be a possible way to go.

## Idea #1: Main with VGA and sound, I/O on another

- Pico #1: __Main__
  - Base model (or an extended one with 8 or 16 Mb of flash memory)
  - REPL / Shell / Editor
  - VGA framebuffer
  - Sound hardware

- Pico #2: __I/O__
  - Either base model or W if Wi-Fi needed
  - USB 1.1 via multi-port hub for keyboard, mouse and gamepads
  - SD Card
  - RTC
  - Wi-Fi
  - Ethernet

- Link with other Pico
  - See below for possible hardware solutions
  - API to make requests from main Pico to I/O Pico

Pros:

- “Real time” access to VGA & sound

Cons:

- Limited size of framebuffer or code, need to find a trade-off between the 2
- I/O will be constrained by link speed

## Idea #2: Main with I/O and VGA on the other

The main resource hog is VGA, so we could dedicate a Pico to it, and using it as a “graphical co-processor” from the main Pico.

- Pico #1: __Main__
  - Either base model or W if Wi-Fi needed
  - REPL / Shell / Editor
  - Sound hardware
  - USB 1.1 via multi-port hub
  - SD Card
  - RTC
  - Wi-Fi
  - Ethernet

- Pico #2: VGA
  - Base model

- Link between the Picos
  - See below for possible hardware solutions

- API to send requests from main Pico to VGA Pico
  - Graphic primitives (put pixel, line, rectangle, circle & al., see HAGL)
  - Font uploading and text drawing
  - Assets uploading (images and sprites)
  - Blitting primitives (display image portion, display or move sprite, ...)
  - Tilemap support?
  - Scrolling support?

Pros:

- No trade-off needed anymore for program size on main Pico
- Framebuffer could be bigger, even more than 64K
- Better stabillity of VGA can be expected
- I/O, notably file access will be faster
- This VGA implementation could be used in other projects

Cons:

- Link speed will limit control on the VGA part
- I/O, notably Wi-Fi, will use RAM & Flash space on main Pico
- VGA API programming will be more complex on either side
- It's essentially reproducing an I²C/SPI LCD panel with VGA output

## Idea #3: Main, I/O & VGA

- Pico #1: __Main__
  - Base model (or an extended one with 8 or 16 Mb of flash memory)
  - REPL / Shell / Editor

- Pico #2: __I/O__
  - Either base model or W if Wi-Fi needed
  - USB 1.1 via multi-port hub for keyboard, mouse and gamepads
  - SD Card
  - RTC
  - Wi-Fi
  - Ethernet

- Pico #3: __VGA__
  - See VGA of idea #2

Pros:

- See idea #2 except I/O speed
- Main Pico is quite entirely free to handle whatever we want

Cons:

- See idea #2 except Wi-Fi resource usage

## Communication between the Picos

- Hardware
  - Serial?
  - SPI?
  - PIO + DMA?
  - Other?

- Software
  - See <https://docs.rs/neotron-common-bios/latest/neotron_common_bios/all.html>