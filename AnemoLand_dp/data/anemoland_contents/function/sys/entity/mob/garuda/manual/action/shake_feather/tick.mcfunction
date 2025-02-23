#> anemoland_contents:sys/entity/mob/garuda/manual/action/shake_feather/tick
#
# アクション shake_feather 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/garuda/action/shake_feather/tick

# プレイヤーの方を向く
    execute if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    execute unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# サウンドやパーティクル
    execute if score @s action_time matches 40..90 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 1 1.2
    execute if score @s action_time matches 40..90 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 2 1.5
    execute if score @s action_time matches 40..90 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 2 0.8

# 羽を擦る
    execute if score @s action_time matches 40 run function anemoland_contents:sys/entity/mob/garuda/variant/default_shaking
    execute if score @s action_time matches 120 run function anemoland_contents:sys/entity/mob/garuda/variant/default

# 終了
    execute if score @s action_time matches 160.. run function anemoland_contents:sys/entity/mob/garuda/action/shake_feather/end
