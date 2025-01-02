
data modify storage temp:_ data.elemental_attack_1 set from storage temp:_ data.elemental_attack.fire

scoreboard players set #damage.dst.elemental_resistance temp 100
execute if score @s armor.fire.mul matches 0.. run scoreboard players operation #damage.dst.elemental_resistance temp = @s armor.fire.mul

execute if score #damage.dst.elemental_resistance temp matches 1.. run function anemoland:sys/player/common/damage/dst/elemental_attack/common
