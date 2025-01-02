scoreboard players reset @s action0
scoreboard players reset @s action1
scoreboard players reset @s action_time

# function anemoland:sys/entity/display/particle/sweep_attack/summon/large

execute at @s anchored eyes positioned ^ ^ ^2 run particle crit ~ ~ ~ 0.5 0.5 0.5 1 10

playsound entity.player.attack.crit player @a ~ ~ ~ 1 1
playsound entity.player.attack.crit player @a ~ ~ ~ 1 1

function anemoland:sys/player/common/damage/get_src_status
execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.skill_data.mul
execute if score @s sprint_time matches 1.. store result score #damage.src.attack.mul temp run data get storage temp:_ data.skill_data.mul 1.25

execute rotated ~ 0 positioned ^ ^ ^2 positioned ~-3 ~-3 ~-3 as @e[type=#anemoland:mob_core,tag=attack_victim,tag=enemy,dx=5,dy=5,dz=5,limit=1] run function anemoland:sys/entity/branch/damaged_by_player

function anemoland:sys/player/item/weapon/attack_skill/common/consume_gauge
