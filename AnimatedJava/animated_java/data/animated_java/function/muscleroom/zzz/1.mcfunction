# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.data_data set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.muscleroom.node.head] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_head set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.muscleroom.node.left_arm2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_arm2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.muscleroom.node.left_arm1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_arm1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.muscleroom.node.right_arm2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_arm2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.muscleroom.node.right_arm1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_arm1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.muscleroom.node.body3] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_body3 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.muscleroom.node.body2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_body2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.muscleroom.node.left_leg3] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg3 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.muscleroom.node.left_leg2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.muscleroom.node.left_leg1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.muscleroom.node.right_leg3] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg3 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.muscleroom.node.right_leg2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.muscleroom.node.right_leg1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.muscleroom.node.body1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_body1 set from storage aj:uuid main.out