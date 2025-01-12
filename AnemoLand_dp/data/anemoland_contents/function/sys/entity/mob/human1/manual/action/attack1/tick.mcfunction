#> anemoland_contents:sys/entity/mob/human1/manual/action/attack1/tick
#
# アクション attack1 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/human1/action/attack1/tick

# # ターゲットの方を向く
#     execute if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
#     execute unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

execute if entity @s[tag=damaged] run return run function anemoland_contents:sys/entity/mob/human1/action/attack1/end

# 前方に移動
    data modify storage temp:_ data.motion set value {speed:0.25}
    execute if score @s action_time matches ..10 if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^2 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches ..10 unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^2 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    # execute if score @s action_time matches ..10 rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches ..5 run data modify entity @s Motion[1] set value 0.2
    execute if score @s action_time matches 8..15 run data modify entity @s Motion[1] set value -0.2

# 攻撃
    execute if score @s action_time matches 10 rotated ~ 0 run function anemoland_contents:sys/entity/mob/human1/attack/attack/0

# 終了
    execute if score @s action_time matches 40.. run return run function anemoland_contents:sys/entity/mob/human1/action/attack1/end
