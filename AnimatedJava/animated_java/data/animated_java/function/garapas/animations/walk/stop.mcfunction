# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.garapas.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'garapas', 'function_path': 'animated_java:garapas/animations/walk/stop'}
tag @s remove aj.garapas.animation.walk.playing
scoreboard players set @s aj.walk.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:garapas/animations/walk/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only