<!-- SPDX-Copyright-Text: © 2023 CHiPs44 <chips44@gmail.com> -->
<!-- SPDX-License-Identifier: CC-BY-SA-4.0 -->

# Setup with RP2350

See [Inspirations](10-Inspirations.md) for first impressions on RP2350 / Pico 2.

## Keeping VGA output and VGA demo board

With the scanvideo library and some overclocking, possibilities are infinite, and multiplane (up to 3 for bitmap, sprites & text for example) is great, too.

**Picocomputer 6502** by **Rumbledethumps** is a good example of what you an achieve with multiplanes, but uses 2 Picos + 1 65C02.

On the VGA demo board, most of GPIO pins are used for VGA (17 of 25/26 for Pico 1 or 2), leaving just enough for sound (PWM **or** DAC) and SD card (4-bits or 1-bit with cutted PCB traces for serial):

| GPIO  | Function         |
| ----- | ---------------- |
| 0-4   | RED              |
| 6-10  | GREEN            |
| 11-15 | BLUE             |
| 16    | VSyNC            |
| 17    | HSYNC            |
| 18-22 | SD CARD / SERIAL |
| 25    | ONBOARD LED      |
| 26    | FREE?            |
| 27-28 | PWM / DAC        |

**Neotron Pico** reduces palette to 12 bits to regain 3 GPIO, but it means building a new board...

### Pico 2

**Pico 2** has the same pinout, so the lack of available pins is the same, but offers twice the RAM (512 + 4 + 4 instead of 256 + 4 + 4), which is "somewhat interesting" if using a (double) framebuffer for screen rendering.

A typical computer of the 80s like the Amstrad CPC 464 allocated 16K of its 64K RAM.

With 512K, one quarter is 128K, enough for:

- 2 x 320x200 in 256 colors (2 x 64,000)
- 1 x 320x240 in 256 colors (1 x 76,800)
- 1 x 512x384 in 16 colors (1 x 98,304)
- 1 x 640x400 in 16 colors (1 x 128,000)
- ...

### Pimoroni Pico Plus 2

**Pico 2** is great but **Pimoroni Pico Plus 2** is greater!

Pimoroni Pico Plus 2 has some advantages:

- uses an RP2350B (80 pins) which adds 16 GPIOs
- uses some of these GPIO for 8MB of QSPI PSRAM and 16MB of QSPI flash
- and an 8-pins SP/CE connector: VSYS, 3V3, 5 GPIO (32-36 SPI/I²C/UART/PWM), GND
- adds an 4-pins QW/ST connector: GPIO 4-5 (I²C #0), 3V3, GND, which are used by VGA, so not too intersting

At first sight, these 8 MB of PSRAM may not be fast enough to store the "live" framebuffer(s) for scanvideo, but can be used to store programs, resources and transient data.

The 5 supplemental GPIOs could be used for some options:

- **serial connection** (TX/RX)
  - allows to keep SD card in 4-bits mode or
  - connect to an Ethernet or WiFi "modem" using "AT" commands
- **battery backed-up RTC module** like DS3231 (I²C SDA/SCL)
  - other I²C modules like LCD 2x16 (or more) can be chained

NB: finding an SP/CE 8-pins 1.0mm JST connector breakout cable to DuPont seems not easy out of Pimoroni itself.

PSRAM makes room to an even bigger VRAM in 512K SRAM space, going up to 192K or even more (384K) would make possible such modes as:

- 2 x 320x240 in 256 colors (2 x 153,600)
- 1 x 640x480 in 16 colors (1 x 153,600)
- ...

We should keep some space for fonts, sprites or tiles assets and system variables.

## HSTX and DVI/HDMI to the rescue?

PicoDVI is a hack (see <https://github.com/pimoroni/picovision/issues/91> for example)
