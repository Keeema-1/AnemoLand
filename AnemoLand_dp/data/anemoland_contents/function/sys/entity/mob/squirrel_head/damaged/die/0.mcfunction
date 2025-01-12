execute on passengers if entity @s[tag=aj.rig_root] run function animated_java:squirrel_head/as_own_locator_entities {command:"tag @s add dead"}
execute if entity @s[tag=enemy] run scoreboard players operation #drop_bonus temp = @s drop_bonus
execute if entity @s[tag=enemy] run scoreboard players operation #level temp = @s level
execute if entity @s[tag=enemy,tag=!arena] as @a[gamemode=adventure,distance=..64] run function anemoland_contents:sys/entity/mob/squirrel_head/damaged/die/drop
function anemoland_contents:sys/entity/mob/squirrel_head/animation/die
function anemoland_contents:sys/entity/mob/squirrel_head/damaged/die/unlock
function anemoland_contents:sys/entity/mob/squirrel_head/variant/default
function anemoland_contents:sys/entity/mob/squirrel_head/manual/die
function anemoland:sys/entity/common/die/0
