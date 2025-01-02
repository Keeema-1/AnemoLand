
scoreboard players set #damage.src.elemental_attack.base temp 0
execute store result score #damage.src.elemental_attack.base temp run data get storage temp:_ data.elemental_attack_1.base

scoreboard players set #damage.src.elemental_attack.mul temp 0
execute store result score #damage.src.elemental_attack.mul temp run data get storage temp:_ data.elemental_attack_1.mul

scoreboard players set #const temp 1000
scoreboard players operation #elemental_damage temp = #damage.src.elemental_attack.base temp
scoreboard players operation #elemental_damage temp *= #damage.src.elemental_attack.mul temp
scoreboard players operation #elemental_damage temp *= #damage.dst.elemental_resistance temp
scoreboard players operation #elemental_damage temp /= #const temp

# tellraw @a [{"text":"src.base","color": "red"},{"score":{"name": "#damage.src.elemental_attack.base","objective": "temp"},"color": "red"}]
# tellraw @a [{"text":"src.mul","color": "red"},{"score":{"name": "#damage.src.elemental_attack.mul","objective": "temp"},"color": "red"}]
# tellraw @a [{"text":"dst.resistance","color": "red"},{"score":{"name": "#damage.dst.elemental_resistance","objective": "temp"},"color": "red"}]

# tellraw @a [{"text":" / ELEM DAMAGE:","color": "red"},{"score":{"name": "#elemental_damage","objective": "temp"},"color": "red"}]

scoreboard players operation #damage temp += #elemental_damage temp
