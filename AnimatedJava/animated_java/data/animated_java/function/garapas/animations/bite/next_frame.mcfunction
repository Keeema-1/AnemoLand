# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.garapas.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'garapas', 'function_path': 'animated_java:garapas/animations/bite/next_frame'}
execute if score @s aj.bite.frame matches 111.. run scoreboard players set @s aj.bite.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.bite.frame
execute at @s run function animated_java:garapas/animations/bite/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.bite.frame 1