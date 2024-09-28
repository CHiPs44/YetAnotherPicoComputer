<!-- SPDX-Copyright-Text: © 2023 CHiPs44 <chips44@gmail.com> -->
<!-- SPDX-License-Identifier: CC-BY-SA-4.0 -->

# YAPC - Goals

__NB: As of august 2024, with the release of the RP2350, we now have 512 KB of internal RAM and 8 MB of PSRAM is easy to add.__

- Be a “__Boot to XXX__” computer leading to a REPL (Read-Eval-Print-Loop), like:
  - old 8 bits computers
  - DOS PCs (or MSX-DOS machines)
  - or console only GNU/Linux machines

- Should be an advanced 8 bits class computer, with some 16 bits features
  - Think of it as a mix of an Amstrad CPC, an Atari STe and an Amiga 500
  - 32 bits ARM M0+ overclocked at 250+ Mhz should give us much more power than these
  - 256 KB of RAM is the real limit (and PS-RAM in sadly not an option with the RP2040)
  - __NEW__ 512 KB of internal RAM, 8 MB of PSRAM

- Use a mix of “quite obsolete” and “modern” hardware
  - VGA must be used as the output (DVI / HDMI could be an option, especially with the HSTX capabilities of RP2350 that allow this without PIO magic)
  - Input peripherals like keyboard, gamepads and mouse should be USB, not PS/2
  - Sound should be stereo PCM, not an 3 or 4 voices sound chip like C64 SID or AY-3-8912 / YM-2149
  - A FAT32 SD card should be used for mass storage
  - A Battery backed-up RTC should be available, with support of NVRAM to keep computer settings
  - Wi-Fi and/or Ethernet networking could be part of it, either as a client or server
  - ...

- Have a “main” language
  - Be it compiled or interpreted
  - May be a dialect or full implementation of C, Basic, Lua, Pascal or other
  - Should be “reasonably modern” and “hassle free”, for example:
    - If Basic inspired, it should be without line numbers
    - String manipulation should be simple (not like C)
    - Integration of graphical assets and sounds should be straightforward

- Have a reasonably comfortable CLI to handle command edition and manipulation of files
  - Integration of commands in interpreted “main” language
  - Integrated shell with internal commands

- Write and run (not so simple) graphical programs like:
  - Fractals: Mandelbrot, Julia, …
  - Iconic games ports: Tetris, Space Invaders, Pac-Man, Boulder Dash, …

- Use it as a serial terminal emulator for other projects
  - ANSI / VT100 compatibility (colors, scrolling, …)
  - Internal shell should use this as its console, making porting a full screen editor and command line editing tools more simple
  - Support of file transfers to the SD card (X/Y/ZMODEM?)
  - Could be implemented as a text layer above graphical screen

- Should handle text as
  - 7bits US-ASCII:
    - realistic for retro-computing, but limiting, especially for european people and a no-go for many others
  - 8bits:
    - Unicode C0 (ASCII) & C1 (Latin 1)
      - should fit most western european people, especially french like me!
      - No “€” or “¢” as they didn't exist in the eighties
      - <https://en.wikipedia.org/wiki/Basic_Latin_(Unicode_block)#Chart>
      - <https://en.wikipedia.org/wiki/Latin-1_Supplement#Compact_table>
    - MS-DOS code page 437, 850, Windows 1252, ISO-8859-15
      - a good old nightmare strikes back!
      - <https://en.wikipedia.org/wiki/Code_page_437> for US Latin
      - <https://en.wikipedia.org/wiki/Code_page_850> for Western Europe Latin 1
      - <https://en.wikipedia.org/wiki/Windows-1252> for Americas, Western Europe, Oceania, and much of Africa, includes `€` and `¢` (0x81, 0x8D, 0x8F, 0x90, 0x9D are not defined, 0xAD / SHY / soft hyphen can be displayed as hyphen at first)
      - <https://en.wikipedia.org/wiki/ISO/IEC_8859-15> for Latin Alphabet No. 9 (0x80 to 0x9F are not defined as displayable characters)
  - <https://fr.wikipedia.org/wiki/UTF-16>: 16bits UTF-16 (BE or LE?) could be a good compromise, with a limitation to 16 bits "direct" glyphs
  - 32bits UTF-32 (BE or LE?): appears be a complete waste of our little memory, even if our CPU is 32 bits
  - for the former two, should we read and write text files as UTF-8?

- Should support several keyboard layouts “out of the box”
  - US, FR, DE at least
  - no firmware recompilation should be needed to change layout
  - see text support above for implications, for example “€”, “²” and other Unicode chars are available with FR layout, which need “dead keys” support, too
