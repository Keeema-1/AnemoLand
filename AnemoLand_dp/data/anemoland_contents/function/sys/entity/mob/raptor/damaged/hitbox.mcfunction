function anemoland:sys/entity/common/damage/dst/get_status
scoreboard players operation #entity_id temp = @s entity_id
execute at @s anchored eyes facing entity @p eyes rotated ~ 0 positioned ^ ^ ^0.5 as @e[type=#anemoland:mob_core,tag=mob_root,distance=..32] if score @s entity_id = #entity_id temp run function anemoland_contents:sys/entity/mob/raptor/damaged/root_from_hitbox
