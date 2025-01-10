#> anemoland_contents:sys/entity/mob/ojinushi/manual/action/launch_up/tick
#
# アクション launch_up 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/ojinushi/action/launch_up/tick

tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 30 run particle flame ^ ^5 ^-1.5 0 0 0 0.1 20
execute if score @s action_time matches 30 as @a[distance=..64] at @s run playsound entity.ghast.shoot hostile @s ~ ~ ~ 2 1
execute if score @s action_time matches 30 positioned ^ ^5 ^-1.5 run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/launch_up/launch

execute if score @s action_time matches 35 run particle flame ^ ^5 ^-1.5 0 0 0 0.1 20
execute if score @s action_time matches 35 as @a[distance=..64] at @s run playsound entity.ghast.shoot hostile @s ~ ~ ~ 2 1
execute if score @s action_time matches 35 positioned ^ ^5 ^-1.5 run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/launch_up/launch

execute if score @s action_time matches 40 run particle flame ^ ^5 ^-1.5 0 0 0 0.1 20
execute if score @s action_time matches 40 as @a[distance=..64] at @s run playsound entity.ghast.shoot hostile @s ~ ~ ~ 2 1
execute if score @s action_time matches 40 positioned ^ ^5 ^-1.5 run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/launch_up/launch

execute if score @s action_time matches 45 run particle flame ^ ^5 ^-1.5 0 0 0 0.1 20
execute if score @s action_time matches 45 as @a[distance=..64] at @s run playsound entity.ghast.shoot hostile @s ~ ~ ~ 2 1
execute if score @s action_time matches 45 positioned ^ ^5 ^-1.5 run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/launch_up/launch

execute if score @s action_time matches 50 run particle flame ^ ^5 ^-1.5 0 0 0 0.1 20
execute if score @s action_time matches 50 as @a[distance=..64] at @s run playsound entity.ghast.shoot hostile @s ~ ~ ~ 2 1
execute if score @s action_time matches 50 positioned ^ ^5 ^-1.5 run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/launch_up/launch

execute if entity @s[tag=angry] if score @s action_time matches 55 run particle flame ^ ^5 ^-1.5 0 0 0 0.1 20
execute if entity @s[tag=angry] if score @s action_time matches 55 as @a[distance=..64] at @s run playsound entity.ghast.shoot hostile @s ~ ~ ~ 2 1
execute if entity @s[tag=angry] if score @s action_time matches 55 positioned ^ ^5 ^-1.5 run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/launch_up/launch

execute if entity @s[tag=angry] if score @s action_time matches 60 run particle flame ^ ^5 ^-1.5 0 0 0 0.1 20
execute if entity @s[tag=angry] if score @s action_time matches 60 as @a[distance=..64] at @s run playsound entity.ghast.shoot hostile @s ~ ~ ~ 2 1
execute if entity @s[tag=angry] if score @s action_time matches 60 positioned ^ ^5 ^-1.5 run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/launch_up/launch

execute if score @s action_time matches 130.. run function anemoland_contents:sys/entity/mob/ojinushi/action/launch/end
