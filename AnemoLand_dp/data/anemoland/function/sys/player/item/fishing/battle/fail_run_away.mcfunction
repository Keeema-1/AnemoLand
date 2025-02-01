
function anemoland:sys/player/item/fishing/end_as_bobber

particle smoke ~ ~3 ~ 0.3 0.3 0.3 0 10

execute as @p[tag=player_check] at @s run playsound minecraft:entity.fishing_bobber.splash master @a ~ ~ ~ 0.5 1
execute as @p[tag=player_check] at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 0.5 1
