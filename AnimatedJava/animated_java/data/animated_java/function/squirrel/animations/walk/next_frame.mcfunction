# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.squirrel.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'squirrel', 'function_path': 'animated_java:squirrel/animations/walk/next_frame'}
execute if score @s aj.walk.frame matches 25.. run scoreboard players set @s aj.walk.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.walk.frame
execute at @s run function animated_java:squirrel/animations/walk/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.walk.frame 1