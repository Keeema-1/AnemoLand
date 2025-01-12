tag @s remove angry
scoreboard players operation @s anger.damage = @s max_health
scoreboard players set #temp temp 50
scoreboard players operation @s anger.damage *= #temp temp
scoreboard players set #temp temp 100
scoreboard players operation @s anger.damage /= #temp temp
scoreboard players set @s anger.time 1200
scoreboard players set @s attack.state_mul 100
function anemoland_contents:sys/entity/mob/bagikeros/action/tired/start
