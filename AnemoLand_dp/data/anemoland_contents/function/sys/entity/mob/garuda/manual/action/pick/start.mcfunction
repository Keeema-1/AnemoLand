#> anemoland_contents:sys/entity/mob/garuda/manual/action/pick/start
#
# アクション pick の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/garuda/action/pick/start

function anemoland_contents:sys/entity/mob/garuda/animation/pick1

# サウンドやパーティクル
    execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 2 1.2
    execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 4 1.5
    execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 4 0.9
