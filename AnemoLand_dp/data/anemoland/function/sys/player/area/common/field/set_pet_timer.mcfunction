
execute as @a[gamemode=adventure,distance=..64] at @s unless score #team_members temp matches 4.. run function anemoland:sys/player/area/common/field/set_pet1_timer

# プレイヤーが3人以上参加していたらペット1のみ召喚
    execute store result score #team_members temp if entity @a[distance=..64]
    execute if score #team_members temp matches 3.. run return 1

execute as @a[gamemode=adventure,distance=..64] at @s unless score #team_members temp matches 4.. run function anemoland:sys/player/area/common/field/set_pet2_timer
