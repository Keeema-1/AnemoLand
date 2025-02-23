scoreboard players set @s action1 1
scoreboard players set @s action_time 0

execute on passengers if entity @s[tag=aj.global.root] run function animated_java:garuda/animations/dash2/tween {to_frame: 0, duration: 5}

# execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 1 0
