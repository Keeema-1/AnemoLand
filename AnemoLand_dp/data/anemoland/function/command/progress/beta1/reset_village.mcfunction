# NPC
    # data modify storage anemoland:progress data.npc.girl2 set value {exist:0b,summon_flag:0b}
    # execute as @e[type=villager,tag=npc,tag=talker,tag=girl2] run function anemoland:sys/entity/npc/remove/common
    execute positioned 1024.0 0.0 -1024.0 as @e[type=villager,tag=npc,tag=talker,distance=..32] run function anemoland_contents:sys/entity/talker/remove
    execute positioned 1024.0 0.0 -1024.0 positioned ~5.5 0.0 ~13.5 rotated 90 ~ run function anemoland_contents:sys/entity/talker/navigator1/summon/0
    function anemoland_contents:command/talk/navigator1/hello

# 商人
    execute positioned 1024.0 0.0 -1024.0 run kill @e[type=villager,tag=trader,distance=..32]
    execute positioned 1024.0 0.0 -1024.0 positioned ~9.5 0.0 ~1.5 run function anemoland:command/summon/trader/pet/1
    execute positioned 1024.0 0.0 -1024.0 positioned ~9.5 0.0 ~-0.5 run function anemoland:command/summon/trader/equip/1
    execute positioned 1024.0 0.0 -1024.0 positioned ~9.5 0.0 ~-2.5 run function anemoland:command/summon/trader/exchange/1
