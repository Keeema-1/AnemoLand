# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.walking_mushroom.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'walking_mushroom', 'function_path': 'animated_java:walking_mushroom/animations/attack/play'}
tag @s add aj.walking_mushroom.animation.attack.playing
scoreboard players set @s aj.attack.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:walking_mushroom/animations/attack/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only