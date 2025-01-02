execute store result score #x temp run data get entity @s Pos[0]
execute store result score #y temp run data get entity @s Pos[2]
scoreboard players set #16 temp 16

scoreboard players add #x temp 8
scoreboard players add #y temp 8

data modify storage temp:_ data.pos set value {x:0,y:0}
execute store result storage temp:_ data.pos.x int 16 run scoreboard players operation #x temp /= #16 temp
execute store result storage temp:_ data.pos.y int 16 run scoreboard players operation #y temp /= #16 temp

scoreboard players reset #x temp
scoreboard players reset #y temp
scoreboard players reset #16 temp
