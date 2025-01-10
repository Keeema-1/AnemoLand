
# execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
# execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside

# execute if score @s action_time matches ..10 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-4 ~
# execute if score @s action_time matches ..10 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~4 ~

execute at @s run tp @s ~ ~ ~ ~ ~

# execute if score @s action_time matches ..40 positioned ^ ^ ^1 rotated ~ 0 positioned ^ ^ ^ run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_circle/1/particle3
# execute if score @s action_time matches ..40 positioned ^ ^ ^1 rotated ~ 0 positioned ^ ^ ^ run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_circle/1/particle6
# # execute if score @s action_time matches ..40 positioned ^ ^ ^1 rotated ~ 0 positioned ^ ^ ^ run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_circle/1/particle9
# execute if score @s action_time matches ..40 positioned ^ ^ ^1 rotated ~ 0 positioned ^ ^ ^ run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_circle/1/particle12
# # execute if score @s action_time matches ..40 positioned ^ ^ ^1 rotated ~ 0 positioned ^ ^ ^ run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_circle/1/particle15
# # execute if score @s action_time matches ..40 positioned ^ ^ ^1 rotated ~ 0 positioned ^ ^ ^ run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_circle/1/particle18

execute if score @s action_time matches ..40 as @a[distance=..64] at @s run playsound minecraft:block.basalt.break hostile @s ~ ~ ~ 0.5 0

execute if score @s action_time matches 1 run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_circle/1/summon1
execute if score @s action_time matches 6 run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_circle/1/summon2
execute if score @s action_time matches 11 run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_circle/1/summon3
execute if score @s action_time matches 16 run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_circle/1/summon4

# execute if score @s action_time matches 36 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 0
# execute if score @s action_time matches 41 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 0
# execute if score @s action_time matches 46 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 0
# execute if score @s action_time matches 51 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 0

execute if score @s action_time matches 80 run function anemoland_contents:sys/entity/mob/muscleroom/animation/ground2
execute if entity @s[tag=angry] if score @s action_time matches 10 run function anemoland_contents:sys/entity/mob/muscleroom/animation/ground2

execute if score @s action_time matches 120.. run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_circle/1/end
execute if entity @s[tag=angry] if score @s action_time matches 100.. run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_circle/1/end
execute if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_circle/1/end