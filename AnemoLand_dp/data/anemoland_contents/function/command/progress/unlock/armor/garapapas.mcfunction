advancement grant @a only anemoland_contents:armor_catalog/garapapas
execute if data storage anemoland:progress data.armor.garapapas{unlocked:1b} run return 1
data modify storage anemoland:progress data.armor.garapapas.unlocked set value 1b
tellraw @a {"translate":"anemoland.unlock.new_equipment","color":"green"}
tellraw @a {"text":"  ガラパスヘルム","color":"green"}
tellraw @a {"text":"  ガラパスアーマー","color":"green"}
tellraw @a {"text":"  ガラパスレギンス","color":"green"}
tellraw @a {"text":"  ガラパスブーツ","color":"green"}
