# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.raptor.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'raptor', 'function_path': 'animated_java:raptor/animations/pause_all'}
tag @s remove aj.raptor.animation.default.playing
tag @s remove aj.raptor.animation.die.playing
tag @s remove aj.raptor.animation.walk.playing
tag @s remove aj.raptor.animation.jump_charge.playing
tag @s remove aj.raptor.animation.jump.playing
tag @s remove aj.raptor.animation.jump_end.playing
tag @s remove aj.raptor.animation.left_jump.playing
tag @s remove aj.raptor.animation.bark.playing
tag @s remove aj.raptor.animation.right_jump.playing