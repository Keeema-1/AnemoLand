#> anemoland:sys/player/common/damage/dst/apply
#
# プレイヤーへの攻撃を適用
#
# @input
#   score
#       #damage.src.attack.base temp
#           (0..) 攻撃元の物理攻撃力 * 10
#       #damage.src.attack.mul temp
#           (0..) 攻撃元のモーション倍率 * 10
#       #damage.src.attack.<element>.base temp
#           (0..) 攻撃元の属性攻撃力 * 10
#
# @public

# 物理・属性共通
    # モーション倍率
        scoreboard players operation #damage.common temp = #damage.src.attack.mul temp
    # 防御力
        scoreboard players set #temp temp 100
        scoreboard players operation #damage.common temp *= #temp temp
        execute store result score #damage.dst.armor.base temp run attribute @s armor get 100
        scoreboard players operation #damage.common temp /= #damage.dst.armor.base temp

# 物理
    scoreboard players operation #damage.physical temp = #damage.common temp
    # 攻撃力
        scoreboard players operation #damage.physical temp *= #damage.src.attack.base temp
    # /100
        scoreboard players set #temp temp 10
        scoreboard players operation #damage.physical temp /= #temp temp

# 属性
    scoreboard players reset #damage.elem temp
    execute if score #damage.src.attack.fire.base temp matches 1.. run function anemoland:sys/player/common/damage/dst/elemental_attack/fire
    execute if score #damage.src.attack.water.base temp matches 1.. run function anemoland:sys/player/common/damage/dst/elemental_attack/water
    execute if score #damage.src.attack.ice.base temp matches 1.. run function anemoland:sys/player/common/damage/dst/elemental_attack/ice
    execute if score #damage.src.attack.thunder.base temp matches 1.. run function anemoland:sys/player/common/damage/dst/elemental_attack/thunder

# 合計ダメージを計算
    scoreboard players operation #damage temp = #damage.physical temp
    scoreboard players operation #damage temp += #damage.elem temp

# スキル
    function anemoland_contents:sys/player/skill/damaged/0

execute store result storage temp:_ data.player_damage.value float 0.1 run scoreboard players get #damage temp

function anemoland:sys/player/common/damage/dst/apply_ with storage temp:_ data.player_damage

scoreboard players set @s hurt_time 20
