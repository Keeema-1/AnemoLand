# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.martellos.root] run return 0
function #animated_java:martellos/as_root/pre_tick
execute if entity @s[tag=aj.martellos.animation.default.playing] run function animated_java:martellos/animations/default/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.bark.playing] run function animated_java:martellos/animations/bark/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.walk.playing] run function animated_java:martellos/animations/walk/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.turn_right.playing] run function animated_java:martellos/animations/turn_right/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.turn_left.playing] run function animated_java:martellos/animations/turn_left/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.die.playing] run function animated_java:martellos/animations/die/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.tired.playing] run function animated_java:martellos/animations/tired/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.dash_charge.playing] run function animated_java:martellos/animations/dash_charge/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.dash.playing] run function animated_java:martellos/animations/dash/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.dash_end.playing] run function animated_java:martellos/animations/dash_end/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.knock_right1.playing] run function animated_java:martellos/animations/knock_right1/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.knock_left1.playing] run function animated_java:martellos/animations/knock_left1/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.knock_left2.playing] run function animated_java:martellos/animations/knock_left2/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.spin_right1.playing] run function animated_java:martellos/animations/spin_right1/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.spin_right2.playing] run function animated_java:martellos/animations/spin_right2/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.spin_dirt_right1.playing] run function animated_java:martellos/animations/spin_dirt_right1/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.spin_dirt_right2.playing] run function animated_java:martellos/animations/spin_dirt_right2/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.tail_right1.playing] run function animated_java:martellos/animations/tail_right1/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.backstep.playing] run function animated_java:martellos/animations/backstep/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.backstep2.playing] run function animated_java:martellos/animations/backstep2/zzz/on_tick
execute if entity @s[tag=aj.martellos.animation.knock_right2.playing] run function animated_java:martellos/animations/knock_right2/zzz/on_tick
execute on passengers if entity @s[tag=aj.martellos.data] run function animated_java:martellos/root/zzz/0
execute at @s on passengers run rotate @s ~ ~
execute on vehicle run function anemoland_contents:sys/entity/mob/martellos/tick/0
function #animated_java:martellos/as_root/post_tick