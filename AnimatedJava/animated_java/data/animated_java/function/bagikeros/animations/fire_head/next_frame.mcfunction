# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.bagikeros.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'bagikeros', 'function_path': 'animated_java:bagikeros/animations/fire_head/next_frame'}
execute if score @s aj.fire_head.frame matches 81.. run scoreboard players set @s aj.fire_head.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.fire_head.frame
execute at @s run function animated_java:bagikeros/animations/fire_head/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.fire_head.frame 1