scoreboard players reset #new_target.exist temp

execute on passengers if entity @s[type=area_effect_cloud,tag=target_recorder] on origin run scoreboard players set #new_target.exist temp 1

execute unless score #new_target.exist temp matches 1.. run function anemoland:sys/entity/common/target/change/player/nearest/0
