execute store result score #temp temp run random value 1..4
execute if score #temp temp matches 1 on passengers if entity @s[tag=chat_display] run data modify entity @s text set value '{"translate":"anemoland.character.boy1.talk.general.clear.1"}'
execute if score #temp temp matches 2 on passengers if entity @s[tag=chat_display] run data modify entity @s text set value '{"translate":"anemoland.character.boy1.talk.general.clear.2"}'
execute if score #temp temp matches 3 on passengers if entity @s[tag=chat_display] run data modify entity @s text set value '{"translate":"anemoland.character.boy1.talk.general.clear.3"}'
execute if score #temp temp matches 4 on passengers if entity @s[tag=chat_display] run data modify entity @s text set value '{"translate":"anemoland.character.boy1.talk.general.clear.4"}'
