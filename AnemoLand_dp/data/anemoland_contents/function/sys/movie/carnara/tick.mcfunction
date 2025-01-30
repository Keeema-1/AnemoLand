# 中心位置がロードされていれば
    execute if loaded 3072 0 4096 run schedule function anemoland_contents:sys/movie/carnara/tick 1t replace
# 中心位置がロードされていれば次を実行
    execute positioned 3072.0 0.0 4096.0 if loaded ~ ~ ~ run function anemoland_contents:sys/movie/carnara/tick_at_center
