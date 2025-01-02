execute store result score #skill_level temp run data get storage temp:_ data.skill_levels.initial_gauge 1
scoreboard players set #const temp 10
scoreboard players operation #skill_level temp *= #const temp
scoreboard players set #const temp 100
scoreboard players operation #skill_level temp /= #const temp
scoreboard players operation #skill_level.int temp = #skill_level temp
scoreboard players set #const temp 10
scoreboard players operation #skill_level.int temp /= #const temp
scoreboard players operation #skill_level.decimal1 temp = #skill_level temp
scoreboard players operation #skill_level.decimal1 temp %= #const temp
scoreboard players set #const temp 10
scoreboard players operation #skill_level.decimal1 temp /= #const temp
item modify entity @s inventory.5 anemoland:player_menu/main/status/skill/initial_gauge
item modify entity @s inventory.6 anemoland:player_menu/main/status/skill/initial_gauge
