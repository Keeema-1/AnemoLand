
scoreboard players set #armor.elem.mul temp 100
execute if score @s armor.thunder.mul matches 0.. run scoreboard players operation #armor.elem.mul temp = #damage.dst.armor.thunder.mul temp

execute store result score #attack.elem.base temp run data get storage temp:_ data.elemental_attack.thunder.base
execute store result score #attack.elem.mul temp run data get storage temp:_ data.elemental_attack.thunder.mul

scoreboard players operation #damage.elem temp = #attack.elem.base temp
scoreboard players operation #damage.elem temp *= #attack.elem.mul temp
scoreboard players operation #damage.elem temp *= #armor.elem.mul temp
scoreboard players set #const temp 10000
scoreboard players operation #damage.elem temp /= #const temp

scoreboard players operation #damage temp -= #damage.elem temp
