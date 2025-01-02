execute store result score #skill_level temp run data get storage temp:_ data.skill_levels.recovery_up 1
scoreboard players set #const temp 800
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
item modify entity @s inventory.1 anemoland_contents:player_menu/main/status/skill/recovery_up
item modify entity @s inventory.2 anemoland_contents:player_menu/main/status/skill/recovery_up
