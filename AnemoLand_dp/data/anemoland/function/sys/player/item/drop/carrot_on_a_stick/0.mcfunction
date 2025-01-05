
scoreboard players reset @s dropped.carrot_on_a_stick

# リマインド: インベントリから捨てた時の処理を追加

# メインハンドが空なら次の関数を実行
    execute as @e[type=item,distance=..2,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] unless data storage temp:_ data.player_data.SelectedItem.count run function anemoland:sys/player/item/drop/carrot_on_a_stick/00
