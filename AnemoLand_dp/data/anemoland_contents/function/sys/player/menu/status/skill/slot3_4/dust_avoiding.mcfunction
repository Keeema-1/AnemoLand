execute store result score #skill_level temp run data get storage temp:_ data.player_storage.skill_levels.dust_avoiding 10
scoreboard players set #const temp 2500
scoreboard players operation #skill_level temp *= #const temp
scoreboard players set #const temp 100
scoreboard players operation #skill_level temp /= #const temp
scoreboard players operation #skill_level.int temp = #skill_level temp
scoreboard players set #const temp 10
scoreboard players operation #skill_level.int temp /= #const temp
scoreboard players operation #skill_level.decimal1 temp = #skill_level temp
scoreboard players operation #skill_level.decimal1 temp %= #const temp
scoreboard players set #const temp 0
scoreboard players operation #skill_level.decimal1 temp /= #const temp
item modify entity @s inventory.3 anemoland_contents:skill/dust_avoiding
item modify entity @s inventory.4 anemoland_contents:skill/dust_avoiding
