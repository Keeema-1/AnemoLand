# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.data_data set from storage aj:uuid main.out
summon minecraft:pig ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.squirrel.locator', 'aj.squirrel.locator.tail']}
execute as @e[type=minecraft:pig,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:squirrel/zzz/2
data modify entity @s data.locators.tail.uuid set from storage aj:uuid main.out
summon minecraft:pig ~ ~ ~ {Tags:['aj.new', 'aj.locator', 'aj.squirrel.locator', 'aj.squirrel.locator.head']}
execute as @e[type=minecraft:pig,tag=aj.new,tag=aj.locator,limit=1,distance=..0.01] run function animated_java:squirrel/zzz/3
data modify entity @s data.locators.head.uuid set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.squirrel.bone.right_leg] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_leg set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.squirrel.bone.left_leg] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_leg set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.squirrel.bone.tail] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_tail set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.squirrel.bone.jaw] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_jaw set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.squirrel.bone.head] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_head set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.squirrel.bone.neck1] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_neck1 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.squirrel.bone.front_body] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_front_body set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.squirrel.bone.back_body] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_back_body set from storage aj:uuid main.out