execute store result score #skill_level temp run data get storage temp:_ data.skill_levels.stamina_recovery 1
scoreboard players operation #skill_level.int temp = #skill_level temp
scoreboard players set #skill_level.decimal1 temp 0
item modify entity @s inventory.5 anemoland:player_menu/status/skill/stamina_recovery
item modify entity @s inventory.6 anemoland:player_menu/status/skill/stamina_recovery
