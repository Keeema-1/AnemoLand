advancement grant @a only anemoland_contents:armor_catalog/garuda
execute if data storage anemoland:progress data.armor.garuda{unlocked:1b} run return 1
data modify storage anemoland:progress data.armor.garuda.unlocked set value 1b
tellraw @a {"translate":"anemoland.unlock.new_equipment","color":"green"}
tellraw @a {"text":"  ガルダヘルム","color":"green"}
tellraw @a {"text":"  ガルダアーマー","color":"green"}
tellraw @a {"text":"  ガルダレギンス","color":"green"}
tellraw @a {"text":"  ガルダブーツ","color":"green"}
