data remove entity @s attack
data remove entity @s interaction

execute on vehicle run function anemoland:sys/player/area/common/village/npc/vehicle
execute facing entity @p feet rotated ~ 0 run rotate @s ~ ~
