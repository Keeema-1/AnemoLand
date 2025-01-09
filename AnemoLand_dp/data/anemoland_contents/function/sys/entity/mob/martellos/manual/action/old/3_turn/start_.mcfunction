
execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside

execute if score #target_is_leftside temp matches 1 run function rpg:sys/entity/mob/martellos/animation/turn_left
execute unless score #target_is_leftside temp matches 1 run function rpg:sys/entity/mob/martellos/animation/turn_right
