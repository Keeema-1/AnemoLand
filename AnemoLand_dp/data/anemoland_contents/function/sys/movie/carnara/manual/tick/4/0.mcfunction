
# 回転
    execute if score #movie.carnara action_time matches ..10 as @e[tag=aj.carnara.root,distance=..64] at @s rotated ~ 0 run tp ^ ^ ^-0.3
    execute if score #movie.carnara action_time matches 11..20 as @e[tag=aj.carnara.root,distance=..64] at @s rotated ~ 0 run tp ^ ^ ^-0.2
    execute if score #movie.carnara action_time matches 21.. as @e[tag=aj.carnara.root,distance=..64] at @s rotated ~ 0 run tp ^ ^ ^-0.1

execute if score #movie.carnara action_time matches 21.. as @e[type=#anemoland:mob_core,tag=hitbox.head,tag=carnara,distance=..32] at @s run particle dust{color:[1.0, 1.0, 1.0], scale:1.0} ~ ~ ~ 1 1 1 0 1

execute if score #movie.carnara action_time matches 40.. run function anemoland_contents:sys/movie/carnara/manual/tick/5/start
