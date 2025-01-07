execute if entity @s[tag=enemy] run scoreboard players operation #drop_bonus temp = @s drop_bonus
execute if entity @s[tag=enemy] run scoreboard players operation #level temp = @s level
execute if entity @s[tag=enemy,tag=!arena] as @a[gamemode=adventure,distance=..64] run function anemoland_contents:sys/entity/mob/king_boar/damaged/die/drop
function anemoland_contents:sys/entity/mob/king_boar/animation/die
function anemoland_contents:sys/entity/mob/king_boar/damaged/die/unlock
function anemoland_contents:sys/entity/mob/king_boar/variant/default
function anemoland_contents:sys/entity/mob/king_boar/manual/die
function anemoland:sys/entity/common/die/0
