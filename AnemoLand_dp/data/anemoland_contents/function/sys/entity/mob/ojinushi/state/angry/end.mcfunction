tag @s remove angry
scoreboard players operation @s anger.damage = @s max_health
scoreboard players set #temp temp 50
scoreboard players operation @s anger.damage *= #temp temp
scoreboard players set #temp temp 100
scoreboard players operation @s anger.damage /= #temp temp
scoreboard players set @s anger.time 1200
function anemoland_contents:sys/entity/mob/ojinushi/action/tired/start
