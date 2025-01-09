
tp @s ~ ~ ~ ~ ~

data modify storage temp:_ data.rot2vec set value {abs:0.8}
execute rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
data modify entity @s Motion set from storage temp:_ data.vec

execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_frontside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_frontside

execute if score @s action_time matches ..189 unless score #target_is_frontside temp matches 1 run scoreboard players set @s action_time 190

function anemoland_contents:sys/entity/mob/martellos/tick/action/dash/attack

execute if score @s action_time matches 200.. run function anemoland_contents:sys/entity/mob/martellos/tick/action/dash/2_cooltime/start
