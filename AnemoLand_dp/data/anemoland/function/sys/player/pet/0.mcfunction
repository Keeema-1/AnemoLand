
execute if score @s pet1.timer matches 1.. run scoreboard players remove @s pet1.timer 1
execute if score @s pet1.timer matches 0 run function anemoland:sys/player/pet/spawn/pet/1

execute if score @s pet2.timer matches 1.. run scoreboard players remove @s pet2.timer 1
execute if score @s pet2.timer matches 0 run function anemoland:sys/player/pet/spawn/pet/2

execute if score @s pet3.timer matches 1.. run scoreboard players remove @s pet3.timer 1
execute if score @s pet3.timer matches 0 run function anemoland:sys/player/pet/spawn/pet/3


execute if score @s npc1.timer matches 1.. run scoreboard players remove @s npc1.timer 1
execute if score @s npc1.timer matches 0 run function anemoland:sys/player/pet/spawn/npc/1

execute if score @s pet_boss1.timer matches 1.. run scoreboard players remove @s pet_boss1.timer 1
execute if score @s pet_boss1.timer matches 0 run function anemoland:sys/player/pet/boss_timer/1
