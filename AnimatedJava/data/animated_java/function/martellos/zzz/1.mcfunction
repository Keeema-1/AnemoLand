# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.data_data set from storage aj:uuid main.out
summon minecraft:pig ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.martellos.locator', 'aj.martellos.locator.head']}
execute as @e[type=minecraft:pig,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:martellos/zzz/2
data modify entity @s data.locators.head.uuid set from storage aj:uuid main.out
summon minecraft:pig ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.martellos.locator', 'aj.martellos.locator.neck']}
execute as @e[type=minecraft:pig,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:martellos/zzz/3
data modify entity @s data.locators.neck.uuid set from storage aj:uuid main.out
summon minecraft:cow ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.martellos.locator', 'aj.martellos.locator.right_arm']}
execute as @e[type=minecraft:cow,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:martellos/zzz/4
data modify entity @s data.locators.right_arm.uuid set from storage aj:uuid main.out
summon minecraft:cow ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.martellos.locator', 'aj.martellos.locator.left_arm']}
execute as @e[type=minecraft:cow,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:martellos/zzz/5
data modify entity @s data.locators.left_arm.uuid set from storage aj:uuid main.out
summon minecraft:pig ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.martellos.locator', 'aj.martellos.locator.tail1']}
execute as @e[type=minecraft:pig,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:martellos/zzz/6
data modify entity @s data.locators.tail1.uuid set from storage aj:uuid main.out
summon minecraft:cow ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.martellos.locator', 'aj.martellos.locator.tail2']}
execute as @e[type=minecraft:cow,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:martellos/zzz/7
data modify entity @s data.locators.tail2.uuid set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.martellos.bone.jaw] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_jaw set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.martellos.bone.head] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_head set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.martellos.bone.neck] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_neck set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.martellos.bone.right_arm2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_arm2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.martellos.bone.right_arm1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_arm1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.martellos.bone.left_arm2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_arm2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.martellos.bone.left_arm1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_arm1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.martellos.bone.body2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_body2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.martellos.bone.right_leg2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.martellos.bone.right_leg1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.martellos.bone.left_leg2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.martellos.bone.left_leg1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.martellos.bone.tail3] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_tail3 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.martellos.bone.tail2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_tail2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.martellos.bone.tail1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_tail1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.martellos.bone.body1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_body1 set from storage aj:uuid main.out