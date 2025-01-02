
function anemoland:sys/player/item/fishing/end_as_bobber

particle smoke ~ ~3 ~ 0.3 0.3 0.3 0 10

execute as @p[tag=player_check] at @s run playsound minecraft:item.shield.break master @s ~ ~ ~ 1 1.5
execute as @p[tag=player_check] at @s run playsound minecraft:entity.sheep.shear master @s ~ ~ ~ 1 1
