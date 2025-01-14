
execute if loaded 3072 0 1536 run schedule function anemoland_contents:sys/movie/king_boar/tick 1t replace

execute unless loaded 3072 0 1536 run schedule function anemoland_contents:sys/movie/king_boar/cancel 1t replace

execute positioned 3072.0 0.0 1536.0 if loaded ~ ~ ~ run function anemoland_contents:sys/movie/king_boar/tick/0
