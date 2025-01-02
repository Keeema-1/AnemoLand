execute as @e[type=villager,tag=npc,tag=talker,tag=girl2] run function anemoland:sys/entity/npc/remove/common

execute positioned 3077.5 0.0 -1015.5 rotated 60 0 run function anemoland:sys/entity/npc/girl2/summon/talker/0

data modify storage anemoland:progress data.npc.girl2 merge value {summon_flag:0b,exist:1b}

function anemoland:command/talk/girl2/double_martellos_1