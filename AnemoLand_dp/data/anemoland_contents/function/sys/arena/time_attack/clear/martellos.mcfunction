
execute store result score #sec_total_before temp run data get storage anemoland:progress data.arena.time_attack.martellos.sec_total

execute if score #sec_total temp > #sec_total_before temp run return 1

tellraw @a {"text":"最速タイム更新!","color": "yellow"}

execute if score #sec_total temp matches ..89 unless score #sec_total_before temp matches ..89 run tellraw @a {"text": "【S】ランク達成!","color": "aqua"}
execute if score #sec_total temp matches ..89 run data modify storage anemoland:progress data.arena.time_attack.martellos.rank set value "S"
execute if score #sec_total temp matches ..89 run data modify storage anemoland:progress data.arena.time_attack.martellos.color set value "aqua"

execute if score #sec_total temp matches 90..119 unless score #sec_total_before temp matches ..119 run tellraw @a {"text": "【A】ランク達成!","color": "gold"}
execute if score #sec_total temp matches 90..119 run data modify storage anemoland:progress data.arena.time_attack.martellos.rank set value "A"
execute if score #sec_total temp matches 90..119 run data modify storage anemoland:progress data.arena.time_attack.martellos.color set value "gold"

execute if score #sec_total temp matches 120..179 run data modify storage anemoland:progress data.arena.time_attack.martellos.rank set value "B"
execute if score #sec_total temp matches 120..179 run data modify storage anemoland:progress data.arena.time_attack.martellos.color set value "dark_purple"

execute if score #sec_total temp matches 180.. run data modify storage anemoland:progress data.arena.time_attack.martellos.rank set value "C"
execute if score #sec_total temp matches 180.. run data modify storage anemoland:progress data.arena.time_attack.martellos.color set value "dark_gray"

execute store result storage anemoland:progress data.arena.time_attack.martellos.sec_total int 1 run scoreboard players get #sec_total temp
execute store result storage anemoland:progress data.arena.time_attack.martellos.sec int 1 run scoreboard players get #sec temp
execute store result storage anemoland:progress data.arena.time_attack.martellos.min int 1 run scoreboard players get #min temp
execute if score #min temp matches ..9 run data modify storage anemoland:progress data.arena.time_attack.martellos.min_prefix set value "0"
execute unless score #min temp matches ..9 run data modify storage anemoland:progress data.arena.time_attack.martellos.min_prefix set value ""
execute if score #sec temp matches ..9 run data modify storage anemoland:progress data.arena.time_attack.martellos.sec_prefix set value "0"
execute unless score #sec temp matches ..9 run data modify storage anemoland:progress data.arena.time_attack.martellos.sec_prefix set value ""
