
scoreboard players operation #entity_id temp = @s entity_id
execute as @e[type=#anemoland:mob_core,tag=hitbox.head,tag=carnara,distance=..32] if score @s entity_id = #entity_id temp at @s run particle dust{color:[1.0, 1.0, 1.0], scale:1.0} ~ ~ ~ 1 1 1 0 1

# particle wax_off ~ ~ ~ 1 1 1 0 1
# particle dust{color:[1.0, 1.0, 1.0], scale:1.0} ~ ~ ~ 1 1 1 0 1