#> anemoland:sys/player/advancement/player_hurt_entity/add_skill_gauge/0
#
# 80%以上のチャージ率でenemyタグ付きエンティティを攻撃したら実行される
# スキルゲージを加算する
#
# @within advancement anemoland:player_hurt_entity/add_skill_gauge

# 再検知用に進捗を剥奪
    advancement revoke @s only anemoland:player_hurt_entity/add_skill_gauge
# スキルモード中はスキルゲージが増えない
    execute if score @s skill_mode matches 1.. run return 1
# メインハンドのアイテムデータを取得
    data modify storage temp:_ data.weapon_data set from entity @s SelectedItem.components."minecraft:custom_data"
# アイテムが武器でなければスキップ
    execute unless data storage temp:_ data.weapon_data{item_type:"weapon"} run return 1
# 武器のゲージ獲得量を取得
    execute store result score #skill_gauge_get temp run data get storage temp:_ data.weapon_data.status.skill_gauge.get
# スキルゲージスコアを加算
    scoreboard players operation @s skill_gauge += #skill_gauge_get temp
# 最大値を超えたら調整
    execute if score @s skill_gauge > @s skill_gauge_max run scoreboard players operation @s skill_gauge = @s skill_gauge_max
