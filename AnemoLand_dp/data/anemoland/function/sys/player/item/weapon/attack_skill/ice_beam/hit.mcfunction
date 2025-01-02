scoreboard players reset @s action0
scoreboard players reset @s action1
scoreboard players reset @s action_time

execute positioned ~ ~1.5 ~ positioned ^ ^ ^-1 run function animated_java:ice_beam/summon/default
execute positioned ^ ^ ^4 run particle wax_off ~ ~ ~ 1 1 1 0 1
execute positioned ^ ^ ^4 run particle dust{color:[1.0, 1.0, 1.0], scale:1.0} ~ ~ ~ 1 1 1 0 1
execute positioned ^ ^ ^8 run particle wax_off ~ ~ ~ 1 1 1 0 1
execute positioned ^ ^ ^8 run particle dust{color:[1.0, 1.0, 1.0], scale:1.0} ~ ~ ~ 1 1 1 0 1
execute positioned ^ ^ ^12 run particle wax_off ~ ~ ~ 1 1 1 0 1
execute positioned ^ ^ ^12 run particle dust{color:[1.0, 1.0, 1.0], scale:1.0} ~ ~ ~ 1 1 1 0 1
playsound minecraft:block.glass.break player @a ~ ~ ~ 1 1

playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1
playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1

function anemoland:sys/player/common/damage/get_src_status
execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.skill_data.mul

execute rotated ~ ~ positioned ^ ^ ^2 positioned ~-3 ~-3 ~-3 as @e[type=#anemoland:mob_core,tag=attack_victim,tag=enemy,limit=1,dx=5,dy=5,dz=5] run function anemoland:sys/entity/branch/damaged_by_player

execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.skill_data.mul 0.5
data modify storage temp:_ data.elemental_attack set value {ice:{mul:10}}
scoreboard players operation #temp temp = #damage.src.attack.weapon temp
execute store result storage temp:_ data.elemental_attack.ice.base int 0.5 run scoreboard players operation #temp temp += #damage.src.attack.base temp

execute if score @s ice_veil_time matches 200.. store result storage temp:_ data.elemental_attack.ice.base int 0.6 run scoreboard players get #temp temp

execute rotated ~ ~ positioned ^ ^ ^2 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland:sys/entity/branch/damaged_by_player
execute rotated ~ ~ positioned ^ ^ ^4 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland:sys/entity/branch/damaged_by_player
execute rotated ~ ~ positioned ^ ^ ^6 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland:sys/entity/branch/damaged_by_player
execute rotated ~ ~ positioned ^ ^ ^8 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland:sys/entity/branch/damaged_by_player
execute rotated ~ ~ positioned ^ ^ ^10 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland:sys/entity/branch/damaged_by_player
execute rotated ~ ~ positioned ^ ^ ^12 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland:sys/entity/branch/damaged_by_player
execute rotated ~ ~ positioned ^ ^ ^14 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland:sys/entity/branch/damaged_by_player
execute rotated ~ ~ positioned ^ ^ ^16 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland:sys/entity/branch/damaged_by_player

function anemoland:sys/player/item/weapon/attack_skill/common/consume_gauge
