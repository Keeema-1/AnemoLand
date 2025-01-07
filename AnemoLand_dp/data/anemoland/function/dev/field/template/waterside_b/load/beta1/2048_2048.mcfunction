execute positioned 2048 0 2048 unless entity @s[distance=..32] run return run tp ~ ~ ~
execute positioned 1952 -8 1952 run place template anemoland:field/waterside_b/0_0
execute positioned 1952 -1 1952 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1952 -8 2000 run place template anemoland:field/waterside_b/0_1
execute positioned 1952 -1 2000 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1952 -8 2048 run place template anemoland:field/waterside_b/0_2
execute positioned 1952 -1 2048 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1952 -8 2096 run place template anemoland:field/waterside_b/0_3
execute positioned 1952 -1 2096 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 2000 -8 1952 run place template anemoland:field/waterside_b/1_0
execute positioned 2000 -1 1952 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 2000 -8 2000 run place template anemoland:field/waterside_b/1_1
execute positioned 2000 -1 2000 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 2000 -8 2048 run place template anemoland:field/waterside_b/1_2
execute positioned 2000 -1 2048 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 2000 -8 2096 run place template anemoland:field/waterside_b/1_3
execute positioned 2000 -1 2096 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 2048 -8 1952 run place template anemoland:field/waterside_b/2_0
execute positioned 2048 -1 1952 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 2048 -8 2000 run place template anemoland:field/waterside_b/2_1
execute positioned 2048 -1 2000 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 2048 -8 2048 run place template anemoland:field/waterside_b/2_2
execute positioned 2048 -1 2048 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 2048 -8 2096 run place template anemoland:field/waterside_b/2_3
execute positioned 2048 -1 2096 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 2096 -8 1952 run place template anemoland:field/waterside_b/3_0
execute positioned 2096 -1 1952 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 2096 -8 2000 run place template anemoland:field/waterside_b/3_1
execute positioned 2096 -1 2000 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 2096 -8 2048 run place template anemoland:field/waterside_b/3_2
execute positioned 2096 -1 2048 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 2096 -8 2096 run place template anemoland:field/waterside_b/3_3
execute positioned 2096 -1 2096 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 2048.0 0 2048.0 run kill @e[tag=area_entrance,distance=..64]
execute positioned 2046.0 0.0 2096.0 run function anemoland:dev/field/common/area_entrance/x
tp 2048 0 2048
