function anemoland:sys/player/menu/common/click

scoreboard players set #temp temp 1
execute if data storage anemoland:settings data.text_speed store result score #temp temp run data get storage anemoland:settings data.text_speed
scoreboard players add #temp temp 1
execute if score #temp temp matches 3 run data modify storage anemoland:settings data.text_speed set value 0b
execute if score #temp temp matches 1 run data modify storage anemoland:settings data.text_speed set value 1b
execute if score #temp temp matches 2 run data modify storage anemoland:settings data.text_speed set value 2b

function anemoland:sys/player/menu/setting/main/init
