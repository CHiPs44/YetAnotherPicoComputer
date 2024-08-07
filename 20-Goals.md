# YAPC - Goals

- Be a “__Boot to XXX__” computer leading to a REPL (Read-Eval-Print-Loop), like:
  - old 8 bits computers
  - DOS PCs (or MSX-DOS machines)
  - or console only GNU/Linux machines

- Should be an advanced 8 bits class computer, with some 16 bits features
  - Think of it as a mix of an Amstrad CPC, an Atari STe and an Amiga 500
  - 32 bits ARM M0+ overclocked at 250+ Mhz should give us much more power than these
  - 256 kb of RAM is the real limit (and PS-RAM in sadly not an option with the RP2040)

- Use a mix of “quite obsolete” and “modern” hardware
  - VGA must be used as the output (DVI / HDMI could be an option)
  - Input peripherals like keyboard, gamepads and mouse should be USB, not PS/2
  - Sound should be stereo PCM, not an 3 or 4 voices sound chip like C64 SID or AY3-8912
  - A FAT32 SD card should be used for mass storage
  - A Battery backed-up RTC should be available, with support of NVRAM to keep computer settings
  - Wi-Fi and/or Ethernet networking could be part of it, either as a client or server
  - ...

- Have a “main” language
  - Be it compiled or interpreted
  - May be a dialect or full implementation of C, Basic, Lua, Pascal or other
  - Should be “reasonably modern” and “hassle free”, for example:
    - If Basic inspired, it should be without line numbers
    - String manipulation shouldn’t be a nightmare (as in C)
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
      - <https://en.wikipedia.org/wiki/Windows-1252> for Americas, Western Europe, Oceania, and much of Africa
      - <https://en.wikipedia.org/wiki/ISO/IEC_8859-15> for Latin Alphabet No. 9
  - 16bits UTF-16 (BE or LE?): could be a good compromise (should we read and write text files as UTF-8?)
  - 32bits UTF-32 (BE or LE?): appears be a complete waste of our little memory

- Should support several keyboard layouts “out of the box”
  - US, FR at least, compile time option
  - see text support above for implications, for example “€”, “²” and other Unicode chars are available with FR layout, which need “dead keys” support, too
