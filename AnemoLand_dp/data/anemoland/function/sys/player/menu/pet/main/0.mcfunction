
# 置かれたアイテムをドロップ
    function anemoland:sys/player/menu/common/drop_item/0
    # 1..3: 置かれたアイテムがペットでもメニューでもなければドロップ
        execute unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{is_pet:1b,is_boss:0b}}}] unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{menu:1b}}}] run function anemoland:sys/player/menu/common/drop_item/1
        execute unless data storage temp:_ data.player_data.Inventory[{Slot:11b,components:{"minecraft:custom_data":{is_pet:1b,is_boss:0b}}}] unless data storage temp:_ data.player_data.Inventory[{Slot:11b,components:{"minecraft:custom_data":{menu:1b}}}] run function anemoland:sys/player/menu/common/drop_item/2
        execute unless data storage temp:_ data.player_data.Inventory[{Slot:12b,components:{"minecraft:custom_data":{is_pet:1b,is_boss:0b}}}] unless data storage temp:_ data.player_data.Inventory[{Slot:12b,components:{"minecraft:custom_data":{menu:1b}}}] run function anemoland:sys/player/menu/common/drop_item/3
    function anemoland:sys/player/menu/common/drop_item/4
    function anemoland:sys/player/menu/common/drop_item/5
    function anemoland:sys/player/menu/common/drop_item/6
    function anemoland:sys/player/menu/common/drop_item/7
    function anemoland:sys/player/menu/common/drop_item/8

# クリック処理
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:9b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/pet/main/click/0
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:17b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/pet/main/click/8

# フィールド・その他で分岐
    # フィールド
        execute if entity @s[tag=in_battle_field] run function anemoland:sys/player/menu/pet/main/0_field
    # その他
        execute if entity @s[tag=!in_battle_field] run function anemoland:sys/player/menu/pet/main/0_village

# メニュー用アイテムをリセット
    function anemoland:sys/player/menu/pet/main/reset
