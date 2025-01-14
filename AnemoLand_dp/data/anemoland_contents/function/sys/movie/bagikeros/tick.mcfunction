# 中心位置がロードされていれば
    execute if loaded 3072 0 3584 run schedule function anemoland_contents:sys/movie/bagikeros/tick 1t replace
# 中心位置がロードされていれば次を実行
    execute positioned 3072.0 0.0 3584.0 if loaded ~ ~ ~ run function anemoland_contents:sys/movie/bagikeros/tick_at_center
