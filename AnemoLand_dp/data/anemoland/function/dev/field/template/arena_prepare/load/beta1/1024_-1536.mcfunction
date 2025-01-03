execute positioned 1000 -8 -1560 run place template anemoland:field/arena_prepare/0_0
execute positioned 1000 -1 -1560 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1024.0 0 -1536.0 run kill @e[tag=area_entrance,distance=..64]
execute positioned 1024.0 0.0 -1528.0 run function anemoland:dev/field/common/area_entrance/x
