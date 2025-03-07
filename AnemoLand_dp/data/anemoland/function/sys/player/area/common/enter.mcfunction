#> anemoland:sys/player/area/common/enter
#
# 移動時に実行される
#
# @within
#    function anemoland:sys/player/area/common/*/enter

effect give @s instant_health 1 20
function anemoland:sys/player/common/adjust_food_level/0
title @a actionbar ""
xp set @s 0 levels
xp set @s 0 points
execute unless score @s music_id matches -1 run function anemoland:sys/player/music/stop
scoreboard players reset @s pet1.timer
scoreboard players reset @s pet2.timer
scoreboard players reset @s pet3.timer
scoreboard players reset @s npc1.timer
scoreboard players reset @s pet_boss1.timer
scoreboard players reset @s ice_veil_time
scoreboard players set @s skill_gauge 0
scoreboard players set @s skill_mode 0
tag @s remove fishing
tag @s remove fishing.big

function anemoland:sys/player/common/player_storage/read
data remove storage temp:_ data.player_storage.pet.boss1
function anemoland:sys/player/common/player_storage/write

tag @s add skip_inventory_changed
function anemoland:sys/player/menu/root/reset_from_other_func
tag @s remove skip_inventory_changed

scoreboard players set @s sneak_time -20