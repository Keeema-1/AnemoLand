advancement grant @a only anemoland_contents:armor_catalog/leather
execute if data storage anemoland:progress data.armor.leather{unlocked:1b} run return 1
data modify storage anemoland:progress data.armor.leather.unlocked set value 1b
tellraw @a {"translate":"anemoland.unlock.new_equipment","color":"green"}
tellraw @a {"text":"  革の帽子","color":"green"}
tellraw @a {"text":"  革の上着","color":"green"}
tellraw @a {"text":"  革のズボン","color":"green"}
tellraw @a {"text":"  革のブーツ","color":"green"}
