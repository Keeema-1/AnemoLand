# ドロップしたアイテムのデータを取得
    data modify storage temp:_ data.dropped_item set from entity @s Item

# メインハンドをドロップアイテムで上書き
    item replace entity @a[tag=player_check,limit=1] weapon.mainhand from entity @s container.0

# ドロップアイテムをkill
    kill @s

# スキルモード切り替え
    execute as @a[tag=player_check,limit=1] run function anemoland:sys/player/item/drop/carrot_on_a_stick/weapon/00
