#> anemoland:sys/entity/common/damage/dst/get_status
#
# 攻撃対象のモンスターの防御率や減少したHealthを取得
#
# @input
#   score #weapon_skill_flag temp
#       スキル使用時のフラグ
#
# @output
#   score #health temp
#       チャージ率 (上限1.25倍、武器技発動時は一律1倍)
#
# @within
#   function anemoland_contents:sys/entity/mob/*/damaged/root
#   function anemoland_contents:sys/entity/mob/*/damaged/hitbox

# 減少させたHealthの量からチャージ率を取得
    execute store result score #health temp run data get entity @s Health 10
    execute unless score #health temp matches 1.. run return 1
    scoreboard players remove #health temp 10240
    data modify entity @s Health set value 1024.0f
    # 上限を1.25倍とする
        execute if score #health temp matches ..-126 run scoreboard players set #health temp -125

# 防御力を取得
    scoreboard players operation #damage.dst.armor.mul temp = @s armor.mul

# 属性ダメージ率を取得
    execute if score @s armor.fire.mul matches 0.. run scoreboard players operation #damage.dst.armor.fire.mul temp = @s armor.fire.mul
    execute if score @s armor.water.mul matches 0.. run scoreboard players operation #damage.dst.armor.fire.mul temp = @s armor.water.mul
    execute if score @s armor.ice.mul matches 0.. run scoreboard players operation #damage.dst.armor.fire.mul temp = @s armor.ice.mul
    execute if score @s armor.thunder.mul matches 0.. run scoreboard players operation #damage.dst.armor.fire.mul temp = @s armor.thunder.mul

# 武器技発動時は一律でクリティカル率を1倍とする
    execute if score #weapon_skill_flag temp matches 1.. run scoreboard players set #health temp -100
