# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.mushroom_fang.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'mushroom_fang', 'function_path': 'animated_java:mushroom_fang/animations/default/next_frame'}
execute if score @s aj.default.frame matches 101.. run scoreboard players set @s aj.default.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.default.frame
execute at @s run function animated_java:mushroom_fang/animations/default/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.default.frame 1