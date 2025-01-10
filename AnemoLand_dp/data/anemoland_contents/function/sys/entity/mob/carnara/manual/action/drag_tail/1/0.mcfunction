
tp @s ~ ~ ~ ~ ~

# 攻撃
    execute if score @s action_time matches 10..30 run function anemoland_contents:sys/entity/mob/carnara/attack/tail1/0

# パーティクル
    execute if score @s action_time matches 10..30 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.7 0

    scoreboard players operation #entity_id temp = @s entity_id
    execute if score @s action_time matches 10..30 as @e[type=#anemoland:mob_core,tag=hitbox.tail,tag=carnara,distance=..32] if score @s entity_id = #entity_id temp at @s run particle sweep_attack ~ ~ ~ 1 1 1 1 1

# 移動
    execute if score @s action_time matches 11..20 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 21..30 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches 11..30 if score #hostile_target.is_player temp matches 1 rotated ~180 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 120.. run function anemoland_contents:sys/entity/mob/carnara/action/drag_tail/end
