# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.garuda.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'garuda', 'function_path': 'animated_java:garuda/animations/fly_keep/next_frame'}
execute if score @s aj.fly_keep.frame matches 71.. run scoreboard players set @s aj.fly_keep.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.fly_keep.frame
execute at @s run function animated_java:garuda/animations/fly_keep/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.fly_keep.frame 1