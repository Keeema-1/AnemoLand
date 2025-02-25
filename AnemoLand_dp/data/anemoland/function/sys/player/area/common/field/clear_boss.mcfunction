title @a[distance=..64] times 10 80 10
title @a[distance=..64] subtitle {"text": "CLEAR!","color": "yellow"}
title @a[distance=..64] title ""
execute as @a[distance=..64] at @s run function anemoland_contents:sys/player/music/clear/set

scoreboard players operation #sec temp = @p battle_timer
scoreboard players set #temp temp 20
scoreboard players operation #sec temp /= #temp temp
scoreboard players operation #sec_total temp = #sec temp
scoreboard players operation #min temp = #sec temp
scoreboard players set #temp temp 60
scoreboard players operation #min temp /= #temp temp
scoreboard players operation #sec temp %= #temp temp

execute if score #min temp matches 1.. run tellraw @a[distance=..64] [{"text":"タイム: ","color":"yellow"},{"score":{"name":"#min","objective":"temp"}},{"text":"分 "},{"score":{"name":"#sec","objective":"temp"}},{"text":"秒"}]
execute unless score #min temp matches 1.. run tellraw @a[distance=..64] [{"text":"タイム: ","color":"yellow"},{"score":{"name":"#sec","objective":"temp"}},{"text":"秒"}]

# 闘技場
    execute if score @s area0 matches 100 if score @s area1 matches 1 if score @s area2 matches 9901 run function anemoland:sys/player/area/common/field/arena/clear

# クリア後のNPCチャットなど用
    execute as @e[type=#anemoland:mob_core,tag=npc,distance=..64] run tag @s add clear
    execute as @e[type=#anemoland:mob_core,tag=npc,distance=..64] run tag @s add clear.boss
