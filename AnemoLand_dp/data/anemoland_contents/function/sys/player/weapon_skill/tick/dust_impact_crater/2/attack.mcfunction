# 武器データを取得
    data modify storage temp:_ data.weapon_data set from storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data"

# 武器スキルにインパクトクレーターがなければ終了
    execute unless data storage temp:_ data.weapon_data.status.weapon_skills[{id:"dust_impact_crater"}] run return 1

# 武器技使用フラグをセット
    scoreboard players set #weapon_skill_flag temp 1

# 武器技ステータスを取得
    data modify storage temp:_ data.weapon_skill_data set from storage temp:_ data.weapon_data.status.weapon_skills[{id:"dust_impact_crater"}]

# サブ攻撃のステータスを取得
    execute store result score #attack.base temp run data get storage temp:_ data.weapon_skill_data.attack_damage[1].fire.base 10
    execute store result score #attack.mul temp run data get storage temp:_ data.weapon_skill_data.attack_damage[1].fire.mul 10

# 粉塵を撒く
    execute positioned over motion_blocking_no_leaves positioned ~ ~1 ~ rotated ~ 0 positioned ^ ^ ^ run function anemoland_contents:sys/entity/bullet/auto_ignite_dust/summon/fast/0
    execute positioned over motion_blocking_no_leaves positioned ~ ~1 ~ rotated ~45 0 positioned ^ ^ ^2 run function anemoland_contents:sys/entity/bullet/auto_ignite_dust/summon/fast/0
    execute positioned over motion_blocking_no_leaves positioned ~ ~1 ~ rotated ~-45 0 positioned ^ ^ ^2 run function anemoland_contents:sys/entity/bullet/auto_ignite_dust/summon/fast/0
    execute positioned over motion_blocking_no_leaves positioned ~ ~1 ~ rotated ~135 0 positioned ^ ^ ^2 run function anemoland_contents:sys/entity/bullet/auto_ignite_dust/summon/fast/0
    execute positioned over motion_blocking_no_leaves positioned ~ ~1 ~ rotated ~-135 0 positioned ^ ^ ^2 run function anemoland_contents:sys/entity/bullet/auto_ignite_dust/summon/fast/0

# 再発動分のゲージが不足していたら技モードを解除
    execute store result score #gauge_consume temp run data get storage temp:_ data.weapon_skill_data.gauge_consume
    execute unless score @s skill_gauge >= #gauge_consume temp run scoreboard players reset @s skill_mode

# 技の終了処理
    function anemoland_contents:sys/player/weapon_skill/tick/impact_crater/end
