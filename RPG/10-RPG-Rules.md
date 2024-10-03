<!-- SPDX-Copyright-Text: © 2023 CHiPs44 <chips44@gmail.com> -->
<!-- SPDX-License-Identifier: CC-BY-SA-4.0 -->

# RPG: Base Rules

_"One RPG To Rule Them All And In Darkness Bind Them"_ `;-)`

## Goals

Goal is to describe a minimalist RPG system that would be as simple as possible to implement on an 8bit/16bit-ish system.

Another goal is to not reinvent the wheel and use classical rules from D&D / d20 System for characters and monsters.

## Characters

### Characteristics

Values are rolled with 3d6 (3-18) and give a modifier (bonus or malus).

Table goes from 1 to 20 to account for racial or temporary changes.

<center>

| 01-02 | 03-04 | 05-06 | 07-08 | 09-12 | 13-14 | 15-16 | 17-18 | 19-20 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  -4   |  -3   |  -2   |  -1   |   0   |  +1   |  +2   |  +3   |  +4   |

</center>

#### Base characteristics

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

One changes this d20 roll by adding:

- Strength modifier for melee weapons
- Dexterity modifier for ranged weapons

This modifier can be changed:

- Permanently by:
  - Rings and necklaces
  - Special abilities from magic weapons: Sword +1 against undead monsters, for example
- Temporarily by:
  - Potions
  - Spells

### Races

<center>

| Name      | Bonus #1        | Bonus #2        | Other rules           |
| --------- | --------------- | --------------- | --------------------- |
| Human     | -               | -               | -                     |
| Dwarf     | +2 Constitution | -               | -                     |
| Elf       | +2 Dexterity    | -               | -                     |
| Half-Elf? | +1 Dexterity    | +1 Charisma     | -                     |
| Half-Orc? | +1 Strength     | +1 Constitution | -                     |
| Halfling  | +1 Dexterity    | +1 Constitution | No two handed weapons |

</center>

Bonuses are added to charateristic value, hence changing modifier from table.

### Classes

<center>

| Class   | Main characteristic (>=13) | Hit die |
| ------- | -------------------------- | ------: |
| Fighter | Strength                   |     d10 |
| Cleric  | Wisdom                     |      d8 |
| Thief   | Dexterity                  |      d8 |
| Wizard  | Intelligence               |      d6 |

</center>

### HP: Hit Points

Level 1 maximum hit points (HP) are 1 hit die added with constitution modifier.

At each level, another hit die and the constitution modifier are added to max HP.

### One melee weapon in each hand

Characters of level 5 (or more?) and above can use two one handed weapons and have 2 attacks in a round (or make twice the damage?):

- Thieves with 2 daggers
- Fighters with 2 swords, axes or hammers

Having 2 weapons forbids use of a shield.

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

