execute positioned ~0 ~ ~-4 run function anemoland_contents:sys/entity/mob/king_boar/summon/default/enemy/level {level:15}
execute positioned ~-4 ~ ~0 run function anemoland_contents:sys/entity/mob/boar/summon/default/enemy/level {level:10}
execute positioned ~4 ~ ~0 run function anemoland_contents:sys/entity/mob/boar/summon/default/enemy/level {level:10}
execute as @a[distance=..64] at @s run function anemoland_contents:sys/player/music/king_boar/start
scoreboard players set #boss_flag temp 1
