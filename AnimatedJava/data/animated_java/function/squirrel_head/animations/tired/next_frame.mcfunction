# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.squirrel_head.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'squirrel_head', 'function_path': 'animated_java:squirrel_head/animations/tired/next_frame'}
execute if score @s aj.tired.frame matches 81.. run scoreboard players set @s aj.tired.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.tired.frame
execute at @s run function animated_java:squirrel_head/animations/tired/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.tired.frame 1