
# 回転
    execute if score #movie.carnara action_time matches 16..25 as @e[tag=aj.carnara.root,distance=..64] at @s rotated ~ 0 run tp @s ~ ~ ~ ~3 ~
    execute if score #movie.carnara action_time matches 50..90 as @e[tag=aj.carnara.root,distance=..64] at @s rotated ~ 0 run tp @s ~ ~ ~ ~1 ~

# 移動
    execute if score #movie.carnara action_time matches ..10 as @e[tag=aj.carnara.root,distance=..64] at @s rotated ~ 0 run tp ^ ^ ^0.6
    execute if score #movie.carnara action_time matches 11..20 as @e[tag=aj.carnara.root,distance=..64] at @s rotated ~ 0 run tp ^ ^ ^0.4
    execute if score #movie.carnara action_time matches 21..25 as @e[tag=aj.carnara.root,distance=..64] at @s rotated ~ 0 run tp ^ ^ ^0.2
    execute if score #movie.carnara action_time matches 26..50 as @e[tag=aj.carnara.root,distance=..64] at @s rotated ~ 0 run tp ^ ^ ^0.1

# パーティクルやサウンド
    execute if score #movie.carnara action_time matches 16..30 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.7 0
    execute if score #movie.carnara action_time matches 16..30 as @e[type=#anemoland:mob_core,tag=hitbox.tail,tag=carnara,distance=..32] at @s run particle sweep_attack ~ ~ ~ 1 1 1 1 1

execute if score #movie.carnara action_time matches 120.. run function anemoland_contents:sys/movie/carnara/manual/tick/4/start
