execute if entity @s[tag=enemy] run scoreboard players operation #drop_bonus temp = @s drop_bonus
execute if entity @s[tag=enemy] run scoreboard players operation #level temp = @s level
execute if entity @s[tag=enemy,tag=!arena] run function anemoland_contents:sys/entity/mob/walking_mushroom/damaged/die/drop
function anemoland_contents:sys/entity/mob/walking_mushroom/animation/die
function anemoland_contents:sys/entity/mob/walking_mushroom/damaged/die/unlock
execute if entity @s[tag=variant.default] run function anemoland_contents:sys/entity/mob/walking_mushroom/variant/default
execute if entity @s[tag=variant.blue] run function anemoland_contents:sys/entity/mob/walking_mushroom/variant/blue
execute if entity @s[tag=variant.brown] run function anemoland_contents:sys/entity/mob/walking_mushroom/variant/brown
execute if entity @s[tag=variant.gold] run function anemoland_contents:sys/entity/mob/walking_mushroom/variant/gold
function anemoland_contents:sys/entity/mob/walking_mushroom/manual/die
function anemoland:sys/entity/common/die/0
