advancement grant @a only anemoland_contents:armor_catalog/bagikeros
execute if data storage anemoland:progress data.armor.bagikeros{unlocked:1b} run return 1
data modify storage anemoland:progress data.armor.bagikeros.unlocked set value 1b
tellraw @a {"text":"新しい防具が追加されました：","color":"green"}
tellraw @a {"text":"  バギケロヘルム","color":"green"}
tellraw @a {"text":"  バギケロアーマー","color":"green"}
tellraw @a {"text":"  バギケロレギンス","color":"green"}
tellraw @a {"text":"  バギケロブーツ","color":"green"}
