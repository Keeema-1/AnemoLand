# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.boar.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'boar', 'function_path': 'animated_java:boar/animations/brake/next_frame'}
execute if score @s aj.brake.frame matches 2.. run scoreboard players set @s aj.brake.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.brake.frame
execute at @s run function animated_java:boar/animations/brake/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.brake.frame 1