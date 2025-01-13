execute store result score #skill_level temp run data get storage temp:_ data.player_storage.skill_levels.crisis_strength 1
scoreboard players operation #skill_level.int temp = #skill_level temp
scoreboard players set #skill_level.decimal1 temp 0
item modify entity @s inventory.0 anemoland_contents:skill/crisis_strength
