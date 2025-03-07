
data modify storage temp:_ data.Items set from block ~ ~ ~ Items
data modify storage temp:_ data.Items2 set from storage temp:_ data.Items

# 価格を計算
    scoreboard players set #sell_price_total temp 0
    data remove storage temp:_ data.Items2[{Slot:26b}]
    function anemoland:sys/player/area/common/village/chest_menu/sell/calc_price

# loreを更新
    item modify block ~ ~ ~ container.26 anemoland:chest_menu/sell/sell_price_lore

# 売却をクリックしていなければ終了
    execute store result block ~ ~ ~ Items[{Slot:26b}].components."minecraft:custom_data".sell_price int 1 run scoreboard players get #sell_price_total temp
    execute if data storage temp:_ data.Items[{Slot:26b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run return 1

# 売却メニューをセット
    data modify block ~ ~ ~ Items set value [{Slot:26b,id:"knowledge_book",count:1,components:{"minecraft:item_model":"anemoland:gui/icon/sell","minecraft:custom_name":'{"translate":"anemoland.chest_menu.sell.sell","italic":false}',"minecraft:custom_data":{chest_menu:1b,get_gold:1b}}}]

# playsound ui.button.click master @a ~ ~ ~ 1 1

# メニュー用アイテムの位置に置いたアイテムをドロップ
    data modify storage temp:_ data.drop_item set from storage temp:_ data.Items[{Slot:26b}]
    execute if data storage temp:_ data.Items[{Slot:26b}] run function anemoland:sys/player/menu/common/drop_item/common

# アイテムが置かれてなければ終了
    data remove storage temp:_ data.Items[{Slot:26b}]
    execute unless data storage temp:_ data.Items[0] run return 1

# 売却
    playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.2

    execute as @a[distance=..16] if items entity @s player.cursor knowledge_book[custom_data~{get_gold:1b}] run function anemoland:sys/player/area/common/village/chest_menu/sell/get_gold
