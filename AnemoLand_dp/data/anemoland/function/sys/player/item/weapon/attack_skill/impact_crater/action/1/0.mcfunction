
execute if score @s action_time matches 5.. run effect clear @s levitation

execute if score @s action_time matches 200.. run function anemoland:sys/player/item/weapon/attack_skill/impact_crater/action/end
execute if score @s action_time matches 6.. if predicate anemoland:is_on_ground run function anemoland:sys/player/item/weapon/attack_skill/impact_crater/action/end
