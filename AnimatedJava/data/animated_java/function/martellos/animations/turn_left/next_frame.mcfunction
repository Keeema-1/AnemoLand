# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.martellos.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'martellos', 'function_path': 'animated_java:martellos/animations/turn_left/next_frame'}
execute if score @s aj.turn_left.frame matches 29.. run scoreboard players set @s aj.turn_left.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.turn_left.frame
execute at @s run function animated_java:martellos/animations/turn_left/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.turn_left.frame 1