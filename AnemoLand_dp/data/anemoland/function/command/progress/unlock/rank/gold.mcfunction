data modify storage anemoland:progress data.rank.gold set value 1b
tellraw @a {"text":"ゴールドランクに昇格しました：","color":"green"}
tellraw @a {"text":"  Lv. 30 + のモンスターが出現","color":"green"}

function anemoland:command/progress/unlock/field/stone