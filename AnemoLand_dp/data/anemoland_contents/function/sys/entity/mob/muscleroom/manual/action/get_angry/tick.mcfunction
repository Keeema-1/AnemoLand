#> anemoland_contents:sys/entity/mob/muscleroom/manual/action/get_angry/tick
#
# アクション get_angry 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/muscleroom/action/get_angry/tick

# プレイヤーの方を向く
    execute if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    execute unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
# 終了
    execute if score @s action_time matches 120.. run function anemoland_contents:sys/entity/mob/muscleroom/action/get_angry/end

# パーティクルやサウンド
    execute if score @s action_time matches 41..80 rotated ~ 0 run particle poof ^ ^2 ^ 0.1 0.1 0.1 0.3 3
    execute if score @s action_time matches 20..60 as @a[distance=..64] at @s run playsound minecraft:entity.squid.squirt hostile @s ~ ~ ~ 2 0
