function anemoland:sys/entity/common/target_direction/mob/is_frontside
execute if score #target_is_frontside temp matches 1 run function anemoland_contents:sys/entity/mob/garapas/choose_action/any/near/front
execute unless score #target_is_frontside temp matches 1 run function anemoland_contents:sys/entity/mob/garapas/choose_action/any/near/back
