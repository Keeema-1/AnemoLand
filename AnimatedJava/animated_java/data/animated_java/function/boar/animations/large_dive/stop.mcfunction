# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.boar.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'boar', 'function_path': 'animated_java:boar/animations/large_dive/stop'}
tag @s remove aj.boar.animation.large_dive.playing
scoreboard players set @s aj.large_dive.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:boar/animations/large_dive/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only