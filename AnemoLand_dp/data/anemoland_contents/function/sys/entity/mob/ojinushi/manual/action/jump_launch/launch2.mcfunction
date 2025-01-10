
# 発射元の攻撃力を取得
    scoreboard players operation #attack.base temp = @s attack.base
    scoreboard players set #temp temp 6
    scoreboard players operation #attack.base temp *= #temp temp
    scoreboard players set #temp temp 10
    scoreboard players operation #attack.base temp /= #temp temp

scoreboard players set @s action_way 0
execute positioned ~ ~-4 ~ if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..8,limit=1] run scoreboard players set @s action_way 1
execute positioned ~ ~-4 ~ if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..12,limit=1] run scoreboard players set @s action_way 2
execute positioned ~ ~-4 ~ if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..16,limit=1] run scoreboard players set @s action_way 3
execute positioned ~ ~-4 ~ if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..20,limit=1] run scoreboard players set @s action_way 4
execute positioned ~ ~-4 ~ if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] run scoreboard players set @s action_way 5

execute positioned ^ ^3 ^ rotated ~ 50 run function anemoland_contents:sys/entity/bullet/firework/summon/default/0
