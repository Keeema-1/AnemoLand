advancement grant @a only anemoland_contents:armor_catalog/ojinushi
execute if data storage anemoland:progress data.armor.ojinushi{unlocked:1b} run return 1
data modify storage anemoland:progress data.armor.ojinushi.unlocked set value 1b
tellraw @a {"text":"新しい防具が追加されました：","color":"green"}
tellraw @a {"text":"  祭獅子の兜","color":"green"}
tellraw @a {"text":"  祭獅子の鎧","color":"green"}
tellraw @a {"text":"  祭獅子の袴","color":"green"}
tellraw @a {"text":"  祭獅子の臑当","color":"green"}
