# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.boar.root] run return 0
function #animated_java:boar/as_root/pre_tick
execute if entity @s[tag=aj.boar.animation.default.playing] run function animated_java:boar/animations/default/zzz/on_tick
execute if entity @s[tag=aj.boar.animation.walk.playing] run function animated_java:boar/animations/walk/zzz/on_tick
execute if entity @s[tag=aj.boar.animation.run.playing] run function animated_java:boar/animations/run/zzz/on_tick
execute if entity @s[tag=aj.boar.animation.brake.playing] run function animated_java:boar/animations/brake/zzz/on_tick
execute if entity @s[tag=aj.boar.animation.die.playing] run function animated_java:boar/animations/die/zzz/on_tick
execute if entity @s[tag=aj.boar.animation.large_default.playing] run function animated_java:boar/animations/large_default/zzz/on_tick
execute if entity @s[tag=aj.boar.animation.large_walk.playing] run function animated_java:boar/animations/large_walk/zzz/on_tick
execute if entity @s[tag=aj.boar.animation.large_run.playing] run function animated_java:boar/animations/large_run/zzz/on_tick
execute if entity @s[tag=aj.boar.animation.large_brake.playing] run function animated_java:boar/animations/large_brake/zzz/on_tick
execute if entity @s[tag=aj.boar.animation.large_dive.playing] run function animated_java:boar/animations/large_dive/zzz/on_tick
execute if entity @s[tag=aj.boar.animation.large_bark.playing] run function animated_java:boar/animations/large_bark/zzz/on_tick
execute if entity @s[tag=aj.boar.animation.large_die.playing] run function animated_java:boar/animations/large_die/zzz/on_tick
execute on passengers if entity @s[tag=aj.boar.data] run function animated_java:boar/root/zzz/0
execute at @s on passengers run rotate @s ~ ~
execute on vehicle if entity @s[tag=boar] run function anemoland_contents:sys/entity/mob/boar/tick/0
execute on vehicle if entity @s[tag=king_boar] run function anemoland_contents:sys/entity/mob/king_boar/tick/0
function #animated_java:boar/as_root/post_tick