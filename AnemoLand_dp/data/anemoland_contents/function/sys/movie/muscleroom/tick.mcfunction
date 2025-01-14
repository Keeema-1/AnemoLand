# 中心位置がロードされていれば
    execute if loaded 2560 0 3072 run schedule function anemoland_contents:sys/movie/muscleroom/tick 1t replace
# 中心位置がロードされていれば次を実行
    execute positioned 2560.0 0.0 3072.0 if loaded ~ ~ ~ run function anemoland_contents:sys/movie/muscleroom/tick_at_center
