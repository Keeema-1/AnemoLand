# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.data_data set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.human1.node.head] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_head set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.human1.node.left_arm2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_arm2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.human1.node.left_arm] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_arm set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.human1.node.weapon] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.item_display_weapon set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.human1.node.right_arm2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_arm2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.human1.node.right_arm] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_arm set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.human1.node.right_leg] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.human1.node.left_leg] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.human1.node.body] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_body set from storage aj:uuid main.out