# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.martellos.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'martellos', 'function_path': 'animated_java:martellos/animations/spin_right1/stop'}
tag @s remove aj.martellos.animation.spin_right1.playing
scoreboard players set @s aj.spin_right1.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:martellos/animations/spin_right1/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only