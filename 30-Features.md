# YAPC - Features

Here is now a list of desirable features:

## VGA output

- Fixed size framebuffer (less than 64 kb or even down to 32000 bytes)
- 12 bits RGB output, scanvideo compatible (even the Atari STe and the Amiga had these 4096 colors palette!)
- From monochrome to up to 256 colors indexed using palettes
- From 640x400 up to 1280x1024 based VGA modes
- Hardware sprites / layers? With diffrent palette(s)?
- Ability to switch from 1/2/4/8 bpp in the same VGA base mode without reboot
- May need a reboot to change VGA base mode
- Text mode overlay with fixed width font?
- Settings stored on RTC NVRAM (or SD card?) to be applied on next boot

## Sound

- Stereo output, so a least 2 channels (left and right)
- 4 channels, 2 to the left and 2 to the right like an Amiga?
- 16 bits @ 44100 Hz, 8 bits @ 22050 or 8 bits @ 11025 Hz?
- Should be able to play 4 channels original soundtracker MODs with reasonable quality (see <https://github.com/moefh/pico-mod-player> and <https://modarchive.org/index.php?request=view_profile&query=90994>)

## Real Time Clock (RTC)

- DS1307 or better (DS3231?) based
- Battery backed-up
- Use of 56 bytes NVRAM for settings

## USB

- Keyboard (1 max), layout (DE/FR/US at least) saved in NVRAM
- Mouse (optional, 1 max)
- Digital joysticks / gamepads (1 at least, up to 4?)
- May be limited to 4 “full speed” ports

## SD Card

- FAT32
- Up to 32 Mb (is more a good idea?)

## Serial

- One serial port should be available

## Networking (optional)

Either solution should support file transfers:

- Wi-Fi
  - Settings on SD card (SSID & al., DHCP only?) as they won’t fit easily in 56 bytes of NVRAM
  - API for HTTP calls only (methods: GET / POST / PUT / DELETE and so on)
- Ethernet
  - W5100S based like <https://www.elektor.fr/wiznet-ethernet-hat-for-raspberry-pi-pico>?
  - IPv4 only
  - Settings on SD card (static IP or DHCP) as they won’t fit easily in 56 bytes of NVRAM
