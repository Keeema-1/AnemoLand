# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.data_data set from storage aj:uuid main.out
summon minecraft:pig ~ ~ ~ {Tags:['aj.new', 'aj.global.locator', 'aj.ojinushi.locator', 'aj.ojinushi.locator']}
execute as @e[type=minecraft:pig,tag=aj.new,tag=aj.global.locator,limit=1,distance=..0.01] run function animated_java:ojinushi/zzz/2
data modify entity @s data.locators.hitbox_right_arm.uuid set from storage aj:uuid main.out
summon minecraft:pig ~ ~ ~ {Tags:['aj.new', 'aj.global.locator', 'aj.ojinushi.locator', 'aj.ojinushi.locator']}
execute as @e[type=minecraft:pig,tag=aj.new,tag=aj.global.locator,limit=1,distance=..0.01] run function animated_java:ojinushi/zzz/3
data modify entity @s data.locators.hitbox_head.uuid set from storage aj:uuid main.out
summon minecraft:pig ~ ~ ~ {Tags:['aj.new', 'aj.global.locator', 'aj.ojinushi.locator', 'aj.ojinushi.locator']}
execute as @e[type=minecraft:pig,tag=aj.new,tag=aj.global.locator,limit=1,distance=..0.01] run function animated_java:ojinushi/zzz/4
data modify entity @s data.locators.hitbox_left_arm.uuid set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.right_leg4] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg4 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.right_leg3] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg3 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.right_leg2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.right_leg1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.right_arm2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_arm2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.right_arm1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_arm1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.jaw] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_jaw set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.head] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_head set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.neck] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_neck set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.left_arm2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_arm2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.left_arm1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_arm1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.body3] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_body3 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.body2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_body2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.left_leg4] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg4 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.left_leg3] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg3 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.left_leg2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.left_leg1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.tail] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_tail set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.ojinushi.node.body1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_body1 set from storage aj:uuid main.out