# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.ojinushi.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'ojinushi', 'function_path': 'animated_java:ojinushi/animations/bite_right/stop'}
tag @s remove aj.ojinushi.animation.bite_right.playing
scoreboard players set @s aj.bite_right.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:ojinushi/animations/bite_right/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only