#> anemoland:sys/player/item/weapon/weapon_skill/hit
#
# 武器技の発動
#
# @within function anemoland:sys/player/enchantment/post_attack/victim2victim/as_attacker_player

# 選択中の武器技を取得
    execute if score @s skill_mode matches 1 run data modify storage temp:_ data.weapon_skill_data set from storage temp:_ data.weapon_data.status.weapon_skills[0]
    execute if score @s skill_mode matches 2 run data modify storage temp:_ data.weapon_skill_data set from storage temp:_ data.weapon_data.status.weapon_skills[1]
    execute if score @s skill_mode matches 3 run data modify storage temp:_ data.weapon_skill_data set from storage temp:_ data.weapon_data.status.weapon_skills[2]

# プレイヤーのステータスを取得
function anemoland:sys/player/common/damage/src/get_status

# 消費量分の技ゲージが不足していたら終了
    execute store result score #gauge_consume temp run data get storage temp:_ data.weapon_skill_data.gauge_consume
    execute unless score @s skill_gauge >= #gauge_consume temp run return 1

# 技ごとの分岐
    function anemoland_contents:sys/player/weapon_skill/hit/branch
