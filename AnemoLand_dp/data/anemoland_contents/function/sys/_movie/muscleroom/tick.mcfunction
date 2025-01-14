
execute if loaded 3072 0 7168 run schedule function anemoland_contents:sys/movie/muscleroom/tick 1t replace

execute unless loaded 3072 0 7168 run schedule function anemoland_contents:sys/movie/muscleroom/cancel 1t replace

execute positioned 3072.0 0.0 7168.0 if loaded ~ ~ ~ run function anemoland_contents:sys/movie/muscleroom/manual/tick/0
