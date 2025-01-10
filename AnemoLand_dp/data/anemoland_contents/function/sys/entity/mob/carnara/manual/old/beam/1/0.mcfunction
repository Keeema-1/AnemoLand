tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 20..60 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 0.4 0.2

execute if score @s action_time matches 20..60 run function anemoland_contents:sys/entity/mob/carnara/manual/action/common/beam/0

# execute if score @s action_time matches ..10 run data modify storage temp:_ data.rot2vec set value {abs:0.2}
# execute if score @s action_time matches 11..20 run data modify storage temp:_ data.rot2vec set value {abs:0.2}
# execute if score @s action_time matches 21..25 run data modify storage temp:_ data.rot2vec set value {abs:0.2}
# execute if score @s action_time matches 26..50 run data modify storage temp:_ data.rot2vec set value {abs:0.1}
# execute if score #hostile_target.is_player temp matches 1 rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
# execute unless score #hostile_target.is_player temp matches 1 rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
# data modify entity @s Motion set from storage temp:_ data.vec

# # execute if score @s action_time matches 10..30 run function anemoland_contents:sys/entity/mob/carnara/attack/dive1/0

# execute if score @s action_time matches 20..30 rotated ~ 0 run particle explosion ^ ^1 ^3 3 0.5 3 1 2
# execute if score @s action_time matches 20..30 rotated ~ 0 run particle explosion ^ ^1 ^8 3 0.5 3 1 2
# execute if score @s action_time matches 20..22 as @a[distance=..64] at @s run playsound minecraft:entity.generic.explode hostile @s ~ ~ ~ 0.7 0

execute if score @s action_time matches 150.. run function anemoland_contents:sys/entity/mob/carnara/manual/action/beam_high/end

execute if entity @s[tag=angry] if score @s action_time matches 140.. run function anemoland_contents:sys/entity/mob/carnara/manual/action/beam_high/end
