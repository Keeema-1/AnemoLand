scoreboard players set @s action0 2
scoreboard players set @s action1 2
scoreboard players reset @s action_time

execute at @s anchored eyes positioned ^ ^ ^2 run particle crit ~ ~ ~ 1 1 1 0.3 30

function anemoland:sys/entity/display/particle/helmet_breaker/summon/large

# function anemoland:sys/player/common/damage/src/get_status
# execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.weapon_skill_data.mul

# execute rotated ~ 0 positioned ^ ^ ^2 positioned ~-3 ~-3 ~-3 as @e[type=#anemoland:mob_core,tag=enemy,dx=5,dy=5,dz=5,sort=nearest,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_player

function anemoland:sys/player/item/weapon/weapon_skill/common/consume_gauge

# scoreboard players set #gauge_consume temp 0

return 1
