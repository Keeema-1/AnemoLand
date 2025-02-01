
# プレイヤーのメインハンド
    item replace entity @s weapon.mainhand from entity @p[tag=player_check] player.cursor

# バンドルにメニューアイテムが入っていたら中身を消去
    execute if data entity @s HandItems[0].components."minecraft:bundle_contents"[{id:"minecraft:knowledge_book",components:{"minecraft:custom_data":{menu:1b}}}] run item replace entity @p[tag=player_check] player.cursor with bundle

kill @s
