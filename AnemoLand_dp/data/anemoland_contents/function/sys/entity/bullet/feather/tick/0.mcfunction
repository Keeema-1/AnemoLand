
# パーティクル
    # execute if entity @s[tag=!bullet.feather.ice] run particle block{block_state:{Name:"feather"}} ^ ^ ^ 0.5 0.5 0.5 1 5
    # execute if entity @s[tag=bullet.feather.ice] run particle block{block_state:{Name:"packed_ice"}} ^ ^ ^ 0.5 0.5 0.5 1 5

# タイマーを進める
    scoreboard players add @s action_time 1

# 回転
    # scoreboard players operation #action_time temp = @s action_time
    # execute on passengers store result entity @s Rotation[0] float 5 run scoreboard players get #action_time temp
    # execute on passengers store result entity @s Rotation[1] float 3 run scoreboard players get #action_time temp

# 垂直移動
    # execute if score @s action_time matches 0..5 run tp ^ ^0.2 ^
    # execute if score @s action_time matches 6..10 run tp ^ ^0.1 ^
    # execute if score @s action_time matches 11..15 run tp ^ ^-0.1 ^
    # execute if score @s action_time matches 16.. run tp ^ ^-0.2 ^

# 水平移動
    # data modify storage temp:_ data.horizontal_speed set value {speed:1}
    # execute if entity @s[tag=!bullet.feather.large] store result storage temp:_ data.horizontal_speed.speed float 0.04 run scoreboard players get @s action_way
    # execute if entity @s[tag=bullet.feather.large] store result storage temp:_ data.horizontal_speed.speed float 0.03 run scoreboard players get @s action_way
    # function anemoland_contents:sys/entity/bullet/feather/tick/horizontal_motion with storage temp:_ data.horizontal_speed

# 5秒経過で消滅
    execute if score @s action_time matches 100.. run return run function anemoland_contents:sys/entity/bullet/feather/tick/disappear

execute if entity @s[tag=hit_ground] run return 1

tp ^ ^ ^1.3

execute if entity @s[tag=charged] at @s run particle dust_color_transition{from_color:[0.7,1.0,0.9],to_color:[1.0,1.0,0.2],scale:1.0} ~ ~3 ~ 0.3 0.3 0.3 1 1

# ヒット処理
    # default
        # 敵の弾：味方にヒット
            execute if entity @s[tag=!pet_bullet] at @s if block ~ ~ ~ #anemoland:space positioned ~-1 ~-1 ~-1 if entity @a[dx=1,dy=1,dz=1,gamemode=adventure] positioned ~1 ~1 ~1 run return run function anemoland_contents:sys/entity/bullet/feather/tick/hit
            execute if entity @s[tag=!pet_bullet] at @s if block ~ ~ ~ #anemoland:space positioned ~-1 ~-1 ~-1 unless entity @a[dx=1,dy=1,dz=1,gamemode=adventure] if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,dx=1,dy=1,dz=1,limit=1] positioned ~1 ~1 ~1 run return run function anemoland_contents:sys/entity/bullet/feather/tick/hit
        # ペットの弾：敵にヒット
            execute if entity @s[tag=pet_bullet] at @s if block ~ ~ ~ #anemoland:space positioned ~-1 ~-1 ~-1 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=1,dy=1,dz=1,limit=1] positioned ~1 ~1 ~1 run return run function anemoland_contents:sys/entity/bullet/feather/tick/hit
    # 地面にヒット
        execute at @s unless block ~ ~0.5 ~ #anemoland:space positioned ^ ^1 ^ run return run function anemoland_contents:sys/entity/bullet/feather/tick/hit_ground
