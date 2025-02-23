tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 5 run function anemoland_contents:sys/entity/mob/garuda/animation/dash2

# 回転
    # execute if score @s action_time matches 16..25 if score @s action_way matches 0 at @s run tp @s ~ ~ ~ ~3 ~
    # execute if score @s action_time matches 16..25 if score @s action_way matches 1 at @s run tp @s ~ ~ ~ ~-3 ~

    # execute if score @s action_time matches 50..90 if score @s action_way matches 0 at @s run tp @s ~ ~ ~ ~1 ~
    # execute if score @s action_time matches 50..90 if score @s action_way matches 1 at @s run tp @s ~ ~ ~ ~-1 ~
    # execute if score @s action_time matches ..8 run function anemoland:sys/entity/common/rotate/to_player/front/2

# 移動
    data modify storage temp:_ data.motion set value {speed:1.0}
    execute rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    

# パーティクルやサウンド
    # execute if score @s action_time matches 10..16 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.7 0
    # execute if score @s action_time matches 18..19 as @a[distance=..64] at @s run playsound block.grass.break hostile @s ~ ~ ~ 2 0.5
    # scoreboard players operation #entity_id temp = @s entity_id
    # execute if score @s action_time matches 20 as @e[type=#anemoland:mob_core,tag=hitbox.head,tag=garuda,distance=..32] if score @s entity_id = #entity_id temp at @s run particle sweep_attack ~ ~ ~ 1 1 1 1 1
    # execute if score @s action_time matches 20 rotated ~ 0 positioned ^ ^ ^2.5 run function anemoland_contents:sys/entity/mob/garuda/manual/action/pick/1/particle

    # execute if score @s action_time matches 3..5 as @a[distance=..64] at @s run playsound entity.bat.takeoff hostile @s ~ ~ ~ 2 0
    # execute if score @s action_time matches ..5 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 2 0

# 攻撃
    function anemoland_contents:sys/entity/mob/garuda/attack/dash/0

# ターゲットが前方にいなければアクションの時間を短縮
    function anemoland:sys/entity/common/target_direction/is_frontside
    execute if score @s action_time matches ..80 unless score #target_is_frontside temp matches 1 run scoreboard players set @s action_time 81
# 前方に壁があればアクションの時間を短縮
    execute if score @s action_time matches ..80 rotated ~ 0 unless block ^ ^0.5 ^3 #anemoland:space run scoreboard players set @s action_time 81

execute if score @s action_time matches 85 on passengers if entity @s[tag=aj.global.root] run function animated_java:garuda/animations/dash3/tween {to_frame: 0, duration: 5}

execute if score @s action_time matches 90.. run function anemoland_contents:sys/entity/mob/garuda/manual/action/dash/2/start
