#> anemoland:sys/player/common/adjust_food_level
#
# 満腹度の調整
#
# @within
#    function anemoland:sys/player/area/entrance/0

execute store result score #foodlevel temp run data get entity @s foodLevel -1
execute store result storage temp:_ data.food_level.value int 1 run scoreboard players add #foodlevel temp 19
execute if score #foodlevel temp matches 0.. run function anemoland:sys/player/common/adjust_food_level/00 with storage temp:_ data.food_level