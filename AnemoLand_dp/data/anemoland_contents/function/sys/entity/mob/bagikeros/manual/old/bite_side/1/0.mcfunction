
execute if score @s action_way matches 0 if score @s action_time matches ..10 at @s run tp @s ~ ~ ~ ~6 ~
execute if score @s action_way matches 1 if score @s action_time matches ..10 at @s run tp @s ~ ~ ~ ~-6 ~

execute if score @s action_way matches 0 if score @s action_time matches 11..20 at @s run tp @s ~ ~ ~ ~3 ~
execute if score @s action_way matches 1 if score @s action_time matches 11..20 at @s run tp @s ~ ~ ~ ~-3 ~

execute if score @s action_time matches 21.. run tp @s ~ ~ ~ ~ ~

execute if score @s action_way matches 1 if score @s action_time matches 5..10 run particle sweep_attack ^4 ^2 ^6
execute if score @s action_way matches 0 if score @s action_time matches 5..10 run particle sweep_attack ^-4 ^2 ^6
execute if score @s action_time matches ..10 as @a[distance=..64] at @s run playsound minecraft:entity.fox.bite hostile @s ~ ~ ~ 0.7 0
execute if score @s action_time matches ..10 as @a[distance=..64] at @s run playsound minecraft:entity.panda.bite hostile @s ~ ~ ~ 0.7 0

execute if score @s action_time matches ..15 run function anemoland_contents:sys/entity/mob/bagikeros/tick/attack/bite1/0

execute if score @s action_time matches ..10 run data modify storage temp:_ data.rot2vec set value {abs:0.8}
execute if score @s action_way matches 1 if score @s action_time matches ..10 rotated ~-90 0 positioned ^ ^ ^3 run function anemoland:sys/entity/common/rot2vec/0
execute if score @s action_way matches 0 if score @s action_time matches ..10 rotated ~90 0 positioned ^ ^ ^3 run function anemoland:sys/entity/common/rot2vec/0
execute if score @s action_time matches ..10 run data modify entity @s Motion set from storage temp:_ data.vec

execute if entity @s[tag=angry] if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s positioned ^ ^ ^4 rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/2
execute if entity @s[tag=angry] if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s positioned ^ ^ ^4 rotated ~120 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/2
execute if entity @s[tag=angry] if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s positioned ^ ^ ^4 rotated ~-60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/2
execute if entity @s[tag=angry] if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s positioned ^ ^ ^4 rotated ~-120 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/2

execute if score @s action_time matches 90.. run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/bite_side/end
execute if entity @s[tag=angry] if score @s action_time matches 70.. run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/bite_side/end
