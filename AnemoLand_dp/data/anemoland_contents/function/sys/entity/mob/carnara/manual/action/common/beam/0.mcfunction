
scoreboard players operation #damage.src.attack.ice.base temp = @s attack.base

scoreboard players operation #entity_id temp = @s entity_id
execute as @e[type=#anemoland:mob_core,tag=hitbox.head,tag=carnara,distance=..32] if score @s entity_id = #entity_id temp at @s run function anemoland_contents:sys/entity/mob/carnara/manual/action/common/beam/00
