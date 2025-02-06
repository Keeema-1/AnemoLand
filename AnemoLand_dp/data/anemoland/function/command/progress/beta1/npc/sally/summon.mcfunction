tellraw @a [{"text": "", "color":"green"},{"translate":"anemoland.general.npc_appear", "color":"green"}]

# NPC
    execute positioned 1024.0 0.0 -1024.0 as @e[type=villager,tag=npc,tag=talker,tag=sally,distance=..32] run function anemoland_contents:sys/entity/talker/remove
    execute positioned 1024.0 0.0 -1024.0 positioned ~6.5 0.0 ~9.5 rotated 90 ~ run function anemoland_contents:sys/entity/talker/sally/summon/0
    function anemoland_contents:command/talk/sally/quest1_ask
