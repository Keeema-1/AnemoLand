# 武器データを取得
    data modify storage temp:_ data.weapon_data set from storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data"

# 武器スキルにインパクトクレーターがなければ終了
    execute unless data storage temp:_ data.weapon_data.status.weapon_skills[{id:"firework_helmet_breaker"}] run return 1

# 武器技使用フラグをセット
    scoreboard players set #weapon_skill_flag temp 1

# 武器技ステータスを取得
    data modify storage temp:_ data.weapon_skill_data set from storage temp:_ data.weapon_data.status.weapon_skills[{id:"firework_helmet_breaker"}]

# メイン攻撃のステータスを取得
    execute store result score #damage.src.attack.base temp run data get storage temp:_ data.weapon_skill_data.attack_damage[0].physical.base 10
    execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.weapon_skill_data.attack_damage[0].physical.mul 10
    execute store result score #damage.src.attack.fire.base temp run data get storage temp:_ data.weapon_skill_data.attack_damage[0].fire.base 10
    execute store result score #damage.src.attack.fire.mul temp run data get storage temp:_ data.weapon_skill_data.attack_damage[0].fire.mul 10

# パーティクルやサウンド
    execute rotated ~ 0 positioned ^ ^ ^1 run particle firework ~ 0.5 ~ 1 1 1 0.01 5
    execute rotated ~ 0 positioned ^ ^ ^1 run particle firework ~ 1.5 ~ 1 1 1 0.01 5
    execute rotated ~ 0 positioned ^ ^ ^1 run particle firework ~ 2.5 ~ 1 1 1 0.01 5
    execute rotated ~ 0 positioned ^ ^ ^1 run particle firework ~ 3.5 ~ 1 1 1 0.01 5
    execute rotated ~ 0 positioned ^ ^ ^1 run particle firework ~ 4.5 ~ 1 1 1 0.01 5
    execute rotated ~ 0 positioned ^ ^ ^1 run particle firework ~ 5.5 ~ 1 1 1 0.01 5
    execute rotated ~ 0 positioned ^ ^ ^1 run particle minecraft:dust{color:[1.0, 0.0, 0.0], scale:1.0} ~ ~0.5 ~ 0.3 0.3 0.3 1000 10
    execute rotated ~ 0 positioned ^ ^ ^1 run particle minecraft:dust{color:[1.0, 1.0, 0.0], scale:1.0} ~ ~1.5 ~ 0.3 0.3 0.3 1000 10
    execute rotated ~ 0 positioned ^ ^ ^1 run particle minecraft:dust{color:[1.0, 0.0, 1.0], scale:1.0} ~ ~2.5 ~ 0.3 0.3 0.3 1000 10
    execute rotated ~ 0 positioned ^ ^ ^1 run particle minecraft:dust{color:[0.0, 0.0, 1.0], scale:1.0} ~ ~3.5 ~ 0.3 0.3 0.3 1000 10
    execute rotated ~ 0 positioned ^ ^ ^1 run particle minecraft:dust{color:[0.0, 1.0, 0.0], scale:1.0} ~ ~4.5 ~ 0.3 0.3 0.3 1000 10
    execute rotated ~ 0 positioned ^ ^ ^1 run particle minecraft:dust{color:[0.0, 1.0, 1.0], scale:1.0} ~ ~5.5 ~ 0.3 0.3 0.3 1000 10

    playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 2 1

# サブ攻撃のヒット処理
    execute rotated ~ 0 positioned ^ ^ ^1 positioned ~-1 -0.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~ 0 positioned ^ ^ ^1 positioned ~-1 0.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~ 0 positioned ^ ^ ^1 positioned ~-1 1.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~ 0 positioned ^ ^ ^1 positioned ~-1 2.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~ 0 positioned ^ ^ ^1 positioned ~-1 3.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~ 0 positioned ^ ^ ^1 positioned ~-1 4.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_player

# 再発動分のゲージが不足していたら技モードを解除
    execute store result score #gauge_consume temp run data get storage temp:_ data.weapon_skill_data.gauge_consume
    execute unless score @s skill_gauge >= #gauge_consume temp run scoreboard players reset @s skill_mode

# 技の終了処理
    function anemoland_contents:sys/player/weapon_skill/tick/firework_helmet_breaker/end
