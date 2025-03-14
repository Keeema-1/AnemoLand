#> anemoland_contents:sys/entity/mob/garuda/manual/action/jump/start
#
# アクション jump の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/garuda/action/jump/start

function anemoland_contents:sys/entity/mob/garuda/animation/jump1

# サウンドやパーティクル
    execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 2 1.2
    execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 4 1.5
    execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 4 0.9

scoreboard players set @s action_way 0
execute if predicate anemoland:random_chance/0_3 store result score @s action_way run random value 1..2
