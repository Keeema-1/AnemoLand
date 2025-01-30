
scoreboard players set #movie.carnara action0 5
scoreboard players set #movie.carnara action_time 0

execute as @e[tag=aj.carnara.root,distance=..64] run function animated_java:carnara/animations/pause_all
execute as @e[tag=aj.carnara.root,distance=..64] run function animated_java:carnara/animations/beam2/play

execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 1 0

# カメラ
    execute as @e[type=armor_stand,tag=movie.carnara,distance=..64] at @e[tag=aj.carnara.root,distance=..64,limit=1] positioned ^ ^-1.5 ^2 positioned ^ ^ ^8 rotated ~180 0 rotated ~-50 ~20 run tp @s ^ ^ ^-8 ~ ~
