# カメラ
    execute as @e[type=armor_stand,tag=movie.garapapas,distance=..64] at @e[tag=aj.garapapas.root,distance=..64,limit=1] positioned ^ ^-1.5 ^2 rotated 180 0 rotated ~30 ~30 run tp @s ^ ^ ^-5 ~ ~

execute if score #movie.garapapas action_time matches 40 as @e[tag=aj.garapapas.root,distance=..64] run function animated_java:garapapas/animations/tail_left2/play

# 回転
    execute if score #movie.garapapas action_time matches 40..50 as @e[tag=aj.garapapas.root,distance=..64] at @s run tp @s ~ ~ ~ ~2 ~
    execute if score #movie.garapapas action_time matches 41..60 as @e[tag=aj.garapapas.root,distance=..64] at @s run tp @s ~ ~ ~ ~2 ~
    execute if score #movie.garapapas action_time matches 61..70 as @e[tag=aj.garapapas.root,distance=..64] at @s run tp @s ~ ~ ~ ~8 ~
    execute if score #movie.garapapas action_time matches 101..110 as @e[tag=aj.garapapas.root,distance=..64] at @s run tp @s ~ ~ ~ ~-2 ~
    execute if score #movie.garapapas action_time matches 121.. as @e[tag=aj.garapapas.root,distance=..64] at @s run tp @s ~ ~ ~ ~ ~

# エンティティ
    # execute if score #movie.garapapas action_time matches ..120 as @e[tag=aj.garapapas.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.2

    execute if score #movie.garapapas action_time matches 40..60 as @e[tag=aj.garapapas.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.4
    execute if score #movie.garapapas action_time matches 61..70 as @e[tag=aj.garapapas.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.3

execute if score #movie.garapapas action_time matches 60..70 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.7 0
execute if score #movie.garapapas action_time matches 60..70 as @e[type=#anemoland:mob_core,tag=hitbox.tail,tag=garapapas,limit=1,sort=nearest,distance=..64] at @s rotated ~ 0 run particle poof ^ ^ ^-3 0.1 0.1 0.1 0 1


execute if score #movie.garapapas action_time matches 100.. run function anemoland_contents:sys/movie/garapapas/manual/tick/3/start
