#> anemoland_contents:sys/player/skill/attack/dst/0
#
# 攻撃を与えた対象として実行するスキル処理
# ダメージを適用する際に処理される
#
# @within anemoland:sys/entity/common/damage/dst/get_status

# 喧嘩上等
    execute if entity @s[tag=angry] run scoreboard players operation #damage.src.attack.base temp += #damage.src.attack.skill.bring_it_on temp
    scoreboard players reset #damage.src.attack.skill.bring_it_on temp
