
execute if score @s action_time matches 5.. run effect clear @s levitation

execute if score @s action_time matches ..10 run particle firework ~ ~ ~ 0 0 0 0 1

execute if score @s action_time matches 200.. run function anemoland:sys/player/item/weapon/weapon_skill/firework_helmet_breaker/action/end
execute if score @s action_time matches 6.. if predicate anemoland:is_on_ground run function anemoland:sys/player/item/weapon/weapon_skill/firework_helmet_breaker/action/end
