# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.human1.root] run return 0
function #animated_java:human1/as_root/pre_tick
execute if entity @s[tag=aj.human1.animation.default.playing] run function animated_java:human1/animations/default/zzz/on_tick
execute if entity @s[tag=aj.human1.animation.walk.playing] run function animated_java:human1/animations/walk/zzz/on_tick
execute if entity @s[tag=aj.human1.animation.attack.playing] run function animated_java:human1/animations/attack/zzz/on_tick
execute if entity @s[tag=aj.human1.animation.thinking.playing] run function animated_java:human1/animations/thinking/zzz/on_tick
execute if entity @s[tag=aj.human1.animation.standing1.playing] run function animated_java:human1/animations/standing1/zzz/on_tick
execute if entity @s[tag=aj.human1.animation.keep_distance1.playing] run function animated_java:human1/animations/keep_distance1/zzz/on_tick
execute if entity @s[tag=aj.human1.animation.keep_distance_copy2.playing] run function animated_java:human1/animations/keep_distance_copy2/zzz/on_tick
execute if entity @s[tag=aj.human1.animation.attack_copy2.playing] run function animated_java:human1/animations/attack_copy2/zzz/on_tick
execute if entity @s[tag=aj.human1.animation.attack_copy3.playing] run function animated_java:human1/animations/attack_copy3/zzz/on_tick
execute if entity @s[tag=aj.human1.animation.attack1.playing] run function animated_java:human1/animations/attack1/zzz/on_tick
execute if entity @s[tag=aj.human1.animation.waiting1.playing] run function animated_java:human1/animations/waiting1/zzz/on_tick
execute if entity @s[tag=aj.human1.animation.waiting_copy2.playing] run function animated_java:human1/animations/waiting_copy2/zzz/on_tick
execute if entity @s[tag=aj.human1.animation.standing2.playing] run function animated_java:human1/animations/standing2/zzz/on_tick
execute at @s on passengers run rotate @s ~ ~
execute on vehicle run function anemoland_contents:sys/entity/mob/human1/tick/0
function #animated_java:human1/as_root/post_tick