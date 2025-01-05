advancement grant @a only anemoland_contents:armor_catalog/ojinushi
execute if data storage anemoland:progress data.armor.ojinushi{unlocked:1b} run return 1
data modify storage anemoland:progress data.armor.ojinushi.unlocked set value 1b
tellraw @a {"translate":"anemoland.unlock.new_equipment","color":"green"}
tellraw @a {"text":"  祭獅子の兜","color":"green"}
tellraw @a {"text":"  祭獅子の鎧","color":"green"}
tellraw @a {"text":"  祭獅子の袴","color":"green"}
tellraw @a {"text":"  祭獅子の臑当","color":"green"}
