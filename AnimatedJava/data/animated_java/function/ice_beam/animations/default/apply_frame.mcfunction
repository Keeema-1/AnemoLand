# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.ice_beam.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'ice_beam', 'function_path': 'animated_java:ice_beam/animations/default/apply_frame'}
$execute store result storage aj:temp frame int 1 run scoreboard players set @s aj.default.frame $(frame)
execute at @s run function animated_java:ice_beam/animations/default/zzz/apply_frame with storage aj:temp