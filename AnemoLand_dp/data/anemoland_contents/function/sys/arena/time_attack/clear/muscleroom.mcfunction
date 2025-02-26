
execute store result score #sec_total_before temp run data get storage anemoland:progress data.arena.time_attack.muscleroom.sec_total

execute if score #sec_total temp > #sec_total_before temp run return 1

tellraw @a {"text":"最速タイム更新!","color": "yellow"}

execute if score #sec_total temp matches ..109 unless score #sec_total_before temp matches ..109 run tellraw @a {"text": "【S】ランク達成!","color": "aqua"}
execute if score #sec_total temp matches ..109 run data modify storage anemoland:progress data.arena.time_attack.muscleroom.rank set value "S"
execute if score #sec_total temp matches ..109 run data modify storage anemoland:progress data.arena.time_attack.muscleroom.color set value "aqua"

execute if score #sec_total temp matches 110..139 unless score #sec_total_before temp matches ..139 run tellraw @a {"text": "【A】ランク達成!","color": "gold"}
execute if score #sec_total temp matches 110..139 run data modify storage anemoland:progress data.arena.time_attack.muscleroom.rank set value "A"
execute if score #sec_total temp matches 110..139 run data modify storage anemoland:progress data.arena.time_attack.muscleroom.color set value "gold"

execute if score #sec_total temp matches 140..239 run data modify storage anemoland:progress data.arena.time_attack.muscleroom.rank set value "B"
execute if score #sec_total temp matches 140..239 run data modify storage anemoland:progress data.arena.time_attack.muscleroom.color set value "dark_purple"

execute if score #sec_total temp matches 240.. run data modify storage anemoland:progress data.arena.time_attack.muscleroom.rank set value "C"
execute if score #sec_total temp matches 240.. run data modify storage anemoland:progress data.arena.time_attack.muscleroom.color set value "dark_gray"

execute store result storage anemoland:progress data.arena.time_attack.muscleroom.sec_total int 1 run scoreboard players get #sec_total temp
execute store result storage anemoland:progress data.arena.time_attack.muscleroom.sec int 1 run scoreboard players get #sec temp
execute store result storage anemoland:progress data.arena.time_attack.muscleroom.min int 1 run scoreboard players get #min temp
execute if score #min temp matches ..9 run data modify storage anemoland:progress data.arena.time_attack.muscleroom.min_prefix set value "0"
execute unless score #min temp matches ..9 run data modify storage anemoland:progress data.arena.time_attack.muscleroom.min_prefix set value ""
execute if score #sec temp matches ..9 run data modify storage anemoland:progress data.arena.time_attack.muscleroom.sec_prefix set value "0"
execute unless score #sec temp matches ..9 run data modify storage anemoland:progress data.arena.time_attack.muscleroom.sec_prefix set value ""
