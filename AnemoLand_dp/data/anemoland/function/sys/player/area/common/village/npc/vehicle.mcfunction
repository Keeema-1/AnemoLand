execute at @s facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
data modify storage temp:_ data.Rotation set from entity @s Rotation
execute on passengers if entity @s[tag=aj.rig_root] run data modify entity @s Rotation set from storage temp:_ data.Rotation

execute on passengers if entity @s[tag=display1] run function anemoland:sys/entity/branch/talk
