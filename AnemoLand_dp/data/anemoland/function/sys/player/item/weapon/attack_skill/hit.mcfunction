# todo here
execute if score @s skill_mode matches 1 run data modify storage temp:_ data.skill_data set from storage temp:_ data.weapon_data.status.attack_skills[0]
execute if score @s skill_mode matches 2 run data modify storage temp:_ data.skill_data set from storage temp:_ data.weapon_data.status.attack_skills[1]
execute if score @s skill_mode matches 3 run data modify storage temp:_ data.skill_data set from storage temp:_ data.weapon_data.status.attack_skills[2]
execute if data storage temp:_ data.skill_data{id:"sweep_attack"} run function anemoland:sys/player/item/weapon/attack_skill/sweep_attack/hit
execute if data storage temp:_ data.skill_data{id:"strong_attack"} run function anemoland:sys/player/item/weapon/attack_skill/strong_attack/hit
execute if data storage temp:_ data.skill_data{id:"jump_attack"} run function anemoland:sys/player/item/weapon/attack_skill/jump_attack/hit
execute if data storage temp:_ data.skill_data{id:"firework_helmet_breaker"} run function anemoland:sys/player/item/weapon/attack_skill/firework_helmet_breaker/hit
execute if data storage temp:_ data.skill_data{id:"impact_crater"} run function anemoland:sys/player/item/weapon/attack_skill/impact_crater/hit
execute if data storage temp:_ data.skill_data{id:"mushroom_attack"} run function anemoland:sys/player/item/weapon/attack_skill/mushroom_attack/hit
execute if data storage temp:_ data.skill_data{id:"strong_dash_attack"} run function anemoland:sys/player/item/weapon/attack_skill/strong_dash_attack/hit
execute if data storage temp:_ data.skill_data{id:"dust_impact_crater"} run function anemoland:sys/player/item/weapon/attack_skill/dust_impact_crater/hit
execute if data storage temp:_ data.skill_data{id:"ice_beam"} run function anemoland:sys/player/item/weapon/attack_skill/ice_beam/hit
