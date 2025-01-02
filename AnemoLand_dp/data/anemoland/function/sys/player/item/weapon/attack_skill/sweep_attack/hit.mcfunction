scoreboard players reset @s action0
scoreboard players reset @s action1
scoreboard players reset @s action_time

function anemoland:sys/entity/display/particle/sweep_attack/summon/large

playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1
playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1

function anemoland:sys/player/common/damage/get_src_status
execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.skill_data.mul
# tellraw @a [{"text":"ATK BASE:"},{"score":{"name": "#damage.src.attack.base","objective": "temp"}},{"text":" / WEAPON:"},{"score":{"name": "#damage.src.attack.weapon","objective": "temp"}},{"text":" / MUL:"},{"score":{"name": "#damage.src.attack.mul","objective": "temp"}}]

# execute rotated ~-60 0 positioned ^ ^ ^3 positioned ~ ~ ~ run particle angry_villager ~ ~ ~ 0 0 0 1 1
# execute rotated ~-30 0 positioned ^ ^ ^2.5 positioned ~ ~ ~ run particle angry_villager ~ ~ ~ 0 0 0 1 1
# execute rotated ~ 0 positioned ^ ^ ^2 positioned ~ ~ ~ run particle angry_villager ~ ~ ~ 0 0 0 1 1
# execute rotated ~30 0 positioned ^ ^ ^2.5 positioned ~ ~ ~ run particle angry_villager ~ ~ ~ 0 0 0 1 1
# execute rotated ~60 0 positioned ^ ^ ^3 positioned ~ ~ ~ run particle angry_villager ~ ~ ~ 0 0 0 1 1

execute rotated ~ 0 positioned ^ ^ ^2 positioned ~-3 ~-3 ~-3 as @e[type=#anemoland:mob_core,tag=attack_victim,tag=enemy,limit=1,dx=5,dy=5,dz=5] run function anemoland:sys/entity/branch/damaged_by_player

execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.skill_data.mul 0.2

execute rotated ~-60 0 positioned ^ ^ ^3 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland:sys/entity/branch/damaged_by_player
execute rotated ~-30 0 positioned ^ ^ ^2.5 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland:sys/entity/branch/damaged_by_player
execute rotated ~30 0 positioned ^ ^ ^2.5 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland:sys/entity/branch/damaged_by_player
execute rotated ~60 0 positioned ^ ^ ^3 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland:sys/entity/branch/damaged_by_player

function anemoland:sys/player/item/weapon/attack_skill/common/consume_gauge
