scoreboard players set @s action0 4
scoreboard players set @s action1 2
scoreboard players reset @s action_time

execute rotated ~ 0 positioned ^ ^ ^2 positioned ~-3 ~-3 ~-3 as @e[type=#anemoland:mob_core,tag=enemy,dx=5,dy=5,dz=5,sort=nearest,limit=1] run particle explosion ~ ~ ~ 0 0 0 1 1

playsound entity.player.attack.crit player @a ~ ~ ~ 2 1
playsound entity.player.attack.crit player @a ~ ~ ~ 2 1

function anemoland:sys/player/common/damage/src/get_status
execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.weapon_skill_data.mul

execute rotated ~ 0 positioned ^ ^ ^2 positioned ~-3 ~-3 ~-3 as @e[type=#anemoland:mob_core,tag=attack_victim,tag=enemy,dx=5,dy=5,dz=5,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_player

function anemoland:sys/player/item/weapon/weapon_skill/common/consume_gauge

return 1
