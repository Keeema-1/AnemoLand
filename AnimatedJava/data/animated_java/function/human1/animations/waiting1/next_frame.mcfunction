# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.human1.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'human1', 'function_path': 'animated_java:human1/animations/waiting1/next_frame'}
execute if score @s aj.waiting1.frame matches 13.. run scoreboard players set @s aj.waiting1.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.waiting1.frame
execute at @s run function animated_java:human1/animations/waiting1/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.waiting1.frame 1