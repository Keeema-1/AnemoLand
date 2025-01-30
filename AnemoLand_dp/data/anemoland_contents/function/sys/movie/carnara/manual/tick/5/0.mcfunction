
execute if score #movie.carnara action_time matches 20..60 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 0.4 0.2

execute if score #movie.carnara action_time matches 20..60 as @e[type=#anemoland:mob_core,tag=hitbox.head,tag=carnara,distance=..32] at @s run function anemoland_contents:sys/entity/mob/carnara/manual/action/common/beam/00

execute if score #movie.carnara action_time matches 150.. run function anemoland_contents:sys/movie/carnara/manual/tick/6/start
