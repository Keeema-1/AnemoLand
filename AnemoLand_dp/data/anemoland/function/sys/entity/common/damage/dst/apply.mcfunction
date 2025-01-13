#> anemoland:sys/entity/common/damage/dst/apply
#
# モンスターが受けるをダメージ計算して反映
#
# @input
#   score
#       @s health
#           (0..) 攻撃対象のHP * 10
#       #damage.dst.armor.mul
#           (0..) 攻撃対象の被ダメージ率 * 100
#       #damage.src.attack.base temp
#           (0..) 攻撃元の攻撃力 * 10
#       #damage.src.attack.mul temp
#           (0..) 攻撃元の攻撃力の倍率 * 10
#       #charge_rate temp
#           (-125..0) チャージ率 * (-100)
#
#       #damage.src.attack.<element>.base temp
#           (0..) 攻撃元の属性攻撃力 * 10
#
# @within function anemoland_contents:sys/entity/mob/*/damaged/common

# スキル
    function anemoland_contents:sys/player/skill/attack/dst/0

# 物理・属性共通
    # チャージ率
        execute unless score #charge_rate temp matches ..-1 run scoreboard players set #charge_rate temp -100
        scoreboard players operation #damage.common temp = #charge_rate temp
    # 武器倍率・武器技倍率
        scoreboard players operation #damage.common temp *= #damage.src.attack.mul temp
        scoreboard players set #temp temp 100
        scoreboard players operation #damage.common temp /= #temp temp

# 物理
    scoreboard players operation #damage.physical temp = #damage.common temp
    # 被ダメージ率
        scoreboard players operation #damage.physical temp *= #damage.dst.armor.mul temp
    # 攻撃力
        scoreboard players operation #damage.physical temp *= #damage.src.attack.base temp
    scoreboard players set #temp temp 1000
    scoreboard players operation #damage.physical temp /= #temp temp

# 属性
    scoreboard players reset #damage.elem temp
    execute if score #damage.src.attack.fire.base temp matches 1.. run function anemoland:sys/entity/common/damage/dst/elemental_attack/fire
    execute if score #damage.src.attack.water.base temp matches 1.. run function anemoland:sys/entity/common/damage/dst/elemental_attack/water
    execute if score #damage.src.attack.ice.base temp matches 1.. run function anemoland:sys/entity/common/damage/dst/elemental_attack/ice
    execute if score #damage.src.attack.thunder.base temp matches 1.. run function anemoland:sys/entity/common/damage/dst/elemental_attack/thunder

# ダメージを反映
    scoreboard players operation #damage temp = #damage.physical temp
    scoreboard players operation #damage temp += #damage.elem temp
    scoreboard players operation @s health += #damage temp

# HP・ダメージのディスプレイ
    # HPの整数値を取得
        scoreboard players operation #health.int temp = @s health
        scoreboard players add #health.int temp 5
        scoreboard players set #temp temp 10
        scoreboard players operation #health.int temp /= #temp temp
    # 怒り制御スコアの更新
        execute if score @s anger.damage matches 1.. run scoreboard players operation @s anger.damage += #damage temp
    # ダメージの整数部・少数部を取得
        scoreboard players set #temp temp -1
        scoreboard players operation #damage temp *= #temp temp
        scoreboard players set #temp temp 10
        scoreboard players operation #damage.int temp = #damage temp
        scoreboard players operation #damage.int temp /= #temp temp
        scoreboard players operation #damage.decimal temp = #damage temp
        scoreboard players operation #damage.decimal temp %= #temp temp

    # HPディスプレイ
        # 割合を計算
            scoreboard players set #temp temp 9
            scoreboard players operation #health.ratio temp = @s health
            scoreboard players operation #health.ratio temp *= #temp temp
            scoreboard players operation #health.ratio temp /= @s max_health
        # ディスプレイテキストを更新
            execute if entity @s[tag=pet] run function anemoland:sys/entity/common/damage/dst/health_display/pet
            execute if entity @s[tag=enemy] run function anemoland:sys/entity/common/damage/dst/health_display/enemy

    # ダメージディスプレイ
        function anemoland:sys/entity/common/damage/dst/damage_display/0

# tellraw @a [{"selector": "@s"},{"text": " <- "},{"score":{"name": "#damage","objective":"temp"}}]
# tellraw @a [{"text": "   src : "},{"score":{"name": "#damage.src.attack.base","objective":"temp"}},{"text": " * "},{"score":{"name": "#damage.src.attack.mul","objective":"temp"}},{"text": " * "},{"score":{"name": "#charge_rate","objective":"temp"}}]
