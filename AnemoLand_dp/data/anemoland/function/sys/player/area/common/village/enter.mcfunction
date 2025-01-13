#> anemoland:sys/player/area/common/village/enter
#
# 拠点に移動した実行される
#
# @within
#    function anemoland:sys/player/area/*/village/*/enter/each_participant

function anemoland:sys/player/common/black_title

effect clear @s speed

tag @s remove in_battle_field

function anemoland:sys/player/area/common/enter