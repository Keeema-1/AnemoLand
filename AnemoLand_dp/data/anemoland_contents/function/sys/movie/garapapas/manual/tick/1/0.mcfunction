
# エンティティ
    execute if score #movie.garapapas action_time matches ..120 as @e[tag=aj.garapapas.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.2

# カメラ
    execute as @e[type=armor_stand,tag=movie.garapapas,distance=..64] at @e[tag=aj.garapapas.root,distance=..64,limit=1] positioned ^ ^-1.5 ^2 rotated ~180 0 rotated ~80 ~ run tp @s ^ ^ ^-4 ~ ~

execute if score #movie.garapapas action_time matches 40.. run function anemoland_contents:sys/movie/garapapas/manual/tick/2/start
