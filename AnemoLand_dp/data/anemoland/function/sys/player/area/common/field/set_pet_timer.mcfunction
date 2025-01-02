

execute store result score #team_members temp if entity @a[distance=..64]
execute if score #team_members temp matches 4.. run return 1

execute store result score #temp temp if entity @e[type=#anemoland:mob_core,tag=npc,distance=..64]
scoreboard players operation #team_members temp += #temp temp
execute if score #team_members temp matches 4.. run return 1

execute as @a[gamemode=adventure,distance=..64] at @s unless score #team_members temp matches 4.. run function anemoland:sys/player/area/common/field/set_pet1_timer
execute if score #team_members temp matches 4.. run return 1

execute as @a[gamemode=adventure,distance=..64] at @s unless score #team_members temp matches 4.. run function anemoland:sys/player/area/common/field/set_pet2_timer
