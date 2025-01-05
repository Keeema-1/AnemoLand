advancement grant @a only anemoland_contents:armor_catalog/carnara
execute if data storage anemoland:progress data.armor.carnara{unlocked:1b} run return 1
data modify storage anemoland:progress data.armor.carnara.unlocked set value 1b
tellraw @a {"translate":"anemoland.unlock.new_equipment","color":"green"}
tellraw @a {"text":"  カルナヘルム","color":"green"}
tellraw @a {"text":"  カルナアーマー","color":"green"}
tellraw @a {"text":"  カルナレギンス","color":"green"}
tellraw @a {"text":"  カルナブーツ","color":"green"}
