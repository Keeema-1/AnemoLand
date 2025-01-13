#> anemoland:sys/player/area/common/field/enter
#
# フィールドに移動した実行される
#
# @within
#    function anemoland:sys/player/area/*/field/*/enter/each_participant

# 画面を黒くする
    function anemoland:sys/player/common/black_title_medium

# ステータス効果
    effect give @s slowness 1 30 true
    effect clear @s speed

# 移動時の共通処理
    function anemoland:sys/player/area/common/enter

# 移動時のスキル処理
    function anemoland_contents:sys/player/skill/enter_field/0

# タイム計測用
    scoreboard players reset @s battle_timer

# 戦闘フィールドにいる人用フラグ
    tag @s add in_battle_field
