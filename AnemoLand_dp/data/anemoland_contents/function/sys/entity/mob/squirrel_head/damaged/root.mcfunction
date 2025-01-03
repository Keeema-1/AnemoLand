function anemoland:sys/entity/common/damage/dst/get_status
execute unless score #attack_skill_flag temp matches 1.. if score #health temp matches -9.. run return 1
execute at @s anchored eyes facing entity @p eyes rotated ~ 0 positioned ^ ^ ^0.5 run function anemoland_contents:sys/entity/mob/squirrel_head/damaged/common
