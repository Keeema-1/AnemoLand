#> anemoland_contents:sys/entity/mob/garuda/manual/action/pick_jump/start
#
# アクション pick_jump の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/garuda/action/pick_jump/start

function anemoland_contents:sys/entity/mob/garuda/animation/pick1_jump

# ターゲットまでの距離測定
    data merge storage km_distance: {out:32}
    execute if score #hostile_target.is_player temp matches 1 at @a[tag=hostile_target,distance=..32,limit=1] run function km_distance:as_to_at
    execute unless score #hostile_target.is_player temp matches 1 at @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] run function km_distance:as_to_at
    execute store result score @s action_way run data get storage km_distance: out

# サウンドやパーティクル
    execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 2 1.2
    execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 4 1.5
    execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 4 0.9
