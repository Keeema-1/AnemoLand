tag @s add enemy
function anemoland_contents:sys/entity/mob/squirrel_head/summon/common/status
execute store result score #gold_bonus temp run data get storage temp:_ data.event_bonus.gold 50
execute store result score #xp_bonus temp run data get storage temp:_ data.event_bonus.xp 50
execute store result score @s drop_bonus run data get storage temp:_ data.event_bonus.drop 1
scoreboard players set @s gold 80
scoreboard players operation @s gold *= #new_entity.level temp
scoreboard players add @s gold 200
scoreboard players add #gold_bonus temp 100
scoreboard players operation @s gold *= #gold_bonus temp
scoreboard players set #const temp 1000
scoreboard players operation @s gold /= #const temp
scoreboard players set @s xp 80
scoreboard players operation @s xp *= #new_entity.level temp
scoreboard players add @s xp 200
scoreboard players add #xp_bonus temp 100
scoreboard players operation @s xp *= #xp_bonus temp
scoreboard players set #const temp 1000
scoreboard players operation @s xp /= #const temp
