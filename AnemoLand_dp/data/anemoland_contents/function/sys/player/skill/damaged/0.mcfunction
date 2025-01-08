#> anemoland_contents:sys/player/skill/damaged/0
#
# ダメージを受けた際のスキル処理
#
# @within anemoland:sys/player/common/damage/dst/apply

# ice_veil
    execute if score @s ice_veil_time matches 200.. run function anemoland_contents:sys/player/skill/damaged/ice_veil/0
