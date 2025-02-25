execute as @e[type=item_display,tag=aj.human1.item_display.weapon,distance=..8,sort=nearest,limit=1] run data modify entity @s item set value {id: "iron_sword",count:1}
tag @s add variant.boy1
data modify entity @s CustomName set value '{"translate":"anemoland.mob.human1.boy1.name"}'
execute if data storage temp:_ data.new_entity{"summon_type":"enemy"} on passengers if entity @s[tag=display1] run data merge entity @s {text:'[{"translate":"anemoland.mob.human1.boy1.name"},{"text":" Lv."},{"score":{"objective":"temp","name":"#new_entity.level"}}]'}
execute if data storage temp:_ data.new_entity{"summon_type":"pet"} on passengers if entity @s[tag=display1] run data merge entity @s {text:'[{"translate":"anemoland.mob.human1.boy1.name","color": "aqua"}]'}
execute if data storage temp:_ data.new_entity{"summon_type":"player_side"} on passengers if entity @s[tag=display1] run data merge entity @s {text:'[{"translate":"anemoland.mob.human1.boy1.name","color": "aqua"},{"text":" Lv."},{"score":{"objective":"temp","name":"#new_entity.level"}}]'}
