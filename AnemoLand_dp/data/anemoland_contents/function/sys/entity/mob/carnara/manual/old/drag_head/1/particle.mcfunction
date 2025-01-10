
scoreboard players operation #entity_id temp = @s entity_id
execute as @e[type=#anemoland:mob_core,tag=hitbox,tag=carnara,distance=..32] if score @s entity_id = #entity_id temp at @s run function anemoland_contents:sys/entity/mob/carnara/manual/action/drag_head/1/particle2
