# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.bagikeros.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'bagikeros', 'function_path': 'animated_java:bagikeros/animations/shake_walk/next_frame'}
execute if score @s aj.shake_walk.frame matches 33.. run scoreboard players set @s aj.shake_walk.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.shake_walk.frame
execute at @s run function animated_java:bagikeros/animations/shake_walk/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.shake_walk.frame 1