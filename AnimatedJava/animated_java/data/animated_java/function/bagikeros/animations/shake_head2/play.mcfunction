# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.bagikeros.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'bagikeros', 'function_path': 'animated_java:bagikeros/animations/shake_head2/play'}
tag @s add aj.bagikeros.animation.shake_head2.playing
scoreboard players set @s aj.shake_head2.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:bagikeros/animations/shake_head2/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only