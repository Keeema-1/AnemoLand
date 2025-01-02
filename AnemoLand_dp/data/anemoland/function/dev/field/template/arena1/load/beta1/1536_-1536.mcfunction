execute positioned 1488 -8 -1584 run place template anemoland:field/arena1/0_0
execute positioned 1488 -1 -1584 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1488 -8 -1536 run place template anemoland:field/arena1/0_1
execute positioned 1488 -1 -1536 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1536 -8 -1584 run place template anemoland:field/arena1/1_0
execute positioned 1536 -1 -1584 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1536 -8 -1536 run place template anemoland:field/arena1/1_1
execute positioned 1536 -1 -1536 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1536.0 0 -1536.0 run kill @e[tag=area_entrance,distance=..64]
execute positioned 1536.0 0.0 -1495.5 run function anemoland:dev/field/common/area_entrance/x
