
scoreboard players set #armor.elem.mul temp 100
execute if score @s armor.ice.mul matches 0.. run scoreboard players operation #armor.elem.mul temp = #damage.dst.armor.ice.mul temp

execute store result score #attack.elem.base temp run data get storage temp:_ data.elemental_attack.ice.base
execute store result score #attack.elem.mul temp run data get storage temp:_ data.elemental_attack.ice.mul

scoreboard players operation #damage.elem temp = #attack.elem.base temp
scoreboard players operation #damage.elem temp *= #attack.elem.mul temp
scoreboard players operation #damage.elem temp *= #armor.elem.mul temp
scoreboard players set #const temp 10000
scoreboard players operation #damage.elem temp /= #const temp

scoreboard players operation #damage temp -= #damage.elem temp

# tellraw @a [{"text":" ❄armor.mul ","color":"aqua"},{"score":{"name":"#armor.elem.mul","objective":"temp"},"color":"aqua"}]
# tellraw @a [{"text":" ❄attack.base ","color":"aqua"},{"score":{"name":"#attack.elem.base","objective":"temp"},"color":"aqua"}]
# tellraw @a [{"text":" ❄attack.mul ","color":"aqua"},{"score":{"name":"#attack.elem.mul","objective":"temp"},"color":"aqua"}]
# tellraw @a [{"text":" ❄damage","color":"aqua"},{"score":{"name":"#damage.elem","objective":"temp"},"color":"aqua"}]
