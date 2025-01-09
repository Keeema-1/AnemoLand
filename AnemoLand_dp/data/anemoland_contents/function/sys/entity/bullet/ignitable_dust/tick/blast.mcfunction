
function anemoland_contents:sys/entity/bullet/ignitable_dust/attack/0

function anemoland_contents:sys/entity/bullet/ignitable_dust/tick/disappear

particle flame ~ ~ ~ 0 0 0 0.1 20
particle smoke ~ ~ ~ 0 0 0 1 10
particle explosion ~ ~ ~ 1 1 1 1 5

execute as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 1

execute as @e[type=armor_stand,tag=bullet.ignitable_dust,tag=!ignited,distance=..8] run function anemoland_contents:sys/entity/bullet/ignitable_dust/fire
