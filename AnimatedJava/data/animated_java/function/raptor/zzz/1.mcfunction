# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.data_data set from storage aj:uuid main.out
summon minecraft:slime ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.raptor.locator', 'aj.raptor.locator.head']}
execute as @e[type=minecraft:slime,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:raptor/zzz/2
data modify entity @s data.locators.head.uuid set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.raptor.bone.left_leg3] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg3 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.raptor.bone.left_leg2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.raptor.bone.left_leg1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.raptor.bone.right_leg3] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg3 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.raptor.bone.right_leg2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.raptor.bone.right_leg1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.raptor.bone.left_arm2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_arm2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.raptor.bone.left_arm1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_arm1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.raptor.bone.right_arm2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_arm2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.raptor.bone.right_arm1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_arm1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.raptor.bone.jaw] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_jaw set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.raptor.bone.head] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_head set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.raptor.bone.neck] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_neck set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.raptor.bone.front_body] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_front_body set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.raptor.bone.tail] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_tail set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.raptor.bone.body] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_body set from storage aj:uuid main.out