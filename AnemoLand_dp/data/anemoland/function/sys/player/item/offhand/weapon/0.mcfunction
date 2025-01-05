
data modify storage temp:_ data.weapon_skills set from storage temp:_ data.player_data.Inventory[{Slot:-106b}].components."minecraft:custom_data".status.weapon_skills

function anemoland:sys/player/common/change_skill_mode/0

execute if data storage temp:_ data.player_data.SelectedItem.count run return run function anemoland:sys/player/item/offhand/drop/0

item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air