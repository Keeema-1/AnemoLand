
execute if score #movie.martellos action_time matches 1 as @e[tag=aj.martellos.root,distance=..64] run function animated_java:martellos/animations/pause_all
execute if score #movie.martellos action_time matches 1 as @e[tag=aj.martellos.root,distance=..64] run function animated_java:martellos/animations/spin_right1/play

execute if score #movie.martellos action_time matches 30 as @e[tag=aj.martellos.root,distance=..64] run function animated_java:martellos/animations/pause_all
execute if score #movie.martellos action_time matches 30 as @e[tag=aj.martellos.root,distance=..64] run function animated_java:martellos/animations/spin_right2/play

execute if score #movie.martellos action_time matches 30..49 as @e[tag=aj.martellos.root,distance=..64] at @s run tp @s ~ ~ ~ ~4 ~

execute if score #movie.martellos action_time matches 50..55 as @e[tag=aj.martellos.root,distance=..64] at @s run tp @s ~ ~ ~ ~20 ~
execute if score #movie.martellos action_time matches 56..60 as @e[tag=aj.martellos.root,distance=..64] at @s run tp @s ~ ~ ~ ~15 ~
execute if score #movie.martellos action_time matches 61..70 as @e[tag=aj.martellos.root,distance=..64] at @s run tp @s ~ ~ ~ ~5 ~
execute if score #movie.martellos action_time matches 71..75 as @e[tag=aj.martellos.root,distance=..64] at @s run tp @s ~ ~ ~ ~3 ~
execute if score #movie.martellos action_time matches 76..85 as @e[tag=aj.martellos.root,distance=..64] at @s run tp @s ~ ~ ~ ~1 ~

execute if score #movie.martellos action_time matches 50..65 as @e[tag=aj.martellos.root,distance=..64] at @s run particle poof ^-6 ^-1 ^-1 0.0 0.0 0.0 0 1

execute if score #movie.martellos action_time matches 50..70 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.2 0

execute as @e[type=armor_stand,tag=movie.martellos,distance=..64] run tp @s ~ 4.0 ~6.5 180 30

execute if score #movie.martellos action_time matches 100.. run function anemoland_contents:sys/movie/martellos/manual/tick/4/start
