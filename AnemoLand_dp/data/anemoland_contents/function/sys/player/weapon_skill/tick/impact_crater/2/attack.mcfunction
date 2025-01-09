# 武器データを取得
    data modify storage temp:_ data.weapon_data set from storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data"

# 武器スキルにインパクトクレーターがなければ終了
    execute unless data storage temp:_ data.weapon_data.status.weapon_skills[{id:"impact_crater"}] run return run tellraw @a "test:impact crater じゃない"

# 武器技使用フラグをセット
    scoreboard players set #weapon_skill_flag temp 1

# 武器技ステータスを取得
    data modify storage temp:_ data.weapon_skill_data set from storage temp:_ data.weapon_data.status.weapon_skills[{id:"impact_crater"}]

# メイン攻撃のステータスを取得
    execute store result score #damage.src.attack.base temp run data get storage temp:_ data.weapon_skill_data.attack_damage[1].physical.base 10
    execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.weapon_skill_data.attack_damage[1].physical.mul 10

# パーティクルやサウンド
    execute rotated ~ 0 positioned ^ ^ ^ run particle explosion ~ 0.5 ~ 0 0 0 1 1
    execute rotated ~ 0 positioned ^ ^ ^2.5 run particle explosion ~ 0.5 ~ 0 0 0 1 1
    execute rotated ~90 0 positioned ^ ^ ^2.5 run particle explosion ~ 0.5 ~ 0 0 0 1 1
    execute rotated ~180 0 positioned ^ ^ ^2.5 run particle explosion ~ 0.5 ~ 0 0 0 1 1
    execute rotated ~270 0 positioned ^ ^ ^2.5 run particle explosion ~ 0.5 ~ 0 0 0 1 1

# サブ攻撃のヒット処理
    execute rotated ~ 0 positioned ^ ^ ^ positioned ~-1 -0.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~ 0 positioned ^ ^ ^2.5 positioned ~-1 -0.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~90 0 positioned ^ ^ ^2.5 positioned ~-1 -0.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~180 0 positioned ^ ^ ^2.5 positioned ~-1 -0.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~270 0 positioned ^ ^ ^2.5 positioned ~-1 -0.5 ~-1 as @e[type=#anemoland:mob_core,tag=enemy,dx=1,dy=1,dz=1,sort=nearest,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_player

# 再発動分のゲージが不足していたら技モードを解除
    execute store result score #gauge_consume temp run data get storage temp:_ data.weapon_skill_data.gauge_consume
    execute unless score @s skill_gauge >= #gauge_consume temp run scoreboard players reset @s skill_mode

# 技の終了処理
    function anemoland_contents:sys/player/weapon_skill/tick/impact_crater/end
