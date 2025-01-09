
execute if score @s action_time matches 5.. run effect clear @s levitation
execute if predicate anemoland:jumping_too_high run effect clear @s levitation

execute if score @s action_time matches 200.. run function anemoland:sys/player/item/weapon/weapon_skill/jump_attack/action/end
execute if predicate anemoland:is_on_ground run function anemoland:sys/player/item/weapon/weapon_skill/jump_attack/action/end
