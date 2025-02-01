
# 武器をドロップ=スキルモード切り替え
    execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{item_type:"weapon"}}}}] run return run function anemoland:sys/player/item/drop/carrot_on_a_stick/weapon/0
