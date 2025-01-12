#> anemoland_contents:sys/entity/mob/human1/manual/action/keep_distance1/tick
#
# アクション keep_distance1 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/human1/action/keep_distance1/tick

# ターゲットが存在しなければ終了
    execute unless score #hostile_target.exist temp matches 1 run return run function anemoland_contents:sys/entity/mob/human1/action/keep_distance1/end

# ターゲットが遠ければ歩行へ
    execute if score #hostile_target.is_player temp matches 1 unless entity @a[tag=hostile_target,sort=nearest,distance=..10,limit=1] run return run function anemoland_contents:sys/entity/mob/human1/action/walk1/start
    execute unless score #hostile_target.is_player temp matches 1 unless entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..10,limit=1] run return run function anemoland_contents:sys/entity/mob/human1/action/walk1/start

# ターゲットの方を向く
    execute if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    execute unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 移動
    data modify storage temp:_ data.motion set value {speed:0.15}
    execute if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^4 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 30 run function anemoland:sys/entity/common/motion/0
    execute unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^4 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 30 run function anemoland:sys/entity/common/motion/0

# 攻撃へ移行
    execute if score @s action_time matches 40.. if score #hostile_target.is_player temp matches 1 if entity @a[tag=hostile_target,sort=nearest,distance=..6,limit=1] rotated ~ 0 run return run function anemoland_contents:sys/entity/mob/human1/action/attack1/start
    execute if score @s action_time matches 40.. unless score #hostile_target.is_player temp matches 1 if entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..6,limit=1] rotated ~ 0 run return run function anemoland_contents:sys/entity/mob/human1/action/attack1/start
