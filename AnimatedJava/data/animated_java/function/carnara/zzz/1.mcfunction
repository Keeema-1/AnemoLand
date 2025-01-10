# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.data_data set from storage aj:uuid main.out
summon minecraft:pig ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.carnara.locator', 'aj.carnara.locator.tail1']}
execute as @e[type=minecraft:pig,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:carnara/zzz/2
data modify entity @s data.locators.tail1.uuid set from storage aj:uuid main.out
summon minecraft:pig ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.carnara.locator', 'aj.carnara.locator.tail2']}
execute as @e[type=minecraft:pig,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:carnara/zzz/3
data modify entity @s data.locators.tail2.uuid set from storage aj:uuid main.out
summon minecraft:pig ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.carnara.locator', 'aj.carnara.locator.tail3']}
execute as @e[type=minecraft:pig,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:carnara/zzz/4
data modify entity @s data.locators.tail3.uuid set from storage aj:uuid main.out
summon minecraft:pig ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.carnara.locator', 'aj.carnara.locator.body2']}
execute as @e[type=minecraft:pig,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:carnara/zzz/5
data modify entity @s data.locators.body2.uuid set from storage aj:uuid main.out
summon minecraft:pig ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.carnara.locator', 'aj.carnara.locator.body3']}
execute as @e[type=minecraft:pig,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:carnara/zzz/6
data modify entity @s data.locators.body3.uuid set from storage aj:uuid main.out
summon minecraft:pig ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.carnara.locator', 'aj.carnara.locator.neck1']}
execute as @e[type=minecraft:pig,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:carnara/zzz/7
data modify entity @s data.locators.neck1.uuid set from storage aj:uuid main.out
summon minecraft:pig ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.carnara.locator', 'aj.carnara.locator.neck2']}
execute as @e[type=minecraft:pig,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:carnara/zzz/8
data modify entity @s data.locators.neck2.uuid set from storage aj:uuid main.out
summon minecraft:pig ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.carnara.locator', 'aj.carnara.locator.head']}
execute as @e[type=minecraft:pig,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:carnara/zzz/9
data modify entity @s data.locators.head.uuid set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.right_leg3] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg3 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.right_leg2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.right_leg1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.left_leg3] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg3 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.left_leg2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.left_leg1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.tail3] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_tail3 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.tail2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_tail2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.tail1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_tail1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.left_arm3] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_arm3 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.left_arm2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_arm2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.left_arm1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_arm1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.right_arm3] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_arm3 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.right_arm2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_arm2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.right_arm1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_arm1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.beam] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_beam set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.right_jaw] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_jaw set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.left_jaw] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_jaw set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.jaw] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_jaw set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.head] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_head set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.neck2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_neck2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.neck1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_neck1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.body3] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_body3 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.body2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_body2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.carnara.bone.body1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_body1 set from storage aj:uuid main.out