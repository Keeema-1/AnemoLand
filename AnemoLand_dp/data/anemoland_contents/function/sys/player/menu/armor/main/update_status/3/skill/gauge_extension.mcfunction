execute store result score #skill_level temp run data get storage temp:_ data.skill_levels.gauge_extension 1
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
item modify entity @s inventory.5 anemoland_contents:player_menu/main/status/skill/gauge_extension
item modify entity @s inventory.6 anemoland_contents:player_menu/main/status/skill/gauge_extension
