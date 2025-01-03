
# 回転
    execute if score @s action_time matches ..5 if score @s action_way matches 0 run tp @s ~ ~ ~ ~20 ~
    execute if score @s action_time matches ..5 if score @s action_way matches 1 run tp @s ~ ~ ~ ~-20 ~

    execute if score @s action_time matches 6..10 if score @s action_way matches 0 run tp @s ~ ~ ~ ~15 ~
    execute if score @s action_time matches 6..10 if score @s action_way matches 1 run tp @s ~ ~ ~ ~-15 ~

    execute if score @s action_time matches 11..20 if score @s action_way matches 0 run tp @s ~ ~ ~ ~10 ~
    execute if score @s action_time matches 11..20 if score @s action_way matches 1 run tp @s ~ ~ ~ ~-10 ~

    execute if score @s action_time matches 21..25 if score @s action_way matches 0 run tp @s ~ ~ ~ ~5 ~
    execute if score @s action_time matches 21..25 if score @s action_way matches 1 run tp @s ~ ~ ~ ~-5 ~

    execute if score @s action_time matches 26..30 if score @s action_way matches 0 run tp @s ~ ~ ~ ~3 ~
    execute if score @s action_time matches 26..30 if score @s action_way matches 1 run tp @s ~ ~ ~ ~-3 ~

    execute if score @s action_time matches 31..35 if score @s action_way matches 0 run tp @s ~ ~ ~ ~1 ~
    execute if score @s action_time matches 31..35 if score @s action_way matches 1 run tp @s ~ ~ ~ ~-1 ~

    execute if score @s action_time matches 36.. if score @s action_way matches 0 run tp @s ~ ~ ~ ~ ~
    execute if score @s action_time matches 36.. if score @s action_way matches 1 run tp @s ~ ~ ~ ~ ~

# 移動
    data modify storage temp:_ data.motion set value {speed:0.15}
    execute if entity @s[tag=angry] run data modify storage temp:_ data.motion set value {abs:0.2}
    execute if score @s action_time matches ..10 if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches ..10 unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    data modify storage temp:_ data.motion set value {speed:0.05}
    execute if entity @s[tag=angry] run data modify storage temp:_ data.motion set value {abs:0.1}
    execute if score @s action_time matches 11..20 if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches 11..20 unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches ..25 run function anemoland_contents:sys/entity/mob/squirrel_head/attack/spin/0

execute if score @s action_time matches ..20 run particle poof ^-5 ^1 ^-1 0.0 0.0 0.0 0 1

execute if score @s action_time matches ..20 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.2 0

execute if score @s action_time matches 60.. run function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/spin/2/start
