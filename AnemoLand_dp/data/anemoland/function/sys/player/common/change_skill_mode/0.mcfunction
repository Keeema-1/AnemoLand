
scoreboard players add @s skill_mode 1

execute store result score #num_skills temp run data get storage temp:_ data.attack_skills

execute if score @s skill_mode > #num_skills temp run scoreboard players reset @s skill_mode

execute store result score #gauge_consume temp run data get storage temp:_ data.attack_skills[0].gauge_consume
execute unless score @s skill_gauge >= #gauge_consume temp run scoreboard players reset @s skill_mode

execute if score @s skill_mode matches 1.. run playsound block.note_block.chime master @s ~ ~ ~ 1 2
