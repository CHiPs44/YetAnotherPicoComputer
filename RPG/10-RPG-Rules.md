<!-- SPDX-Copyright-Text: © 2023 CHiPs44 <chips44@gmail.com> -->
<!-- SPDX-License-Identifier: CC-BY-SA-4.0 -->

# RPG: Base Rules<!-- omit in toc -->

_"One RPG To Rule Them All And In Darkness Bind Them"_ `;-)`

- [Goals and target](#goals-and-target)
- [References](#references)
- [Characters](#characters)
  - [Abilities / Characteristics](#abilities--characteristics)
  - [Other attributes](#other-attributes)
  - [Races](#races)
  - [Classes](#classes)
  - [HP: Hit Points](#hp-hit-points)
  - [One melee weapon in each hand](#one-melee-weapon-in-each-hand)
  - [Fighter](#fighter)
  - [Cleric](#cleric)
  - [Thief](#thief)
  - [Wizard](#wizard)
- [Screen layout mockup](#screen-layout-mockup)
  - [Header](#header)
  - [Character Sheet](#character-sheet)

## Goals and target

Goal is to describe a minimalist RPG system that would be as simple as possible to implement on an 8bit/16bit-ish system.

Another goal is to not reinvent the wheel and use classical rules from D&D / d20 System for characters and monsters.

Target for this system is a top or topview 2D [Rogue](<https://en.wikipedia.org/wiki/Rogue_(video_game)>) or [Dungeon Master](<https://en.wikipedia.org/wiki/Dungeon_Master_(video_game)>) like with:

- A party of players (4?)
- outdoors instead of only caves

## References

- <https://en.wikipedia.org/wiki/D20_System>
- <https://www.d20srd.org/index.htm>
- <https://dnd4.fandom.com/wiki/>
  - <https://dnd4.fandom.com/wiki/Category:Abilities>

## Characters

### Abilities / Characteristics

<center>

| Characteristic | Notes                                                |
| -------------- | ---------------------------------------------------- |
| Strength       | Physical power, for melee attacks                    |
| Intelligence   | Reasoning and learning                               |
| Wisdom         | Common sense, perception, self-discipline, empathy   |
| Dexterity      | Agility, reflexes and balance                        |
| Constitution   | Health, stamina and vital force                      |
| Charisma       | Force of personality, persuasiveness, and leadership |

</center>

Values are rolled with 3d6 (3-18) and give a modifier (neutral, bonus or malus).

<center>

| 01-02 | 03-04 | 05-06 | 07-08 | 09-12 | 13-14 | 15-16 | 17-18 | 19-20 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  -4   |  -3   |  -2   |  -1   |   0   |  +1   |  +2   |  +3   |  +4   |

</center>

NB:

- table goes from 1 to 20 to account for racial (see below) or temporary changes (spells, poison, ...)
- some people roll 4d6 and discard the lowest one for each ability
- some "distribute" an amount of points (between 60 or 66) to determine abilities

### Other attributes

<center>

| Symbol | Explanation                | Example                                                            |
| :----: | -------------------------- | ------------------------------------------------------------------ |
|   HP   | Hit points                 | A wizard with 6 HP is wounded by the sword of a kobold and loses 4 |
|   LV   | Level                      | At level 5, fighters and thieves can use 2 one handed weapons      |
|   XP   | Experience points          | Killing an orc gives you 30 points                                 |
|   AC   | Armour / Armor Class       |                                                                    |
|   DG   | Damage with current weapon | 2d8 with a double handed axe                                       |

</center>

There is no attack characteristic, one rolls one d20 and hits if result is greater or equal to AC of opponent.

One changes this d20 roll by adding:

- Strength modifier for melee weapons
- Dexterity modifier for ranged weapons

These modifiers can be changed:

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
│Human Fighter    M││Elf Wizard       F││Dwarf Fighter    M││Halfling Thief   M│02
│LV: 1_  XP: 0_____││LV: 1_  XP: 0_____││LV: 1_   XP: 0____││LV:1_    XP: 0____│03
│HP: 12_ AC: 3_    ││HP: 12_ AC: 1_    ││HP: 10_  AC: 3_   ││HP: 10_  AC: 3_   │04
│DM: 1d8+1_        ││DM: 1d4+0_        ││DM: 1d4+0_        ││DM: 1d8+2_        │05
└──────────────────┘└──────────────────┘└──────────────────┘└──────────────────┘06
12345678901234567890123456789012345678901234567890123456789012345678901234567890
```

### Character Sheet

```text
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
┌──────────────────────────────────────────────────────────────────────────────┐
│ Name: Mirhuhkas_ │ Race: Human__ (M) │ Class: Fighter_  │ LV: _1 │ XP: __136 │
────────────────────────────────────────────────────────────────────────────────
│ STR: 17 +3 │ ____________________________________ │ HD: 1d8_ │ HP: _12 / _12 │ 
│ INT: 12 __ │──────────────────────────────────────────────────────────────────
│ WIS: 11 __ │ Armor: Leather____________________________ 10 + 3_ + 1 │ AC: 14 │
│ DEX: 14 +1 │──────────────────────────────────────────────────────────────────
│ CON: 15 +1 │ Melee: Sword_____________________________________ │ DG: 1d8_ +1 │ 
│ CHA: _8 -1 │ Range: __________________________________________ │     _______ │
────────────────────────────────────────────────────────────────────────────────

```
