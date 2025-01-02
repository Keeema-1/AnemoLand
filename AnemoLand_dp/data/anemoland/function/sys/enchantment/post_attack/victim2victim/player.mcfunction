data modify storage temp:_ data.player_data.SelectedItem set from entity @s SelectedItem
data modify storage temp:_ data.player_data.Inventory set from entity @s Inventory
function anemoland:sys/player/common/damage/src/get_status

data modify storage temp:_ data.weapon_data set from storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data"
execute if data storage temp:_ data.weapon_data{item_type:"weapon"} run function anemoland:sys/enchantment/post_attack/victim2victim/particle/0

execute unless score @s skill_mode matches 1.. run return 1

execute unless data storage temp:_ data.weapon_data{item_type:"weapon"} run return 1

scoreboard players set #attack_skill_flag temp 1
execute at @s run function anemoland:sys/player/item/weapon/attack_skill/hit

execute unless score @s skill_gauge >= #gauge_consume temp run scoreboard players reset @s skill_mode
