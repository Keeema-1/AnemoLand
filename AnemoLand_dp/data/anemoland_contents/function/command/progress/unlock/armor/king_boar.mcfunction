advancement grant @a only anemoland_contents:armor_catalog/king_boar
execute if data storage anemoland:progress data.armor.king_boar{unlocked:1b} run return 1
data modify storage anemoland:progress data.armor.king_boar.unlocked set value 1b
tellraw @a {"translate":"anemoland.unlock.new_equipment","color":"green"}
tellraw @a {"text":"  ボアヘルム","color":"green"}
tellraw @a {"text":"  ボアメイル","color":"green"}
tellraw @a {"text":"  ボアレギンス","color":"green"}
tellraw @a {"text":"  ボアブーツ","color":"green"}
