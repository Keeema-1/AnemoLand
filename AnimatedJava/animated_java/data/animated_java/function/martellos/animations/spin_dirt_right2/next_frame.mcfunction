# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.martellos.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'martellos', 'function_path': 'animated_java:martellos/animations/spin_dirt_right2/next_frame'}
execute if score @s aj.spin_dirt_right2.frame matches 121.. run scoreboard players set @s aj.spin_dirt_right2.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.spin_dirt_right2.frame
execute at @s run function animated_java:martellos/animations/spin_dirt_right2/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.spin_dirt_right2.frame 1