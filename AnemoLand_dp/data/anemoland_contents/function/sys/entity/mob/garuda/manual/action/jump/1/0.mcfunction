tp @s ~ ~ ~ ~ ~

# 回転
    # execute if score @s action_time matches 16..25 if score @s action_way matches 0 at @s run tp @s ~ ~ ~ ~3 ~
    # execute if score @s action_time matches 16..25 if score @s action_way matches 1 at @s run tp @s ~ ~ ~ ~-3 ~

    # execute if score @s action_time matches 50..90 if score @s action_way matches 0 at @s run tp @s ~ ~ ~ ~1 ~
    # execute if score @s action_time matches 50..90 if score @s action_way matches 1 at @s run tp @s ~ ~ ~ ~-1 ~
    # execute if score @s action_time matches ..8 run function anemoland:sys/entity/common/rotate/to_player/front/2
    execute if score @s action_way matches 1 if score @s action_time matches ..15 run tp @s ~ ~ ~ ~5 ~
    execute if score @s action_way matches 2 if score @s action_time matches ..15 run tp @s ~ ~ ~ ~-5 ~

# 移動
    execute if score @s action_time matches ..5 run data modify storage temp:_ data.motion set value {speed:-0.6}
    execute if score @s action_time matches 6..10 run data modify storage temp:_ data.motion set value {speed:-0.3}
    execute if score @s action_time matches 11..20 run data modify storage temp:_ data.motion set value {speed:-0.1}
    execute if score @s action_way matches 0 if score @s action_time matches ..20 rotated ~ ~50 run function anemoland:sys/entity/common/motion/0

    execute if score @s action_time matches ..5 run data modify storage temp:_ data.motion set value {speed:-1.2}
    execute if score @s action_time matches 6..10 run data modify storage temp:_ data.motion set value {speed:-0.6}
    execute if score @s action_time matches 11..20 run data modify storage temp:_ data.motion set value {speed:-0.2}
    execute if score @s action_way matches 1 if score @s action_time matches ..20 rotated ~90 ~15 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_way matches 2 if score @s action_time matches ..20 rotated ~-90 ~15 run function anemoland:sys/entity/common/motion/0
    # execute if score @s action_time matches ..5 run data modify entity @s Motion set value [0.0d,0.5d,0.0d]
    # execute if score @s action_time matches 6..10 run data modify entity @s Motion set value [0.0d,0.2d,0.0d]
    # execute if score @s action_time matches 11..20 run data modify entity @s Motion set value [0.0d,0.1d,0.0d]
    

# パーティクルやサウンド
    # execute if score @s action_time matches 10..16 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.7 0
    # execute if score @s action_time matches 18..19 as @a[distance=..64] at @s run playsound block.grass.break hostile @s ~ ~ ~ 2 0.5
    # scoreboard players operation #entity_id temp = @s entity_id
    # execute if score @s action_time matches 20 as @e[type=#anemoland:mob_core,tag=hitbox.head,tag=garuda,distance=..32] if score @s entity_id = #entity_id temp at @s run particle sweep_attack ~ ~ ~ 1 1 1 1 1
    # execute if score @s action_time matches 20 rotated ~ 0 positioned ^ ^ ^2.5 run function anemoland_contents:sys/entity/mob/garuda/manual/action/pick/1/particle

    execute if score @s action_time matches 3..5 as @a[distance=..64] at @s run playsound entity.bat.takeoff hostile @s ~ ~ ~ 2 0
    execute if score @s action_time matches ..5 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 2 0

# 攻撃
    # execute if score @s action_time matches 16..30 run function anemoland_contents:sys/entity/mob/garuda/attack/tail1/0

execute if score @s action_way matches 0 if score @s action_time matches 30.. run function anemoland_contents:sys/entity/mob/garuda/manual/action/jump/2/start
execute if score @s action_way matches 1.. if score @s action_time matches 35.. run function anemoland_contents:sys/entity/mob/garuda/manual/action/jump/2/start
execute if entity @s[tag=angry] if score @s action_time matches 25.. run function anemoland_contents:sys/entity/mob/garuda/manual/action/jump/2/start
