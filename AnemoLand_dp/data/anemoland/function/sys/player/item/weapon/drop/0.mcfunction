
scoreboard players reset @s dropped.carrot_on_a_stick

# リマインド: インベントリから捨てた時の処理を追加

tag @s add me
execute as @e[type=item,distance=..2,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{item_type:"weapon"}}}}] unless data storage temp:_ data.player_data.SelectedItem.count run function anemoland:sys/player/item/weapon/drop/00
execute as @e[type=item,distance=..2,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{tool_type:"fishing_rod"}}}}] unless data storage temp:_ data.player_data.SelectedItem.count run function anemoland:sys/player/item/weapon/drop/01
tag @s remove me

# tellraw @a "drop"

# playsound block.note_block.bell master @s ~ ~ ~ 1 1.8
