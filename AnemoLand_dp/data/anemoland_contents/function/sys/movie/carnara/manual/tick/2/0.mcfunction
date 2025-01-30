
# 移動
    execute if score #movie.carnara action_time matches ..10 as @e[tag=aj.carbara.root,distance=..64] at @s rotated ~ 0 run tp ^ ^ ^-0.4
    execute if score #movie.carnara action_time matches 11..20 as @e[tag=aj.carbara.root,distance=..64] at @s rotated ~ 0 run tp ^ ^ ^0.2
    execute if score #movie.carnara action_time matches 21.. as @e[tag=aj.carbara.root,distance=..64] at @s rotated ~ 0 run tp ^ ^ ^0.1

# 回転
    execute if score #movie.carnara action_time matches ..60 as @e[tag=aj.carbara.root,distance=..64] at @s rotated ~ 0 run tp @s ~ ~ ~ ~-1 ~

execute if score #movie.carnara action_time matches 60.. run function anemoland_contents:sys/movie/carnara/manual/tick/3/start
