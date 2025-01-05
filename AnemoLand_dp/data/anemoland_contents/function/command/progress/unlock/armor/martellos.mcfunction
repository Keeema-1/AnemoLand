advancement grant @a only anemoland_contents:armor_catalog/martellos
execute if data storage anemoland:progress data.armor.martellos{unlocked:1b} run return 1
data modify storage anemoland:progress data.armor.martellos.unlocked set value 1b
tellraw @a {"translate":"anemoland.unlock.new_equipment","color":"green"}
tellraw @a {"text":"  マルテロヘルム","color":"green"}
tellraw @a {"text":"  マルテロアーマー","color":"green"}
tellraw @a {"text":"  マルテロレギンス","color":"green"}
tellraw @a {"text":"  マルテロブーツ","color":"green"}
