tag @s add variant.ice
data modify entity @s CustomName set value '{"translate":"anemoland.mob.martellos.ice.name"}'
execute if data storage temp:_ data.new_entity{"summon_type":"enemy"} on passengers if entity @s[tag=display1] run data merge entity @s {text:'[{"translate":"anemoland.mob.martellos.ice.name"},{"text":" Lv."},{"score":{"objective":"temp","name":"#new_entity.level"}}]'}
execute if data storage temp:_ data.new_entity{"summon_type":"pet"} on passengers if entity @s[tag=display1] run data merge entity @s {text:'[{"translate":"anemoland.mob.martellos.ice.name","color": "aqua"}]'}
execute if data storage temp:_ data.new_entity{"summon_type":"player_side"} on passengers if entity @s[tag=display1] run data merge entity @s {text:'[{"translate":"anemoland.mob.martellos.ice.name","color": "aqua"},{"text":" Lv."},{"score":{"objective":"temp","name":"#new_entity.level"}}]'}
