execute positioned ~-5 ~ ~1 run function anemoland_contents:sys/entity/mob/squirrel_head/summon/default/enemy/level with storage temp:_ data.wave
execute positioned ~6 ~ ~2 run function anemoland_contents:sys/entity/mob/squirrel_head/summon/default/enemy/level with storage temp:_ data.wave
execute as @a[distance=..64] at @s run function anemoland_contents:sys/player/music/king_boar/start
scoreboard players set #boss_flag temp 1
