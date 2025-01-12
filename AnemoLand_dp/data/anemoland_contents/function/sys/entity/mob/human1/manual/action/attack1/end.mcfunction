#> anemoland_contents:sys/entity/mob/human1/manual/action/attack1/end
#
# アクション attack1 の終了時に実行される
# このファイルは初回のみ自動生成される
# アクション終了時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/human1/action/attack1/end

# 後ろが壁ならまっすく進む
    execute rotated ~ 0 positioned ^ ^0.5 ^-2 unless block ~ ~ ~ #anemoland:space run return run function anemoland_contents:sys/entity/mob/human1/action/walk_straight1/start

function anemoland_contents:sys/entity/mob/human1/action/keep_distance1/start
