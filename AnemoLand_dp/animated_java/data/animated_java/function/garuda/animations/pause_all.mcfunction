# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.garuda.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'garuda', 'function_path': 'animated_java:garuda/animations/pause_all'}
tag @s remove aj.garuda.animation.default.playing
tag @s remove aj.garuda.animation.die.playing
tag @s remove aj.garuda.animation.walk.playing
tag @s remove aj.garuda.animation.bark.playing
tag @s remove aj.garuda.animation.tired.playing
tag @s remove aj.garuda.animation.pick1.playing
tag @s remove aj.garuda.animation.pick2.playing
tag @s remove aj.garuda.animation.wing_right1.playing
tag @s remove aj.garuda.animation.wing_right2.playing