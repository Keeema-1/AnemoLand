# 中心位置がロードされていれば
    execute if loaded 2048 0 1536 run schedule function anemoland_contents:sys/movie/martellos/tick 1t replace
# 中心位置がロードされていれば次を実行
    execute positioned 2048.0 0.0 1536.0 if loaded ~ ~ ~ run function anemoland_contents:sys/movie/martellos/tick_at_center
