# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.carnara.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'carnara', 'function_path': 'animated_java:carnara/animations/beam2_left/stop'}
tag @s remove aj.carnara.animation.beam2_left.playing
scoreboard players set @s aj.beam2_left.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:carnara/animations/beam2_left/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only