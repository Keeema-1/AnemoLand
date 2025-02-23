execute on passengers if entity @s[tag=aj.global.root] run function animated_java:ojinushi/as_own_locator_entities {command:"tag @s add dead"}
execute if entity @s[tag=enemy] run scoreboard players operation #drop_bonus temp = @s drop_bonus
execute if entity @s[tag=enemy] run scoreboard players operation #level temp = @s level
execute if entity @s[tag=enemy,tag=!arena] as @a[gamemode=adventure,distance=..64] run function anemoland_contents:sys/entity/mob/ojinushi/damaged/die/drop
function anemoland_contents:sys/entity/mob/ojinushi/animation/die
function anemoland_contents:sys/entity/mob/ojinushi/damaged/die/unlock
function anemoland_contents:sys/entity/mob/ojinushi/variant/default
function anemoland_contents:sys/entity/mob/ojinushi/manual/die
function anemoland:sys/entity/common/die/0
