# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.boar.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'boar', 'function_path': 'animated_java:boar/animations/pause_all'}
tag @s remove aj.boar.animation.default.playing
tag @s remove aj.boar.animation.walk.playing
tag @s remove aj.boar.animation.run.playing
tag @s remove aj.boar.animation.brake.playing
tag @s remove aj.boar.animation.die.playing
tag @s remove aj.boar.animation.large_default.playing
tag @s remove aj.boar.animation.large_walk.playing
tag @s remove aj.boar.animation.large_run.playing
tag @s remove aj.boar.animation.large_brake.playing
tag @s remove aj.boar.animation.large_dive.playing
tag @s remove aj.boar.animation.large_bark.playing
tag @s remove aj.boar.animation.large_die.playing