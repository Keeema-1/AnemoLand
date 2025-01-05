
# 武器をドロップ=スキルモード切り替え
    execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{item_type:"weapon"}}}}] run return run function anemoland:sys/player/item/drop/carrot_on_a_stick/weapon/0

# 釣竿をドロップ=即座に釣りを終了
# いちいち投げてたら面倒なので、ドロップしてもすぐメインハンドに戻す
    execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{item_type:"fishing_rod"}}}}] run return run function anemoland:sys/player/item/drop/carrot_on_a_stick/fishing_rod/0
