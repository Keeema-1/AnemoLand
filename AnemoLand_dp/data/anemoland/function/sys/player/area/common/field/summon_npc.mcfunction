
execute if entity @e[type=#anemoland:mob_core,tag=npc,distance=..64] run return 1

# execute if data storage temp:_ data.event{with_npc1:1b,npc1_id:1,"event_id":"martellos_double_20_with_sally"} run function anemoland:command/talk/girl2/double_martellos_enter
# execute if data storage temp:_ data.event{with_npc1:1b,npc1_id:1} run return run function anemoland:sys/entity/mob/girl2/summon/pet/0

execute store result score #npc_level temp run data get storage temp:_ data.event.npc_level
execute unless score #npc_level temp matches 5.. unless data storage anemoland:progress data.rank{silver:1b} run scoreboard players set #npc_level temp 15
execute unless score #npc_level temp matches 5.. if data storage anemoland:progress data.rank{gold:1b} run scoreboard players set #npc_level temp 35
execute unless score #npc_level temp matches 5.. if data storage anemoland:progress data.rank{silver:1b} run scoreboard players set #npc_level temp 25
execute store result storage temp:_ data.npc.level int 1 run scoreboard players get #npc_level temp
# data modify storage temp:_ data.npc.level set from storage temp:_ data.event.npc_level

# boy1
    execute if data storage temp:_ data.event{with_npc1:1b,npc1_id:1} run return run function anemoland_contents:sys/entity/mob/human1/summon/boy1/player_side/level with storage temp:_ data.npc
# sally
    execute if data storage temp:_ data.event{with_npc1:1b,npc1_id:2} run return run function anemoland_contents:sys/entity/mob/human1/summon/sally/player_side/level with storage temp:_ data.npc

# execute store result score #team_members temp if entity @a[gamemode=adventure,distance=..64]
# execute if score #team_members temp matches 4.. run return 1

function anemoland:sys/player/common/player_storage/read

# function anemoland:sys/player/common/player_storage/read
execute if data storage temp:_ data.player_storage.supporters.1{id:"boy1"} run return run function anemoland_contents:sys/entity/mob/human1/summon/boy1/player_side/level with storage temp:_ data.npc
execute if data storage temp:_ data.player_storage.supporters.1{id:"sally"} run return run function anemoland_contents:sys/entity/mob/human1/summon/sally/player_side/level with storage temp:_ data.npc
