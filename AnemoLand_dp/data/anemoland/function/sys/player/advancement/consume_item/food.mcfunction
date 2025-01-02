
data modify storage temp:_ data.player_data.Inventory set from entity @s Inventory
function anemoland:sys/player/common/skill_levels/0
execute if data storage temp:_ data.skill_levels{recovery_up:1} run effect give @s regeneration 1 1 true
execute if data storage temp:_ data.skill_levels{recovery_up:2} run effect give @s regeneration 2 1 true
execute if data storage temp:_ data.skill_levels{recovery_up:3} run effect give @s regeneration 3 1 true
execute if data storage temp:_ data.skill_levels{recovery_up:4} run effect give @s regeneration 4 1 true
execute if data storage temp:_ data.skill_levels{recovery_up:5} run effect give @s regeneration 5 1 true

advancement revoke @s only anemoland:consume_item/food
