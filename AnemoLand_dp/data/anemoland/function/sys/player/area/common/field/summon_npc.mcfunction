execute if entity @e[type=#anemoland:mob_core,tag=npc,distance=..64] run return 1

execute if data storage temp:_ data.event{with_npc1:1b,npc1_id:1,"event_id":"martellos_double_20_with_sally"} run function anemoland:command/talk/girl2/double_martellos_enter
execute if data storage temp:_ data.event{with_npc1:1b,npc1_id:1} run return run function anemoland:sys/entity/mob/girl2/summon/pet/0

execute store result score #team_members temp if entity @a[gamemode=adventure,distance=..64]
execute if score #team_members temp matches 4.. run return 1

function anemoland:sys/player/common/player_storage/read
execute if data storage temp:_ data.player_storage.supporters.1{id:"girl2"} run return run function anemoland:sys/entity/mob/girl2/summon/pet/0