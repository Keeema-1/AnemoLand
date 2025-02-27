#> anemoland:sys/player/item/fishing/0
#
# 釣り処理
# as player
# action0: アイテムを入れ替えた時にリセットされる
#
# @input
#   tag @s fishing
#       釣り中タグ、advancement/using_item で付与される
#
# @within function anemoland:sys/player/item/0

# メインハンドが釣り竿でなければ終了
    execute unless items entity @s weapon.mainhand *[custom_data~{item_type:"tool",tool_type:"fishing_rod"}] run return run function anemoland:sys/player/item/fishing/end

# 釣りスポットから離れたら終了
    execute positioned ~-3 ~-3 ~-3 unless entity @e[type=marker,tag=fishing_spot,dx=5,dy=5,dz=5] run return run function anemoland:sys/player/item/fishing/end

# 釣り用タイマー
    execute unless score @s action_time matches 0.. run scoreboard players remove @s action_time 1

scoreboard players operation #player_id temp = @s player_id

# 釣り開始
    execute unless score @s action0 matches 1.. unless score @s action_time matches 1.. if entity @s[tag=using_item] run function anemoland:sys/player/item/fishing/start

# 自分の浮きを実行者として関数を実行
    execute as @e[type=text_display,tag=fishing_bobber,distance=..32] if score @s player_id = #player_id temp at @s run return run function anemoland:sys/player/item/fishing/00

# 自分の浮きが無ければ終了
    function anemoland:sys/player/item/fishing/end
