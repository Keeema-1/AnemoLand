advancement grant @a only anemoland_contents:armor_catalog/leather
execute if data storage anemoland:progress data.armor.leather{unlocked:1b} run return 1
data modify storage anemoland:progress data.armor.leather.unlocked set value 1b
tellraw @a {"text":"新しい防具が追加されました：","color":"green"}
tellraw @a {"text":"  革の帽子","color":"green"}
tellraw @a {"text":"  革の上着","color":"green"}
tellraw @a {"text":"  革のズボン","color":"green"}
tellraw @a {"text":"  革のブーツ","color":"green"}
