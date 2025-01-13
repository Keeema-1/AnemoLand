tellraw @a [{"text": "*", "color":"green"},{"translate":"anemoland.general.npc_appear", "color":"green"}]

# NPC
    execute positioned 1024.0 0.0 -1024.0 as @e[type=villager,tag=npc,tag=talker,tag=boy1,distance=..32] run function anemoland_contents:sys/entity/talker/remove
    execute positioned 1024.0 0.0 -1024.0 positioned ~11.5 0.0 ~8.5 rotated 90 ~ run function anemoland_contents:sys/entity/talker/boy1/summon/0
    function anemoland_contents:command/talk/boy1/quest1_ask
