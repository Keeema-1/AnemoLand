# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.squirrel.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'squirrel', 'function_path': 'animated_java:squirrel/apply_default_pose'}
execute on passengers if entity @s[tag=aj.squirrel.bone.right_leg] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-0.18749999999999997f,0f,1f,0f,0.4375f,-1.2246467991473532e-16f,0f,-1f,-0.18750000000000003f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.squirrel.bone.left_leg] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0.18750000000000003f,0f,1f,0f,0.4375f,-1.2246467991473532e-16f,0f,-1f,-0.1875f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.squirrel.bone.tail1] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,6.888638245203862e-17f,0f,1f,0f,0.640625f,-1.2246467991473532e-16f,0f,-1f,-0.5625f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.squirrel.bone.jaw] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-1.4279404640185623e-16f,0f,1f,0f,0.4980275f,-1.2246467991473532e-16f,0f,-1f,1.166001875f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.squirrel.bone.head1] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-1.0821093927903432e-16f,0f,1f,0f,0.53125f,-1.2246467991473532e-16f,0f,-1f,0.883609375f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.squirrel.bone.neck1] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-6.345201228082223e-17f,0f,1f,0f,0.546875f,-1.2246467991473532e-16f,0f,-1f,0.518125f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.squirrel.bone.front_body] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-7.654042494670959e-18f,0f,1f,0f,0.515625f,-1.2246467991473532e-16f,0f,-1f,0.0625f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.squirrel.bone.back_body] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,5.35782974626967e-17f,0f,1f,0f,0.5f,-1.2246467991473532e-16f,0f,-1f,-0.4375f,0f,0f,0f,1f], start_interpolation: 0}