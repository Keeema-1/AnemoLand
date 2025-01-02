
tp ~ -0.5 ~

scoreboard players set @s action_time 15

particle fishing ~ 0 ~ 0 0 0 0.05 50
particle bubble ~ 0 ~ 0.2 0.2 0.2 0.05 10
# playsound entity.fishing_bobber.splash master @a ~ ~ ~ 2 1
# execute as @p[tag=player_check] at @s run playsound minecraft:entity.generic.swim master @s ~ ~ ~ 0.3 1.5
execute as @p[tag=player_check] at @s run playsound minecraft:entity.fishing_bobber.splash master @a ~ ~ ~ 1 1
