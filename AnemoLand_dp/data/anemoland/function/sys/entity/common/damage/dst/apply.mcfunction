#> anemoland:sys/entity/common/damage/dst/apply
#
# モンスターが受けるをダメージ計算して反映
#
# @input
#   score #damage.src.attack.base temp
#       (0..) 攻撃元の攻撃力の * ?
#   score #damage.src.attack.mul temp
#       (0..) 攻撃元の攻撃力の倍率 * 10
#   score #health temp
#       (-125..0) チャージ率 * (-100)
#   score #damage.dst.armor.mul
#       (0..) 攻撃対象の被ダメージ率 * 100
#
# @within function anemoland_contents:sys/entity/mob/*/damaged/common

scoreboard players operation #damage temp = #damage.src.attack.base temp
scoreboard players operation #damage temp *= #damage.src.attack.mul temp
scoreboard players operation #damage temp *= #health temp
scoreboard players operation #damage temp *= #damage.dst.armor.mul temp
scoreboard players set #const temp 1000000
scoreboard players operation #damage temp /= #const temp

execute if data storage temp:_ data.elemental_attack run function anemoland:sys/entity/common/damage/dst/elemental_attack/0

scoreboard players operation @s health += #damage temp
scoreboard players operation #health temp = @s health
execute if score @s anger.damage matches 1.. run scoreboard players operation @s anger.damage += #damage temp

scoreboard players set #const temp -1
# scoreboard players operation #health temp /= #const temp
scoreboard players operation #damage temp *= #const temp

# HPディスプレイ
    scoreboard players set #const temp 9
    scoreboard players operation #health.ratio temp = @s health
    scoreboard players operation #health.ratio temp *= #const temp
    scoreboard players operation #health.ratio temp /= @s max_health
    execute if entity @s[tag=pet] run function anemoland:sys/entity/common/damage/dst/health_display/pet
    execute if entity @s[tag=enemy] run function anemoland:sys/entity/common/damage/dst/health_display/enemy

# ダメージディスプレイ
    function anemoland:sys/entity/common/damage/dst/damage_display/0
