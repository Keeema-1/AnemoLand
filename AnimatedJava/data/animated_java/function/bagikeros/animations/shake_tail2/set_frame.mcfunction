# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.bagikeros.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'bagikeros', 'function_path': 'animated_java:bagikeros/animations/shake_tail2/set_frame'}
$execute store result storage aj:temp frame int 1 run scoreboard players set @s aj.shake_tail2.frame $(frame)
execute at @s run function animated_java:bagikeros/animations/shake_tail2/zzz/set_frame with storage aj:temp