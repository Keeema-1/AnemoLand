
# 移動
    tp ^ ^ ^1.5

# パーティクル
    execute if predicate anemoland:random_chance/0_2 run particle flame ~ ~ ~ 0 0 0 0.01 1

# タイマーを進める
    scoreboard players add @s action_time 1

# ヒット処理
    # 地面にヒット
        execute at @s unless block ~ ~0.5 ~ #anemoland:space positioned ^ ^1 ^ run return run function anemoland_contents:sys/entity/bullet/firework/tick/hit
    # 2秒経過でヒット処理
        execute if score @s action_time matches 40.. run return run function anemoland_contents:sys/entity/bullet/firework/tick/hit
    # 敵の弾：味方にヒット
        execute if entity @s[tag=!pet_bullet] at @s positioned ~-2 ~-2 ~-2 if entity @a[dx=3,dy=3,dz=3,gamemode=adventure] positioned ~2 ~2 ~2 run return run function anemoland_contents:sys/entity/bullet/firework/tick/hit
        execute if entity @s[tag=!pet_bullet] at @s positioned ~-2 ~-2 ~-2 unless entity @a[dx=3,dy=3,dz=3,gamemode=adventure] if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,dx=3,dy=3,dz=3,limit=1] positioned ~2 ~2 ~2 run return run function anemoland_contents:sys/entity/bullet/firework/tick/hit
    # ペットの弾：敵にヒット
        execute if entity @s[tag=pet_bullet] at @s positioned ~-2 ~-2 ~-2 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=3,dy=3,dz=3,limit=1] positioned ~2 ~2 ~2 run return run function anemoland_contents:sys/entity/bullet/firework/tick/hit
