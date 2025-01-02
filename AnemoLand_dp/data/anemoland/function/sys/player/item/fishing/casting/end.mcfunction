
# execute on passengers run data modify entity @s transformation set value [0.0300f,0.0000f,0.0000f,0.0000f,0.0000f,0.0300f,0.0000f,0.0000f,0.0000f,0.0000f,8.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]

execute at @e[type=marker,tag=fishing_area,distance=..32,sort=nearest] facing entity @s feet rotated ~ 0 positioned ^ ^ ^7 run tp @s ~ 0 ~

tag @s add on_water

scoreboard players reset @s action_time

scoreboard players set @p[tag=player_check] action0 2

particle fishing ~ 0 ~ 0 0 0 0.05 10
particle bubble ~ 0 ~ 0.2 0.2 0.2 0.05 3
playsound entity.fishing_bobber.splash master @a ~ ~ ~ 2 1
