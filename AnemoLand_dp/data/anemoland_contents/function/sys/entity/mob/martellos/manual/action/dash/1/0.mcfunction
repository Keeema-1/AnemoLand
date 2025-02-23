
tp @s ~ ~ ~ ~ ~

# 移動
    data modify storage temp:_ data.motion set value {speed:0.8}
    execute rotated ~ 0 run function anemoland:sys/entity/common/motion/0

# プレイヤーが後ろにいたらタイマーを進める
    function anemoland:sys/entity/common/target_direction/is_frontside
    execute if score @s action_time matches ..189 unless score #target_is_frontside temp matches 1 run scoreboard players set @s action_time 190

# 攻撃
    function anemoland_contents:sys/entity/mob/martellos/attack/dash/0

playsound entity.player.attack.sweep hostile @a ~ ~ ~ 1 0

execute if score @s action_time matches 200.. run function anemoland_contents:sys/entity/mob/martellos/manual/action/dash/2/start
