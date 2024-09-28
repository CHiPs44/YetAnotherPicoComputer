<!-- SPDX-Copyright-Text: © 2023 CHiPs44 <chips44@gmail.com> -->
<!-- SPDX-License-Identifier: CC-BY-SA-4.0 -->

# RPG

_"One RPG To Rule Them All And In Darkness Bind Them"_ `;-)`

## Goals

Goal is to describe a minimalist RPG system that would be as simple as possible to implement on an 8bit/16bit-ish system.

Another goal is to not reinvent the wheel and use classical rules from D&D / d20 System for characters and monsters.

## Characters

### Attributes / characteristics

Values are rolled with 3d6 (3-18) and give a modifier (bonus or malus):

| 03-04 | 05-06 | 07-08 | 09-12 | 13-14 | 15-16 | 17-18 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  -3   |  -2   |  -1   |   0   |  +1   |  +2   |  +3   |

Base characteristics:

- Strength
- Intelligence
- Wisdom
- Dexterity
- Constitution
- Charisma

Others:

- HP: Hit points
- LVL: Level
- XP: Experience points
- AC: Armor Class
- DMG: Damage with current weapon

### Races

| Name     | Bonus           |
| -------- | --------------- |
| Human    | None            |
| Dwarf    | +2 Constitution |
| Elf      | +2 Dexterity    |
| Halfling | + Dexterity     |

Other candidates are Half Elf, Half Orc.

### Classes

| Class   | Prerequisite       | Hit die |
| ------- | ------------------ | :-----: |
| Fighter | Strength >= 13     |   d10   |
| Cleric  | Wisdom >= 13       |   d8    |
| Thief   | Dexterity >= 13    |   d8    |
| Wizard  | Intelligence >= 13 |   d6    |

Level 1 max HPs are 1 hit die added with constitution modifier.

At each level, another life die and the constitution modifier are added to max HP.

### Fighter

| Domain         | Usable?                                  |
| -------------- | ---------------------------------------- |
| Magic          | None                                     |
| Melee Weapons  | Sword, Hammer, Axe, ... 2 handed allowed |
| Ranged Weapons | Bow, Crossbow, Spear, ...                |
| Armour         | Leather, chain mail, plates, shield      |

### Cleric

| Domain | Usable?                           |
| ------ | --------------------------------- |
| Magic  | Healing and spells                |
| Melee  | Staff, Club or Hammer (no blades) |
| Ranged | ?                                 |
| Armour | Up to chain mail                  |

### Thief

| Domain | Usable?                   |
| ------ | ------------------------- |
| Magic  | None                      |
| Melee  | Dagger                    |
| Ranged | Bow, Crossbow, Spear, ... |
| Armour | Up to leather, shield     |

### Wizard

| Domain | Usable?                  |
| ------ | ------------------------ |
| Magic  | Spells: attack & defense |
| Melee  | Dagger, staff            |
| Ranged | None                     |
| Armour | Clothes only             |

## Screen layout mockup

```text
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
┌───────[Mirhuhkas]┐┌──────[Alvaerelle]┐┌────────[Thazmeac]┐┌─────────[Garrick]┐01
│Human Fighter    M││Elf Wizard       F││Dwarf Fighter    M││Human Thief      M│02
│LV: 1_  XP: 0_____││LV: 1_  XP: 0_____││LV: 1_   XP: 0____││LV:1_    XP: 0____│03
│HP: 12_ AC: 3_    ││HP: 12_ AC: 1_    ││HP: 10_  AC: 3_   ││HP: 10_  AC: 3_   │04
│DM: 1d8+1_        ││DM: 1d4+0_        ││DM: 1d4+0_        ││DM: 1d8+2_        │05
└──────────────────┘└──────────────────┘└──────────────────┘└──────────────────┘06
12345678901234567890123456789012345678901234567890123456789012345678901234567890
```
