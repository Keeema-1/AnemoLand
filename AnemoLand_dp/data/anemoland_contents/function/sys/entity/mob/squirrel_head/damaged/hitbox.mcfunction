function anemoland:sys/entity/common/damage/dst/get_status
execute unless score #weapon_skill_flag temp matches 1.. if score #health temp matches -9.. run return 1
scoreboard players operation #entity_id temp = @s entity_id
execute at @s anchored eyes facing entity @p eyes rotated ~ 0 positioned ^ ^ ^0.5 as @e[type=#anemoland:mob_core,tag=mob_root,distance=..32] if score @s entity_id = #entity_id temp run function anemoland_contents:sys/entity/mob/squirrel_head/damaged/root_from_hitbox
