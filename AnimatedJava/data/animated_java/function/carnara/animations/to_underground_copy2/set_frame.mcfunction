# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.carnara.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'carnara', 'function_path': 'animated_java:carnara/animations/to_underground_copy2/set_frame'}
$execute store result storage aj:temp frame int 1 run scoreboard players set @s aj.to_underground_copy2.frame $(frame)
execute at @s run function animated_java:carnara/animations/to_underground_copy2/zzz/set_frame with storage aj:temp