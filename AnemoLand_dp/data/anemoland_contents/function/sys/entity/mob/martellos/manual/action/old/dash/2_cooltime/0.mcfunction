tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches ..10 run data modify storage temp:_ data.rot2vec set value {abs:0.4}
execute if score @s action_time matches 11..20 run data modify storage temp:_ data.rot2vec set value {abs:0.2}
execute if score @s action_time matches 21..40 run data modify storage temp:_ data.rot2vec set value {abs:0.1}
execute rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
execute if score @s action_time matches ..40 run data modify entity @s Motion set from storage temp:_ data.vec

execute if score @s action_time matches ..40 run particle block{block_state:{Name:"dirt"}} ^ ^ ^2 0.5 0 0.5 1 3

# execute if score @s action_time matches 11..40 as @a[distance=..64] at @s run playsound block.sand.break hostile @s ~ ~ ~ 1 1
execute if score @s action_time matches 11..40 as @a[distance=..64] at @s run playsound minecraft:block.rooted_dirt.hit hostile @s ~ ~ ~ 0.4 0

execute if score @s action_time matches 80.. run function anemoland_contents:sys/entity/mob/martellos/tick/action/dash/end
