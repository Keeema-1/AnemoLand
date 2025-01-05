
# execute rotated ~ 0 positioned ^ ^ ^1 run particle crit ~ 0.5 ~ 1 1 1 0.3 10
# execute rotated ~ 0 positioned ^ ^ ^1 run particle crit ~ 1.5 ~ 1 1 1 0.3 10
# execute rotated ~ 0 positioned ^ ^ ^1 run particle crit ~ 2.5 ~ 1 1 1 0.3 10
# execute rotated ~ 0 positioned ^ ^ ^1 run particle crit ~ 3.5 ~ 1 1 1 0.3 10
# execute rotated ~ 0 positioned ^ ^ ^1 run particle crit ~ 4.5 ~ 1 1 1 0.3 10
execute rotated ~ 0 positioned ^ ^ ^1 run particle firework ~ 0.5 ~ 1 1 1 0.01 5
execute rotated ~ 0 positioned ^ ^ ^1 run particle firework ~ 1.5 ~ 1 1 1 0.01 5
execute rotated ~ 0 positioned ^ ^ ^1 run particle firework ~ 2.5 ~ 1 1 1 0.01 5
execute rotated ~ 0 positioned ^ ^ ^1 run particle firework ~ 3.5 ~ 1 1 1 0.01 5
execute rotated ~ 0 positioned ^ ^ ^1 run particle firework ~ 4.5 ~ 1 1 1 0.01 5
execute rotated ~ 0 positioned ^ ^ ^1 run particle firework ~ 5.5 ~ 1 1 1 0.01 5
execute rotated ~ 0 positioned ^ ^ ^1 run particle minecraft:dust{color:[1.0, 0.0, 0.0], scale:1.0} ~ ~0.5 ~ 0.3 0.3 0.3 1000 10
execute rotated ~ 0 positioned ^ ^ ^1 run particle minecraft:dust{color:[1.0, 1.0, 0.0], scale:1.0} ~ ~1.5 ~ 0.3 0.3 0.3 1000 10
execute rotated ~ 0 positioned ^ ^ ^1 run particle minecraft:dust{color:[1.0, 0.0, 1.0], scale:1.0} ~ ~2.5 ~ 0.3 0.3 0.3 1000 10
execute rotated ~ 0 positioned ^ ^ ^1 run particle minecraft:dust{color:[0.0, 0.0, 1.0], scale:1.0} ~ ~3.5 ~ 0.3 0.3 0.3 1000 10
execute rotated ~ 0 positioned ^ ^ ^1 run particle minecraft:dust{color:[0.0, 1.0, 0.0], scale:1.0} ~ ~4.5 ~ 0.3 0.3 0.3 1000 10
execute rotated ~ 0 positioned ^ ^ ^1 run particle minecraft:dust{color:[0.0, 1.0, 1.0], scale:1.0} ~ ~5.5 ~ 0.3 0.3 0.3 1000 10

playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 2 1

scoreboard players set #weapon_skill_flag temp 1
data modify storage temp:_ data.weapon_data set from storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data"
execute if score @s skill_mode matches 1 run data modify storage temp:_ data.weapon_skill_data set from storage temp:_ data.weapon_data.status.weapon_skills[0]
execute if score @s skill_mode matches 2 run data modify storage temp:_ data.weapon_skill_data set from storage temp:_ data.weapon_data.status.weapon_skills[1]
execute if score @s skill_mode matches 3 run data modify storage temp:_ data.weapon_skill_data set from storage temp:_ data.weapon_data.status.weapon_skills[2]
function anemoland:sys/player/common/damage/src/get_status
execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.weapon_skill_data.mul

data modify storage temp:_ data.elemental_attack set value {fire:{mul:20}}
scoreboard players operation #temp temp = #damage.src.attack.weapon temp
execute store result storage temp:_ data.elemental_attack.fire.base int 1 run scoreboard players operation #temp temp += #damage.src.attack.base temp

execute rotated ~ 0 positioned ^ ^ ^1 positioned ~-1 -0.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland:sys/entity/branch/damaged_by_player
execute rotated ~ 0 positioned ^ ^ ^1 positioned ~-1 0.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland:sys/entity/branch/damaged_by_player
execute rotated ~ 0 positioned ^ ^ ^1 positioned ~-1 1.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland:sys/entity/branch/damaged_by_player
execute rotated ~ 0 positioned ^ ^ ^1 positioned ~-1 2.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland:sys/entity/branch/damaged_by_player
execute rotated ~ 0 positioned ^ ^ ^1 positioned ~-1 3.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland:sys/entity/branch/damaged_by_player
execute rotated ~ 0 positioned ^ ^ ^1 positioned ~-1 4.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland:sys/entity/branch/damaged_by_player

data remove storage temp:_ data.elemental_attack

execute unless score @s skill_gauge >= #gauge_consume temp run scoreboard players reset @s skill_mode

function anemoland:sys/player/item/weapon/weapon_skill/firework_helmet_breaker/action/end
