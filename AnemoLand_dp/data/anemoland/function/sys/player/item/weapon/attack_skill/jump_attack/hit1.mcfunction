scoreboard players set @s action0 1
scoreboard players set @s action1 2
scoreboard players reset @s action_time

execute at @s anchored eyes positioned ^ ^ ^2 run particle crit ~ ~ ~ 1 1 1 0.3 30

playsound entity.player.attack.crit player @a ~ ~ ~ 2 1
playsound entity.player.attack.crit player @a ~ ~ ~ 2 1

function anemoland:sys/player/common/damage/get_src_status
execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.skill_data.mul

execute rotated ~ 0 positioned ^ ^ ^2 positioned ~-3 ~-3 ~-3 as @e[type=#anemoland:mob_core,tag=attack_victim,tag=enemy,dx=5,dy=5,dz=5,limit=1] run function anemoland:sys/entity/branch/damaged_by_player

function anemoland:sys/player/item/weapon/attack_skill/common/consume_gauge

return 1
