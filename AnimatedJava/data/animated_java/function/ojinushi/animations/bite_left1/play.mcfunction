# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.ojinushi.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'ojinushi', 'function_path': 'animated_java:ojinushi/animations/bite_left1/play'}
tag @s add aj.ojinushi.animation.bite_left1.playing
scoreboard players set @s aj.bite_left1.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:ojinushi/animations/bite_left1/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only