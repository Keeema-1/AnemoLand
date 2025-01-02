scoreboard players set @s action0 0
scoreboard players set @s action1 0
execute if predicate anemoland:random_chance/0_2 run scoreboard players set @s action1 1
execute if score @s action1 matches 1 if predicate anemoland:random_chance/0_5 run scoreboard players set @s action1 2

execute if score @s action1 matches 0 store result score @s action_time run random value 10..100
execute unless score @s action1 matches 0 store result score @s action_time run random value 10..40
tp @s ~ -0.1 ~
execute on passengers run data merge entity @s {Glowing:0b}
