execute if entity @s[tag=enemy] run scoreboard players operation #drop_bonus temp = @s drop_bonus
execute if entity @s[tag=enemy] run scoreboard players operation #level temp = @s level
execute if entity @s[tag=enemy,tag=!arena] as @a[gamemode=adventure,distance=..64] run function anemoland_contents:sys/entity/mob/garapapas/damaged/die/drop
function anemoland_contents:sys/entity/mob/garapapas/animation/die
function anemoland_contents:sys/entity/mob/garapapas/damaged/die/unlock
function anemoland_contents:sys/entity/mob/garapapas/variant/default
function anemoland_contents:sys/entity/mob/garapapas/manual/die
function anemoland:sys/entity/common/die/0
