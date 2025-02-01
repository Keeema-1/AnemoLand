
# 釣竿をドロップ=即座に釣りを終了
# いちいち投げてたら面倒なので、ドロップしてもすぐメインハンドに戻す
    execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{tool_type:"fishing_rod"}}}}] run return run function anemoland:sys/player/item/drop/ender_eye/fishing_rod/0
