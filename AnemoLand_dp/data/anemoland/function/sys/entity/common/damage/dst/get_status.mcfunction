#> anemoland:sys/entity/common/damage/dst/get_status
#
# 攻撃対象のモンスターの防御率や減少したHealthを取得
#
# @input
#   score #attack_skill_flag temp
#       スキル使用時のフラグ
#
# @within
#   function anemoland_contents:sys/entity/mob/*/damaged/root
#   function anemoland_contents:sys/entity/mob/*/damaged/hitbox

execute store result score #health temp run data get entity @s Health 10
execute unless score #health temp matches 1.. run return 1
scoreboard players remove #health temp 10240
data modify entity @s Health set value 1024.0f

execute if score #health temp matches ..-126 run scoreboard players set #health temp -125

scoreboard players operation #damage.dst.armor.mul temp = @s armor.mul
execute if score @s armor.fire.mul matches 0.. run scoreboard players operation #damage.dst.armor.fire.mul temp = @s armor.fire.mul
execute if score @s armor.water.mul matches 0.. run scoreboard players operation #damage.dst.armor.fire.mul temp = @s armor.water.mul
execute if score @s armor.ice.mul matches 0.. run scoreboard players operation #damage.dst.armor.fire.mul temp = @s armor.ice.mul
execute if score @s armor.thunder.mul matches 0.. run scoreboard players operation #damage.dst.armor.fire.mul temp = @s armor.thunder.mul

execute if score #attack_skill_flag temp matches 1.. run scoreboard players set #health temp -100

# execute if score #health temp matches -5.. run tellraw @a "damage 0"
