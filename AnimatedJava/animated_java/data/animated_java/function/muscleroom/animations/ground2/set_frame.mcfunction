# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.muscleroom.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'muscleroom', 'function_path': 'animated_java:muscleroom/animations/ground2/set_frame'}
$execute store result storage aj:temp frame int 1 run scoreboard players set @s aj.ground2.frame $(frame)
execute at @s run function animated_java:muscleroom/animations/ground2/zzz/set_frame with storage aj:temp