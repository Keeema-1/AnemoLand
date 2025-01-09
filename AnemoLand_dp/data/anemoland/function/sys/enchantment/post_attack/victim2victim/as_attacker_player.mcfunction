# プレイヤーのアイテムデータを取得
    data modify storage temp:_ data.player_data.SelectedItem set from entity @s SelectedItem
    data modify storage temp:_ data.player_data.Inventory set from entity @s Inventory

# プレイヤーのステータスを取得
    function anemoland:sys/player/common/damage/src/get_status

# パーティクル
    data modify storage temp:_ data.weapon_data set from storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data"
    execute if data storage temp:_ data.weapon_data{item_type:"weapon"} run function anemoland:sys/enchantment/post_attack/victim2victim/particle/0

# 技モードでなければ終了
    execute unless score @s skill_mode matches 1.. run return 1

# 武器でなければ終了
    execute unless data storage temp:_ data.weapon_data{item_type:"weapon"} run return 1

# 技スキル使用フラグをセット
    scoreboard players set #weapon_skill_flag temp 1

# 武器技の発動
    execute at @s run function anemoland:sys/player/item/weapon/weapon_skill/hit

# もう一度発動するだけのゲージ量がなければスキルモードを解除
    execute unless score @s skill_gauge >= #gauge_consume temp run scoreboard players reset @s skill_mode
