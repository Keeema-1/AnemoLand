# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.garuda.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'garuda', 'function_path': 'animated_java:garuda/animations/jump3/stop'}
tag @s remove aj.garuda.animation.jump3.playing
scoreboard players set @s aj.jump3.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:garuda/animations/jump3/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only