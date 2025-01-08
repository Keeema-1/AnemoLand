
# パーティクル
    particle block{block_state:{Name:"water"}} ^ ^ ^ 0.5 0.5 0.5 1 5
    execute if entity @s[tag=bullet.water.large] run particle block{block_state:{Name:"water"}} ^ ^ ^ 1 1 1 1 5

# タイマーを進める
    scoreboard players add @s action_time 1

# 回転
    scoreboard players operation #action_time temp = @s action_time
    execute on passengers store result entity @s Rotation[0] float 5 run scoreboard players get #action_time temp
    execute on passengers store result entity @s Rotation[1] float 3 run scoreboard players get #action_time temp

# 垂直移動
    execute if entity @s[tag=!bullet.water.large] if score @s action_time matches 0..5 run tp ^ ^0.2 ^
    execute if entity @s[tag=!bullet.water.large] if score @s action_time matches 6..10 run tp ^ ^0.1 ^
    execute if entity @s[tag=!bullet.water.large] if score @s action_time matches 11..15 run tp ^ ^-0.1 ^
    execute if entity @s[tag=!bullet.water.large] if score @s action_time matches 16.. run tp ^ ^-0.2 ^

    execute if entity @s[tag=bullet.water.large] if score @s action_time matches 0..5 run tp ^ ^0.1 ^
    execute if entity @s[tag=bullet.water.large] if score @s action_time matches 6..10 run tp ^ ^-0.1 ^
    execute if entity @s[tag=bullet.water.large] if score @s action_time matches 11..15 run tp ^ ^-0.2 ^
    execute if entity @s[tag=bullet.water.large] if score @s action_time matches 16.. run tp ^ ^-0.2 ^

# 水平移動
    data modify storage temp:_ data.horizontal_speed set value {speed:1}
    execute if entity @s[tag=!bullet.water.large] store result storage temp:_ data.horizontal_speed.speed float 0.04 run scoreboard players get @s action_way
    execute if entity @s[tag=bullet.water.large] store result storage temp:_ data.horizontal_speed.speed float 0.03 run scoreboard players get @s action_way
    function anemoland_contents:sys/entity/bullet/water/tick/horizontal_motion with storage temp:_ data.horizontal_speed

# ヒット処理
    # Large
        # 敵の弾：味方にヒット
            execute if entity @s[tag=bullet.water.large,tag=!pet_bullet] at @s if block ~ ~ ~ #anemoland:space positioned ~-2 ~-2 ~-2 if entity @a[dx=3,dy=3,dz=3,gamemode=adventure] positioned ~2 ~2 ~2 run return run function anemoland_contents:sys/entity/bullet/water/tick/hit
            execute if entity @s[tag=bullet.water.large,tag=!pet_bullet] at @s if block ~ ~ ~ #anemoland:space positioned ~-2 ~-2 ~-2 unless entity @a[dx=3,dy=3,dz=3,gamemode=adventure] if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,dx=3,dy=3,dz=3,limit=1] positioned ~2 ~2 ~2 run return run function anemoland_contents:sys/entity/bullet/water/tick/hit
        # ペットの弾：敵にヒット
            execute if entity @s[tag=bullet.water.large,tag=pet_bullet] at @s if block ~ ~ ~ #anemoland:space positioned ~-2 ~-2 ~-2 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=3,dy=3,dz=3,limit=1] positioned ~2 ~2 ~2 run return run function anemoland_contents:sys/entity/bullet/water/tick/hit
    # Medium
        # 敵の弾：味方にヒット
            execute if entity @s[tag=!bullet.water.large,tag=!pet_bullet] at @s if block ~ ~ ~ #anemoland:space positioned ~-1 ~-1 ~-1 if entity @a[dx=1,dy=1,dz=1,gamemode=adventure] positioned ~1 ~1 ~1 run return run function anemoland_contents:sys/entity/bullet/water/tick/hit
            execute if entity @s[tag=!bullet.water.large,tag=!pet_bullet] at @s if block ~ ~ ~ #anemoland:space positioned ~-1 ~-1 ~-1 unless entity @a[dx=1,dy=1,dz=1,gamemode=adventure] if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,dx=1,dy=1,dz=1,limit=1] positioned ~1 ~1 ~1 run return run function anemoland_contents:sys/entity/bullet/water/tick/hit
        # ペットの弾：敵にヒット
            execute if entity @s[tag=!bullet.water.large,tag=pet_bullet] at @s if block ~ ~ ~ #anemoland:space positioned ~-1 ~-1 ~-1 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=1,dy=1,dz=1,limit=1] positioned ~1 ~1 ~1 run return run function anemoland_contents:sys/entity/bullet/water/tick/hit
    # 地面にヒット
        execute at @s unless block ~ ~0.5 ~ #anemoland:space positioned ^ ^1 ^ run return run function anemoland_contents:sys/entity/bullet/water/tick/hit
    # 5秒経過でヒット処理
        execute if score @s action_time matches 100.. run return run function anemoland_contents:sys/entity/bullet/water/tick/hit
