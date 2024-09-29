<!-- SPDX-Copyright-Text: © 2023 CHiPs44 <chips44@gmail.com> -->
<!-- SPDX-License-Identifier: CC-BY-SA-4.0 -->

# RPG: Base Rules

_"One RPG To Rule Them All And In Darkness Bind Them"_ `;-)`

## Goals

Goal is to describe a minimalist RPG system that would be as simple as possible to implement on an 8bit/16bit-ish system.

Another goal is to not reinvent the wheel and use classical rules from D&D / d20 System for characters and monsters.

## Characters

### Characteristics

Values are rolled with 3d6 (3-18) and give a modifier (bonus or malus):

<center>

| 03-04 | 05-06 | 07-08 | 09-12 | 13-14 | 15-16 | 17-18 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  -3   |  -2   |  -1   |   0   |  +1   |  +2   |  +3   |

</center>

#### Base characteristics:

<center>

| Characteristic | Notes |
| -------------- | ----- |
| Strength       | -     |
| Intelligence   | -     |
| Wisdom         | -     |
| Dexterity      | -     |
| Constitution   | -     |
| Charisma       | -     |

</center>

Other attributes:

<center>

| Symbol | Explanation                |
| :----: | -------------------------- |
|   HP   | Hit points                 |
|   LV   | Level                      |
|   XP   | Experience points          |
|   AC   | Armour / Armor Class       |
|   DG   | Damage with current weapon |

</center>

There is no attack characteristic, one rolls one d20 and hits if result is greater or equal to AC of opponent.

- Strength modifier for melee weapons
- Dexterity modifier for ranged weapons

These modifiers can be changed by:

- Potions
- Spells
- Rings and necklaces
- Special abilities from magic weapons: +1 against undead monsters, for example

### Races

<center>

| Name     | Bonus           | Other rules                                         |
| -------- | --------------- | --------------------------------------------------- |
| Human    | None            | -                                                   |
| Dwarf    | +2 Constitution |                                                     |
| Elf      | +2 Charisma     |                                                     |
| Halfling | +2 Dexterity    | No two handed weapons as they are twice their size! |

</center>

Other candidates are Half Elf, Half Orc.

### Classes

<center>

| Class   | Prerequisite       | Hit die |
| ------- | ------------------ | ------: |
| Fighter | Strength >= 13     |     d10 |
| Cleric  | Wisdom >= 13       |      d8 |
| Thief   | Dexterity >= 13    |      d8 |
| Wizard  | Intelligence >= 13 |      d6 |

</center>

Level 1 maximum hit points (HP) are 1 hit die added with constitution modifier.

At each level, another life die and the constitution modifier are added to max HP.

Characters of level 6 (?) and above can use two one handed weapons and have 2 attacks in a round (or make twice the damages?):

- Thieves with 2 daggers
- Fighters with 2 swords, axes or hammers

### Fighter

<center>

| Domain         | Usable?                                  |
| -------------- | ---------------------------------------- |
| Magic          | None                                     |
| Melee Weapons  | Sword, Hammer, Axe, ... 2 handed allowed |
| Ranged Weapons | Bow, Crossbow, Spear, ...                |
| Armour         | Leather, chain mail, plates, shield      |

</center>

### Cleric

<center>

| Domain | Usable?                           |
| ------ | --------------------------------- |
| Magic  | Healing and spells                |
| Melee  | Staff, Club or Hammer (no blades) |
| Ranged | ?                                 |
| Armour | Up to chain mail                  |

</center>

### Thief

<center>

| Domain | Usable?                   |
| ------ | ------------------------- |
| Magic  | None                      |
| Melee  | Dagger, Short sword       |
| Ranged | Bow, Crossbow, Spear, ... |
| Armour | Up to leather, shield     |

</center>

### Wizard

<center>

| Domain | Usable?                  |
| ------ | ------------------------ |
| Magic  | Spells: attack & defense |
| Melee  | Dagger, staff            |
| Ranged | None                     |
| Armour | Clothes only             |

</center>

## Screen layout mockup

### Header

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

### Sheet

