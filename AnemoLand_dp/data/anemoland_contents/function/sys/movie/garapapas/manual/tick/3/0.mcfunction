# カメラ
    execute as @e[type=armor_stand,tag=movie.garapapas,distance=..64] at @e[tag=aj.garapapas.root,distance=..64,limit=1] positioned ^ ^-1.5 ^2 positioned ^ ^ ^3 rotated ~180 0 rotated ~-50 ~30 run tp @s ^ ^ ^-5 ~ ~

execute if score #movie.garapapas action_time matches 30 as @e[tag=aj.garapapas.root,distance=..64] run function animated_java:garapapas/animations/water_front2/play

# execute if score #movie.garapapas action_time matches 30 at @e[tag=aj.garapapas.root,distance=..64,limit=1] positioned ^ ^1.5 ^4 run function anemoland_contents:sys/entity/mob/garapapas/manual/action/water_front/launch
execute if score #movie.garapapas action_time matches 30 at @e[tag=aj.garapapas.root,distance=..64,limit=1] positioned ^ ^1.5 ^4 run function anemoland_contents:sys/entity/bullet/water/summon/large/0

execute if score #movie.garapapas action_time matches 30 as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 1.3 0.7
execute if score #movie.garapapas action_time matches 30 as @a[distance=..64] at @s run playsound minecraft:entity.shulker.hurt hostile @s ~ ~ ~ 1.3 0.3

execute if score #movie.garapapas action_time matches 120.. run function anemoland_contents:sys/movie/garapapas/manual/tick/4/start
