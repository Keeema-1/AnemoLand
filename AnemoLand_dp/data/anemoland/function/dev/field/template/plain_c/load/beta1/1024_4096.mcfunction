execute positioned 1024 0 4096 unless entity @s[distance=..32] run return run tp ~ ~ ~
execute positioned 928 -8 4000 run place template anemoland:field/plain_c/0_0
execute positioned 928 -1 4000 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 928 -8 4048 run place template anemoland:field/plain_c/0_1
execute positioned 928 -1 4048 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 928 -8 4096 run place template anemoland:field/plain_c/0_2
execute positioned 928 -1 4096 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 928 -8 4144 run place template anemoland:field/plain_c/0_3
execute positioned 928 -1 4144 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 976 -8 4000 run place template anemoland:field/plain_c/1_0
execute positioned 976 -1 4000 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 976 -8 4048 run place template anemoland:field/plain_c/1_1
execute positioned 976 -1 4048 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 976 -8 4096 run place template anemoland:field/plain_c/1_2
execute positioned 976 -1 4096 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 976 -8 4144 run place template anemoland:field/plain_c/1_3
execute positioned 976 -1 4144 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1024 -8 4000 run place template anemoland:field/plain_c/2_0
execute positioned 1024 -1 4000 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1024 -8 4048 run place template anemoland:field/plain_c/2_1
execute positioned 1024 -1 4048 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1024 -8 4096 run place template anemoland:field/plain_c/2_2
execute positioned 1024 -1 4096 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1024 -8 4144 run place template anemoland:field/plain_c/2_3
execute positioned 1024 -1 4144 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1072 -8 4000 run place template anemoland:field/plain_c/3_0
execute positioned 1072 -1 4000 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1072 -8 4048 run place template anemoland:field/plain_c/3_1
execute positioned 1072 -1 4048 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1072 -8 4096 run place template anemoland:field/plain_c/3_2
execute positioned 1072 -1 4096 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1072 -8 4144 run place template anemoland:field/plain_c/3_3
execute positioned 1072 -1 4144 run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air
execute positioned 1024.0 0 4096.0 run kill @e[tag=area_entrance,distance=..64]
execute positioned 1022.0 0.0 4144.0 run function anemoland:dev/field/common/area_entrance/x
tp 1024 0 4096
