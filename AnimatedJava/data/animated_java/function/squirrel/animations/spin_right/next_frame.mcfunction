# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.squirrel.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'squirrel', 'function_path': 'animated_java:squirrel/animations/spin_right/next_frame'}
execute if score @s aj.spin_right.frame matches 151.. run scoreboard players set @s aj.spin_right.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.spin_right.frame
execute at @s run function animated_java:squirrel/animations/spin_right/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.spin_right.frame 1