# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.squirrel_head.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'squirrel_head', 'function_path': 'animated_java:squirrel_head/animations/spin_right2/apply_frame'}
$execute store result storage aj:temp frame int 1 run scoreboard players set @s aj.spin_right2.frame $(frame)
execute at @s run function animated_java:squirrel_head/animations/spin_right2/zzz/apply_frame with storage aj:temp