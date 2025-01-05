
# メインハンドをドロップアイテムで上書き
    item replace entity @a[tag=player_check,limit=1] weapon.mainhand from entity @s container.0

# ドロップアイテムをkill
    kill @s
