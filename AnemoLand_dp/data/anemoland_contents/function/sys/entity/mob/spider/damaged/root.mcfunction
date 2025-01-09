function anemoland:sys/entity/common/target/change/preset/mob_default/0
function anemoland:sys/entity/common/damage/dst/get_status
execute at @s anchored eyes facing entity @p eyes rotated ~ 0 positioned ^ ^ ^0.5 run function anemoland_contents:sys/entity/mob/spider/damaged/common
