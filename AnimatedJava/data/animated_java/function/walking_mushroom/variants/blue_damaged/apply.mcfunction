# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.walking_mushroom.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'walking_mushroom', 'function_path': 'animated_java:walking_mushroom/variants/blue_damaged/apply'}
execute on passengers if entity @s[tag=aj.walking_mushroom.bone.right_leg] run function animated_java:walking_mushroom/variants/blue_damaged/zzz/0
execute on passengers if entity @s[tag=aj.walking_mushroom.bone.left_leg] run function animated_java:walking_mushroom/variants/blue_damaged/zzz/1
execute on passengers if entity @s[tag=aj.walking_mushroom.bone.body] run function animated_java:walking_mushroom/variants/blue_damaged/zzz/2