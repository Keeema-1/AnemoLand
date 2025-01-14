
execute if score #movie.ojinushi action_time matches ..50 as @e[type=armor_stand,tag=movie.ojinushi,distance=..64] run tp @s ~4 ~8 ~6 150 30

execute if score #movie.ojinushi action_time matches 51.. as @e[type=armor_stand,tag=movie.ojinushi,distance=..64] run tp @s ~1 ~2 ~-2 150 30

execute if score #movie.ojinushi action_time matches 20 as @e[tag=aj.ojinushi.root,distance=..64] at @s run particle flame ^ ^3 ^3 0 0 0 0.1 20
execute if score #movie.ojinushi action_time matches 20 as @a[distance=..64] at @s run playsound entity.ghast.shoot hostile @s ~ ~ ~ 2 1

execute if score #movie.ojinushi action_time matches 18 as @e[tag=aj.ojinushi.root,distance=..64] at @s positioned ^ ^-2 ^1 run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/jump_launch/launch1
execute if score #movie.ojinushi action_time matches 21 as @e[tag=aj.ojinushi.root,distance=..64] at @s positioned ^ ^-2 ^1 run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/jump_launch/launch2
execute if score #movie.ojinushi action_time matches 24 as @e[tag=aj.ojinushi.root,distance=..64] at @s positioned ^ ^-2 ^1 run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/jump_launch/launch3

execute if score #movie.ojinushi action_time matches ..5 as @e[tag=aj.ojinushi.root,distance=..64] at @s run tp ~ ~0.3 ~-0.1
execute if score #movie.ojinushi action_time matches 6..10 as @e[tag=aj.ojinushi.root,distance=..64] at @s run tp ~ ~0.3 ~-0.1
execute if score #movie.ojinushi action_time matches 11..15 as @e[tag=aj.ojinushi.root,distance=..64] at @s run tp ~ ~0.2 ~-0.1
execute if score #movie.ojinushi action_time matches 16..20 as @e[tag=aj.ojinushi.root,distance=..64] at @s run tp ~ ~0.1 ~-0.1

execute if score #movie.ojinushi action_time matches 21..40 as @e[tag=aj.ojinushi.root,distance=..64] at @s run tp ~ ~0.1 ~-0.1

execute if score #movie.ojinushi action_time matches 41..50 as @e[tag=aj.ojinushi.root,distance=..64] at @s run tp ~ ~-0.4 ~-0.3
execute if score #movie.ojinushi action_time matches 51..60 as @e[tag=aj.ojinushi.root,distance=..64] at @s run tp ~ ~-0.4 ~-0.3
execute if score #movie.ojinushi action_time matches 61..65 as @e[tag=aj.ojinushi.root,distance=..64] at @s run tp ~ ~ ~-0.3

execute if score #movie.ojinushi action_time matches 100.. run function anemoland_contents:sys/movie/ojinushi/manual/tick/3/start
