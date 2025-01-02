
scoreboard players set #player_side temp 0
execute unless data storage anemoland:settings data.arena.custom{player_side:1} run scoreboard players set #player_side temp 1

execute store result storage anemoland:settings data.arena.custom.player_side int 1 run scoreboard players get #player_side temp
