advancement grant @a only anemoland_contents:armor_catalog/squirrel_head
execute if data storage anemoland:progress data.armor.squirrel_head{unlocked:1b} run return 1
data modify storage anemoland:progress data.armor.squirrel_head.unlocked set value 1b
tellraw @a {"translate":"anemoland.unlock.new_equipment","color":"green"}
tellraw @a {"text":"  スクルスキャップ","color":"green"}
tellraw @a {"text":"  スクルスジャッケット","color":"green"}
tellraw @a {"text":"  スクルスレギンス","color":"green"}
tellraw @a {"text":"  スクルスブーツ","color":"green"}
