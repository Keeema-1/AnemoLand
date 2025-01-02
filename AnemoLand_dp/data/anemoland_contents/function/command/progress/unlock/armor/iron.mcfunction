advancement grant @a only anemoland_contents:armor_catalog/iron
execute if data storage anemoland:progress data.armor.iron{unlocked:1b} run return 1
data modify storage anemoland:progress data.armor.iron.unlocked set value 1b
tellraw @a {"text":"新しい防具が追加されました：","color":"green"}
tellraw @a {"text":"  アイアンヘルム","color":"green"}
tellraw @a {"text":"  アイアンアーマー","color":"green"}
tellraw @a {"text":"  アイアンレギンス","color":"green"}
tellraw @a {"text":"  アイアンブーツ","color":"green"}
