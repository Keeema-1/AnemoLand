#> anemoland_contents:sys/player/weapon_skill/hit/branch
#
# 武器技の分岐
#
# @within function anemoland:sys/player/item/weapon/weapon_skill/hit

execute if data storage temp:_ data.weapon_skill_data{id:"sweep_attack"} run return run function anemoland_contents:sys/player/weapon_skill/hit/sweep_attack/0
execute if data storage temp:_ data.weapon_skill_data{id:"sweep_attack_2"} run return run function anemoland_contents:sys/player/weapon_skill/hit/sweep_attack/0
execute if data storage temp:_ data.weapon_skill_data{id:"strong_attack"} run return run function anemoland_contents:sys/player/weapon_skill/hit/strong_attack/0
execute if data storage temp:_ data.weapon_skill_data{id:"strong_attack_2"} run return run function anemoland_contents:sys/player/weapon_skill/hit/strong_attack/0
execute if data storage temp:_ data.weapon_skill_data{id:"strong_dash_attack"} run return run function anemoland_contents:sys/player/weapon_skill/hit/strong_dash_attack/0
execute if data storage temp:_ data.weapon_skill_data{id:"impact_crater"} run return run function anemoland_contents:sys/player/weapon_skill/hit/impact_crater/0
execute if data storage temp:_ data.weapon_skill_data{id:"jump_attack"} run return run function anemoland_contents:sys/player/weapon_skill/hit/jump_attack/0
execute if data storage temp:_ data.weapon_skill_data{id:"firework_helmet_breaker"} run return run function anemoland_contents:sys/player/weapon_skill/hit/firework_helmet_breaker/0
execute if data storage temp:_ data.weapon_skill_data{id:"mushroom_attack"} run return run function anemoland_contents:sys/player/weapon_skill/hit/mushroom_attack/0
execute if data storage temp:_ data.weapon_skill_data{id:"dust_impact_crater"} run return run function anemoland_contents:sys/player/weapon_skill/hit/dust_impact_crater/0
execute if data storage temp:_ data.weapon_skill_data{id:"ice_beam"} run return run function anemoland_contents:sys/player/weapon_skill/hit/ice_beam/0
