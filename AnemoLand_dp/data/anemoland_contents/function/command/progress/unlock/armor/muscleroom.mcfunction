advancement grant @a only anemoland_contents:armor_catalog/muscleroom
execute if data storage anemoland:progress data.armor.muscleroom{unlocked:1b} run return 1
data modify storage anemoland:progress data.armor.muscleroom.unlocked set value 1b
tellraw @a {"text":"新しい防具が追加されました：","color":"green"}
tellraw @a {"text":"  シュルームヘッド","color":"green"}
tellraw @a {"text":"  シュルームショルダー","color":"green"}
tellraw @a {"text":"  シュルームニー","color":"green"}
tellraw @a {"text":"  シュルームフット","color":"green"}
