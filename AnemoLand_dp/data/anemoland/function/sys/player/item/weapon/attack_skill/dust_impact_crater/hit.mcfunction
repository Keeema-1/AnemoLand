execute if score @s action0 matches 4 if score @s action1 matches 2 run return 1
execute if score @s action0 matches 4 if score @s action1 matches 1 if score @s action_time matches 10.. if function anemoland:sys/player/item/weapon/attack_skill/dust_impact_crater/hit1 run return 1
execute if score @s action0 matches 4 if score @s action1 matches 1 unless score @s action_time matches 10.. run return 1
function anemoland:sys/player/item/weapon/attack_skill/dust_impact_crater/hit0
