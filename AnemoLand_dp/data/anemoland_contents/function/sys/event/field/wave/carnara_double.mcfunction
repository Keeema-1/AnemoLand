execute positioned ~8 ~ ~0 run function anemoland_contents:sys/entity/mob/carnara/summon/default/enemy/level with storage temp:_ data.wave
execute positioned ~-8 ~ ~0 run function anemoland_contents:sys/entity/mob/carnara/summon/default/enemy/level with storage temp:_ data.wave
execute as @a[distance=..64] at @s run function anemoland_contents:sys/player/music/carnara/start
scoreboard players set #boss_flag temp 1
