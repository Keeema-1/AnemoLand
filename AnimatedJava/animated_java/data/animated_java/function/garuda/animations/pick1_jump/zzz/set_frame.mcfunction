# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
$execute on passengers if entity @s[type=marker] run function animated_java:garuda/animations/pick1_jump/zzz/frames/$(frame) with entity @s data.bones
execute on passengers run data modify entity @s[type=!marker] start_interpolation set value -1