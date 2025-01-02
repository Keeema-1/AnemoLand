execute store result score #x temp run data get entity @s Pos[0]
execute store result score #y temp run data get entity @s Pos[2]
scoreboard players set #8 temp 8

# scoreboard players add #x temp 4
# scoreboard players add #y temp 4

data modify storage temp:_ data.pos set value {x:0,y:0}
execute store result storage temp:_ data.pos.x int 8 run scoreboard players operation #x temp /= #8 temp
execute store result storage temp:_ data.pos.y int 8 run scoreboard players operation #y temp /= #8 temp

scoreboard players reset #x temp
scoreboard players reset #y temp
scoreboard players reset #8 temp
