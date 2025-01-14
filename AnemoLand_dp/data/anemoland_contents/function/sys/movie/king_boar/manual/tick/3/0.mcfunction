
execute if score #movie.king_boar action_time matches ..20 as @e[tag=aj.boar.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.03

execute as @e[type=armor_stand,tag=movie.king_boar,distance=..64] positioned as @e[tag=aj.boar.root,distance=..64,limit=1] run tp @s ~ ~-1 ~ 160 0

execute if score #movie.king_boar action_time matches ..20 at @e[tag=aj.boar.root,distance=..64] run particle block{block_state:{Name:"dirt"}} ~ ~-2 ~ 0.5 0 0.5 1 3
execute if score #movie.king_boar action_time matches ..20 as @a[distance=..64] at @s run playsound block.sand.break hostile @s ~ ~ ~ 1 1
execute if score #movie.king_boar action_time matches ..20 as @a[distance=..64] at @s run playsound minecraft:block.rooted_dirt.hit hostile @s ~ ~ ~ 0.4 0

execute if score #movie.king_boar action_time matches 50.. run function anemoland_contents:sys/movie/king_boar/manual/tick/4/start
