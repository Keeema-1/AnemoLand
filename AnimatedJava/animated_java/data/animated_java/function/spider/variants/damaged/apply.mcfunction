# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.spider.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'spider', 'function_path': 'animated_java:spider/variants/damaged/apply'}
execute on passengers if entity @s[tag=aj.spider.bone.right_leg_b] run function animated_java:spider/variants/damaged/zzz/0
execute on passengers if entity @s[tag=aj.spider.bone.left_leg_b] run function animated_java:spider/variants/damaged/zzz/1
execute on passengers if entity @s[tag=aj.spider.bone.right_leg_a] run function animated_java:spider/variants/damaged/zzz/2
execute on passengers if entity @s[tag=aj.spider.bone.left_leg_a] run function animated_java:spider/variants/damaged/zzz/3
execute on passengers if entity @s[tag=aj.spider.bone.head] run function animated_java:spider/variants/damaged/zzz/4
execute on passengers if entity @s[tag=aj.spider.bone.body1] run function animated_java:spider/variants/damaged/zzz/5