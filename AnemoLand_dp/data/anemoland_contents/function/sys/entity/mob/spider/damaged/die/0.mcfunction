execute if entity @s[tag=enemy] run scoreboard players operation #drop_bonus temp = @s drop_bonus
execute if entity @s[tag=enemy] run scoreboard players operation #level temp = @s level
execute if entity @s[tag=enemy,tag=!arena] run function anemoland_contents:sys/entity/mob/spider/damaged/die/drop
function anemoland_contents:sys/entity/mob/spider/animation/die
function anemoland_contents:sys/entity/mob/spider/damaged/die/unlock
function anemoland_contents:sys/entity/mob/spider/variant/default
function anemoland_contents:sys/entity/mob/spider/manual/die
function anemoland:sys/entity/common/die/0
