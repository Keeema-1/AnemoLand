execute positioned ~0 ~ ~-4 run function anemoland_contents:sys/entity/mob/garapapas/summon/default/enemy/level with storage temp:_ data.wave
execute positioned ~-4 ~ ~0 run function anemoland_contents:sys/entity/mob/garapas/summon/default/enemy/level with storage temp:_ data.wave
execute positioned ~4 ~ ~0 run function anemoland_contents:sys/entity/mob/garapas/summon/default/enemy/level with storage temp:_ data.wave
execute as @a[distance=..64] at @s run function anemoland_contents:sys/player/music/king_boar/start
scoreboard players set #boss_flag temp 1
