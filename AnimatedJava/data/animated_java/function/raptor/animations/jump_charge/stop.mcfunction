# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.raptor.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'raptor', 'function_path': 'animated_java:raptor/animations/jump_charge/stop'}
tag @s remove aj.raptor.animation.jump_charge.playing
scoreboard players set @s aj.jump_charge.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:raptor/animations/jump_charge/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only