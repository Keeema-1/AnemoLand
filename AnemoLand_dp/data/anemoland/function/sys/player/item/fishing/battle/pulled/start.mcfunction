scoreboard players set @s action0 1
scoreboard players set @s action1 0
execute if predicate anemoland:random_chance/0_2 run scoreboard players set @s action1 1
execute if score @s action1 matches 1 if predicate anemoland:random_chance/0_5 run scoreboard players set @s action1 2

execute if score @s level matches 1 if score @s action1 matches 0 store result score @s action_time run random value 10..100
execute if score @s level matches 2 if score @s action1 matches 0 store result score @s action_time run random value 10..80
execute unless score @s action1 matches 0 store result score @s action_time run random value 10..40
tp @s ~ -0.5 ~
# execute on passengers run data modify entity @s block_state.Name set value "red_concrete"
# execute on passengers run data merge entity @s {block_state:{Name:"red_concrete"},glow_color_override:16711680,Glowing:1b}
# execute on passengers run data merge entity @s {glow_color_override:16711680,Glowing:1b}
