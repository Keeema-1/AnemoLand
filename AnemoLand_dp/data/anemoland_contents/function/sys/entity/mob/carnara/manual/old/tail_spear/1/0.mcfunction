tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 16..25 if score @s action_way matches 0 at @s run tp @s ~ ~ ~ ~3 ~
execute if score @s action_time matches 16..25 if score @s action_way matches 1 at @s run tp @s ~ ~ ~ ~-3 ~

execute if score @s action_time matches ..10 run data modify storage temp:_ data.rot2vec set value {abs:0.6}
execute if score @s action_time matches 11..20 run data modify storage temp:_ data.rot2vec set value {abs:0.4}
execute if score @s action_time matches 21..25 run data modify storage temp:_ data.rot2vec set value {abs:0.2}
execute if score @s action_time matches 26..50 run data modify storage temp:_ data.rot2vec set value {abs:0.1}
execute if score #hostile_target.is_player temp matches 1 rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
execute unless score #hostile_target.is_player temp matches 1 rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
data modify entity @s Motion set from storage temp:_ data.vec

execute if score @s action_time matches 16..30 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.7 0
scoreboard players operation #entity_id temp = @s entity_id
execute if score @s action_time matches 16..30 as @e[type=#anemoland:mob_core,tag=hitbox.tail,tag=carnara,distance=..32] if score @s entity_id = #entity_id temp at @s run particle sweep_attack ~ ~ ~ 1 1 1 1 1

execute if score @s action_time matches 16..30 run function anemoland_contents:sys/entity/mob/carnara/attack/tail1/0

execute if score @s action_time matches 50..90 if score @s action_way matches 0 at @s run tp @s ~ ~ ~ ~1 ~
execute if score @s action_time matches 50..90 if score @s action_way matches 1 at @s run tp @s ~ ~ ~ ~-1 ~

execute if score @s action_time matches 120.. run function anemoland_contents:sys/entity/mob/carnara/manual/action/tail_spear/end
