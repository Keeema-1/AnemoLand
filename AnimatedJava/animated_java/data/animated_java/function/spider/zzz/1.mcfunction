# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.data_data set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.spider.node.right_leg_b] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg_b set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.spider.node.left_leg_b] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg_b set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.spider.node.right_leg_a] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg_a set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.spider.node.left_leg_a] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg_a set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.spider.node.head] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_head set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.spider.node.body1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_body1 set from storage aj:uuid main.out