# vec1 左右

# アクションバー
    function anemoland:sys/player/item/fishing/battle/normal/actionbar

# パーティクルやサウンド
    particle block{block_state:{Name:"ice"}} ~ 0 ~ 0.1 0 0.1 1 1
    execute at @s run particle minecraft:splash ~ ~ ~ 0 0 0 1 1
    # execute at @s run particle bubble ~ ~ ~ 0.1 0.1 0.1 0.1 1
    execute if predicate anemoland:random_chance/0_2 as @p[tag=player_check] at @s run playsound minecraft:entity.fish.swim master @s ~ ~ ~ 0.2 1.2
    execute if predicate anemoland:random_chance/0_2 as @p[tag=player_check] at @s run playsound minecraft:entity.generic.swim master @s ~ ~ ~ 0.2 1.2

# 魚の引っ張りアクションを開始
    execute unless score @s action_time matches 1.. run return run function anemoland:sys/player/item/fishing/battle/pulled/start

# 左右に動いているとき
    # execute if score @s action1 matches 1 facing entity @e[type=marker,tag=fishing_center,distance=..32,limit=1] eyes rotated ~90 0 run tp ^ ^ ^0.2
    # execute if score @s action1 matches 2 facing entity @e[type=marker,tag=fishing_center,distance=..32,limit=1] eyes rotated ~-90 0 run tp ^ ^ ^0.2
    # 左右に行きすぎると終了
        execute if score @s action1 matches 1 if score @s vec1 matches 60 run return run function anemoland:sys/player/item/fishing/battle/pulled/start
        execute if score @s action1 matches 2 if score @s vec1 matches -60 run return run function anemoland:sys/player/item/fishing/battle/pulled/start
    execute if score @s action1 matches 1 run scoreboard players add @s vec1 1
    execute if score @s action1 matches 2 run scoreboard players remove @s vec1 1
    execute if score @s action1 matches 1 positioned as @p[tag=player_check] positioned as @e[type=marker,tag=fishing_spot,distance=..8,sort=nearest,limit=1] facing entity @s eyes rotated ~90 0 positioned as @s run tp ^ ^ ^0.2
    execute if score @s action1 matches 2 positioned as @p[tag=player_check] positioned as @e[type=marker,tag=fishing_spot,distance=..8,sort=nearest,limit=1] facing entity @s eyes rotated ~-90 0 positioned as @s run tp ^ ^ ^0.2

# 糸を巻いているとき
    execute if entity @p[tag=player_check,tag=using_item] run function anemoland:sys/player/item/fishing/battle/normal/pulling

# execute if predicate anemoland:random_chance/0_02 run function anemoland:sys/player/item/fishing/fishing/on_water/big/pulled/start
