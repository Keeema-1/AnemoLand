execute rotated ~ 0 run summon villager ~ ~ ~ {Tags:["newly_summoned"],Passengers:[{id:"text_display",text:'""',Tags:["display1","npc","navigator1"]},{id:interaction,Tags:["npc","navigator1"]}],DeathLootTable:"empty"}
execute rotated ~ 0 as @e[type=villager,tag=newly_summoned,distance=..1,limit=1] run function anemoland_contents:sys/entity/talker/navigator1/summon/00
