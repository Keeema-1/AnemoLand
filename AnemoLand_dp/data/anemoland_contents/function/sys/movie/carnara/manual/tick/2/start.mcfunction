
scoreboard players set #movie.carnara action0 2
scoreboard players set #movie.carnara action_time 0

execute as @e[tag=aj.carnara.root,distance=..64] run function animated_java:carnara/animations/pause_all
execute as @e[tag=aj.carnara.root,distance=..64] run function animated_java:carnara/animations/tail_spear_left1/play

execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 1 0

execute as @e[tag=aj.carnara.root,distance=..64] at @s rotated ~ 0 run tp @s ~ ~-0.5 ~

# カメラ
    execute as @e[type=armor_stand,tag=movie.carnara,distance=..64] at @e[tag=aj.carnara.root,distance=..64,limit=1] positioned ^ ^-1.5 ^6 positioned ^ ^ ^3 rotated ~180 0 rotated ~-50 ~30 run tp @s ^ ^ ^-8 ~ ~
