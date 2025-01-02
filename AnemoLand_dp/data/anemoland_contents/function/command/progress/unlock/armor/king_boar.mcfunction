advancement grant @a only anemoland_contents:armor_catalog/king_boar
execute if data storage anemoland:progress data.armor.king_boar{unlocked:1b} run return 1
data modify storage anemoland:progress data.armor.king_boar.unlocked set value 1b
tellraw @a {"text":"新しい防具が追加されました：","color":"green"}
tellraw @a {"text":"  ボアヘルム","color":"green"}
tellraw @a {"text":"  ボアメイル","color":"green"}
tellraw @a {"text":"  ボアレギンス","color":"green"}
tellraw @a {"text":"  ボアブーツ","color":"green"}
