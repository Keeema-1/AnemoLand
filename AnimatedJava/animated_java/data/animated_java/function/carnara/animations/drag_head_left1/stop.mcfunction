# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.carnara.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'carnara', 'function_path': 'animated_java:carnara/animations/drag_head_left1/stop'}
tag @s remove aj.carnara.animation.drag_head_left1.playing
scoreboard players set @s aj.drag_head_left1.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:carnara/animations/drag_head_left1/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only