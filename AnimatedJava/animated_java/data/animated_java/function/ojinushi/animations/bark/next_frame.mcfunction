# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.ojinushi.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'ojinushi', 'function_path': 'animated_java:ojinushi/animations/bark/next_frame'}
execute if score @s aj.bark.frame matches 121.. run scoreboard players set @s aj.bark.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.bark.frame
execute at @s run function animated_java:ojinushi/animations/bark/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.bark.frame 1