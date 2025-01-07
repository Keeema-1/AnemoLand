
scoreboard players add @s action_time 1

# execute if score @s aciton_time matches 10 on passengers run data merge entity @s {transformation:[1.0000f,0.0000f,0.0000f,-0.5000f,0.0000f,-1.0000f,-0.0000f,-0.5000f,0.0000f,0.0000f,-1.0000f,-0.5000f,0.0000f,0.0000f,0.0000f,1.0000f],interpolation_duration:1,start_interpolation:0}
scoreboard players operation #action_time temp = @s action_time
execute on passengers store result entity @s Rotation[0] float 5 run scoreboard players get #action_time temp
execute on passengers store result entity @s Rotation[1] float 5 run scoreboard players get #action_time temp

# execute if score @s action_time matches 0..5 run tp ^ ^0.3 ^
# execute if score @s action_time matches 6..10 run tp ^ ^0.2 ^
# execute if score @s action_time matches 11..15 run tp ^ ^0.1 ^
# execute if score @s action_time matches 16..20 run tp ^ ^-0.1 ^
# execute if score @s action_time matches 21..25 run tp ^ ^-0.2 ^
# execute if score @s action_time matches 26.. run tp ^ ^-0.3 ^

execute if score @s action_time matches 0..5 run tp ^ ^0.2 ^
execute if score @s action_time matches 6..10 run tp ^ ^0.1 ^
execute if score @s action_time matches 11..15 run tp ^ ^-0.1 ^
execute if score @s action_time matches 16.. run tp ^ ^-0.2 ^

execute if score @s action_way matches 1 at @s run tp ^ ^ ^0.25
execute if score @s action_way matches 2 at @s run tp ^ ^ ^0.5
execute if score @s action_way matches 3 at @s run tp ^ ^ ^0.75
execute if score @s action_way matches 4 at @s run tp ^ ^ ^1.0
execute if score @s action_way matches 5 at @s run tp ^ ^ ^1.25
execute if score @s action_way matches 0 at @s run tp ^ ^ ^1.5

execute unless score @s action_time matches 100.. at @s if block ~ ~ ~ #rpg:space positioned ~-1 ~-1 ~-1 if entity @a[dx=1,dy=1,dz=1,gamemode=adventure] positioned ~1 ~1 ~1 run function rpg:sys/entity/bullet/dirt/tick/hit
execute unless score @s action_time matches 100.. at @s if block ~ ~ ~ #rpg:space positioned ~-1 ~-1 ~-1 unless entity @a[dx=1,dy=1,dz=1,gamemode=adventure] if entity @e[type=#rpg:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=1,dy=1,dz=1,limit=1] positioned ~1 ~1 ~1 run function rpg:sys/entity/bullet/dirt/tick/hit

execute unless score @s action_time matches 100.. at @s unless block ~ ~0.5 ~ #rpg:space positioned ^ ^1 ^ run function rpg:sys/entity/bullet/dirt/tick/hit

execute if score @s action_time matches 100.. run function rpg:sys/entity/bullet/dirt/tick/hit

# tellraw @a "bullet dirt tick"