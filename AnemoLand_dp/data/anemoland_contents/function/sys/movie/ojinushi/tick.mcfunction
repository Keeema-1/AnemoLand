# 中心位置がロードされていれば
    execute if loaded 2560 0 2560 run schedule function anemoland_contents:sys/movie/ojinushi/tick 1t replace
# 中心位置がロードされていれば次を実行
    execute positioned 2560.0 0.0 2560.0 if loaded ~ ~ ~ run function anemoland_contents:sys/movie/ojinushi/tick_at_center
