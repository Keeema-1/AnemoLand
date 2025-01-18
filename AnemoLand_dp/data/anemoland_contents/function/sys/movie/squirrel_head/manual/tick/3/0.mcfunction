
execute if score #movie.squirrel_head action_time matches ..20 as @e[tag=aj.squirrel_head.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.03

execute as @e[type=armor_stand,tag=movie.squirrel_head,distance=..64] positioned as @e[tag=aj.squirrel_head.root,distance=..64,limit=1] run tp @s ~-2 ~1 ~3 210 50

# execute if score #movie.squirrel_head action_time matches ..20 at @e[tag=aj.squirrel_head.root,distance=..64] run particle block{block_state:{Name:"dirt"}} ~ ~-2 ~ 0.5 0 0.5 1 3
# execute if score #movie.squirrel_head action_time matches ..20 as @a[distance=..64] at @s run playsound block.sand.break hostile @s ~ ~ ~ 1 1
# execute if score #movie.squirrel_head action_time matches ..20 as @a[distance=..64] at @s run playsound minecraft:block.rooted_dirt.hit hostile @s ~ ~ ~ 0.4 0

execute if score #movie.squirrel_head action_time matches 40 as @e[tag=aj.squirrel_head.root,distance=..64] run function animated_java:squirrel_head/animations/spin_left2/play

execute if score #movie.squirrel_head action_time matches 41..50 as @e[tag=aj.squirrel_head.root,distance=..64] at @s rotated ~ 0 run tp @s ~ ~ ~ ~18 ~
execute if score #movie.squirrel_head action_time matches 51..60 as @e[tag=aj.squirrel_head.root,distance=..64] at @s rotated ~ 0 run tp @s ~ ~ ~ ~9 ~
execute if score #movie.squirrel_head action_time matches 61..75 as @e[tag=aj.squirrel_head.root,distance=..64] at @s rotated ~ 0 run tp @s ~ ~ ~ ~6 ~

execute if score #movie.squirrel_head action_time matches 40..60 at @e[tag=aj.squirrel_head.root,distance=..64,limit=1] run particle poof ^-5 ^-1 ^-1 0.0 0.0 0.0 0 1
execute if score #movie.squirrel_head action_time matches 40..60 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.2 0

execute if score #movie.squirrel_head action_time matches 120.. run function anemoland_contents:sys/movie/squirrel_head/manual/tick/4/start
