title @a[distance=..64] times 10 80 10
title @a[distance=..64] subtitle {"text": "CLEAR!","color": "yellow"}
title @a[distance=..64] title ""
execute as @a[distance=..64] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
stopsound @a[distance=..64] record

# クリア後のNPCチャットなど用
    execute as @e[type=#anemoland:mob_core,tag=npc,distance=..64] run tag @s add clear
