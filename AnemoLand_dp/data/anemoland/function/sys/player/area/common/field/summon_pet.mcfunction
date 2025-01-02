
execute store result score #team_members temp if entity @a[distance=..64]
execute if score #team_members temp matches 4.. run return 1

execute store result score #temp temp if entity @e[type=#anemoland:mob_core,tag=npc,distance=..64]
scoreboard players operation #team_members temp += #temp temp


