# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.muscleroom.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'muscleroom', 'function_path': 'animated_java:muscleroom/animations/jump/play'}
tag @s add aj.muscleroom.animation.jump.playing
scoreboard players set @s aj.jump.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:muscleroom/animations/jump/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only