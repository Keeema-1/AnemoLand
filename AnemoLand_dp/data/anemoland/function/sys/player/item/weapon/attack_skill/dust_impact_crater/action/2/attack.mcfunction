
scoreboard players set #attack_skill_flag temp 1
data modify storage temp:_ data.weapon_data set from storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data"
data modify storage temp:_ data.skill_data set value {gauge_consume:100,id:"impact_crater","mul":80}
execute if score @s skill_mode matches 1 run data modify storage temp:_ data.skill_data set from storage temp:_ data.weapon_data.status.attack_skills[0]
execute if score @s skill_mode matches 2 run data modify storage temp:_ data.skill_data set from storage temp:_ data.weapon_data.status.attack_skills[1]
execute if score @s skill_mode matches 3 run data modify storage temp:_ data.skill_data set from storage temp:_ data.weapon_data.status.attack_skills[2]
function anemoland:sys/player/common/damage/get_src_status
execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.skill_data.mul 0.1251

# tellraw @a {"score":{"name":"#damage.src.attack.mul","objective":"temp"}}
# tellraw @a {"storage":"temp:_","nbt":"data.skill_data"}

# execute rotated ~ 0 positioned ^ ^ ^ run particle explosion ~ 0.5 ~ 0 0 0 1 1
# execute rotated ~ 0 positioned ^ ^ ^2.5 run particle explosion ~ 0.5 ~ 0 0 0 1 1
# execute rotated ~60 0 positioned ^ ^ ^2.5 run particle explosion ~ 0.5 ~ 0 0 0 1 1
# execute rotated ~120 0 positioned ^ ^ ^2.5 run particle explosion ~ 0.5 ~ 0 0 0 1 1
# execute rotated ~180 0 positioned ^ ^ ^2.5 run particle explosion ~ 0.5 ~ 0 0 0 1 1
# execute rotated ~240 0 positioned ^ ^ ^2.5 run particle explosion ~ 0.5 ~ 0 0 0 1 1
# execute rotated ~300 0 positioned ^ ^ ^2.5 run particle explosion ~ 0.5 ~ 0 0 0 1 1

# execute rotated ~ 0 positioned ^ ^ ^ positioned ~-1 -0.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland:sys/entity/branch/damaged_by_player
# execute rotated ~ 0 positioned ^ ^ ^2.5 positioned ~-1 -0.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland:sys/entity/branch/damaged_by_player
# execute rotated ~60 0 positioned ^ ^ ^2.5 positioned ~-1 -0.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland:sys/entity/branch/damaged_by_player
# execute rotated ~120 0 positioned ^ ^ ^2.5 positioned ~-1 -0.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland:sys/entity/branch/damaged_by_player
# execute rotated ~180 0 positioned ^ ^ ^2.5 positioned ~-1 -0.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland:sys/entity/branch/damaged_by_player
# execute rotated ~240 0 positioned ^ ^ ^2.5 positioned ~-1 -0.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland:sys/entity/branch/damaged_by_player
# execute rotated ~300 0 positioned ^ ^ ^2.5 positioned ~-1 -0.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland:sys/entity/branch/damaged_by_player

scoreboard players operation #attack.base temp = @s attack.base_total
scoreboard players set #temp temp 2
scoreboard players operation #attack.base temp *= #temp temp

execute positioned ~ 1 ~ rotated ~ 0 positioned ^ ^ ^ run function anemoland:sys/entity/bullet/auto_ignite_dust/summon_fast
execute positioned ~ 1 ~ rotated ~45 0 positioned ^ ^ ^2 run function anemoland:sys/entity/bullet/auto_ignite_dust/summon_fast
execute positioned ~ 1 ~ rotated ~-45 0 positioned ^ ^ ^2 run function anemoland:sys/entity/bullet/auto_ignite_dust/summon_fast
execute positioned ~ 1 ~ rotated ~135 0 positioned ^ ^ ^2 run function anemoland:sys/entity/bullet/auto_ignite_dust/summon_fast
execute positioned ~ 1 ~ rotated ~-135 0 positioned ^ ^ ^2 run function anemoland:sys/entity/bullet/auto_ignite_dust/summon_fast

execute store result score #gauge_consume temp run data get storage temp:_ data.skill_data.gauge_consume

execute unless score @s skill_gauge >= #gauge_consume temp run scoreboard players reset @s skill_mode

function anemoland:sys/player/item/weapon/attack_skill/dust_impact_crater/action/end
