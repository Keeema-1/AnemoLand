
scoreboard players reset @s dropped.ender_eye

# リマインド: インベントリから捨てた時の処理を追加

# メインハンドが空なら次の関数を実行
    execute as @e[type=item,distance=..2,nbt={Item:{id:"minecraft:ender_eye"}}] unless data storage temp:_ data.player_data.SelectedItem.count run function anemoland:sys/player/item/drop/ender_eye/00
