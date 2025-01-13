execute store result score #skill_level temp run data get storage temp:_ data.player_storage.skill_levels.bring_it_on 1
scoreboard players operation #skill_level.int temp = #skill_level temp
scoreboard players set #skill_level.decimal1 temp 0
item modify entity @s inventory.3 anemoland_contents:skill/bring_it_on
item modify entity @s inventory.4 anemoland_contents:skill/bring_it_on
