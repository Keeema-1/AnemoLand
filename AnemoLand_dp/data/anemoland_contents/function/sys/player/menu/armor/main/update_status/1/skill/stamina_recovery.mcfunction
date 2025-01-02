execute store result score #skill_level temp run data get storage temp:_ data.skill_levels.stamina_recovery 1
scoreboard players operation #skill_level.int temp = #skill_level temp
scoreboard players set #skill_level.decimal1 temp 0
item modify entity @s inventory.1 anemoland_contents:player_menu/main/status/skill/stamina_recovery
item modify entity @s inventory.2 anemoland_contents:player_menu/main/status/skill/stamina_recovery
