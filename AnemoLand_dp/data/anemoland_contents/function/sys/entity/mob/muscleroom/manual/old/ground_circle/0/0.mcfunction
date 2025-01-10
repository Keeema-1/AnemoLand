
execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside

execute if score @s action_time matches ..20 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-8 ~
execute if score @s action_time matches ..20 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~8 ~
execute if score @s action_time matches 21.. if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-4 ~
execute if score @s action_time matches 21.. unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~4 ~

execute if score @s action_time matches 30..40 positioned ^ ^ ^2 run particle block{block_state:{Name:"dirt"}} ~ ~ ~ 0.5 0 0.5 1 3

# execute if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
# execute unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_circle/0/end
execute if entity @s[tag=angry] if score @s action_time matches 30.. run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_circle/0/end