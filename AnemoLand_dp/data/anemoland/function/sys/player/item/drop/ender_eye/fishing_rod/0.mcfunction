
# メインハンドをドロップアイテムで上書き
    item replace entity @a[tag=player_check,limit=1] weapon.mainhand from entity @s container.0

# ドロップアイテムをkill
    kill @s

# 釣り中
    execute as @p[tag=player_check,tag=fishing] run function anemoland:sys/player/item/fishing/end
