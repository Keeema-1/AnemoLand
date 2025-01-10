#> anemoland_contents:sys/entity/mob/raptor/manual/action/side_jump/tick
#
# アクション side_jump 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/raptor/action/side_jump/tick

# 回転
    execute if score @s action_way matches 0 if score @s action_time matches ..40 run tp @s ^ ^ ^ ~3 ~
    execute if score @s action_way matches 1 if score @s action_time matches ..40 run tp @s ^ ^ ^ ~-3 ~

    execute if score @s action_time matches 40.. if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^ ~ ~
    execute if score @s action_time matches 40.. unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^ ~ ~

# 移動
    data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_way matches 0 rotated ~-90 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_way matches 1 rotated ~90 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 50.. run function anemoland_contents:sys/entity/mob/raptor/action/side_jump/end
