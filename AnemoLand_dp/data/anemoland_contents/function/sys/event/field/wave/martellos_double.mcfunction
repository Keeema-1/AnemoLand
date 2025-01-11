execute positioned ~5 ~ ~0 run function anemoland_contents:sys/entity/mob/martellos/summon/default/enemy/level with storage temp:_ data.wave
execute positioned ~-5 ~ ~0 run function anemoland_contents:sys/entity/mob/martellos/summon/default/enemy/level with storage temp:_ data.wave
execute as @a[distance=..64] at @s run function anemoland_contents:sys/player/music/martellos/start
scoreboard players set #boss_flag temp 1
