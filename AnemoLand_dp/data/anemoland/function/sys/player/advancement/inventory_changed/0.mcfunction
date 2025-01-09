#> anemoland:sys/player/advancement/inventory_changed/0
#
# インベントリが変化した時に実行される
#
# @within advancement anemoland:inventory_changed

# メニュー処理など
    execute if entity @s[tag=!skip_inventory_changed,gamemode=adventure] run function anemoland:sys/player/advancement/inventory_changed/00

# 再検知用に進捗を剥奪 (必ず最後に実行！でないと無限ループの恐れあり)
    advancement revoke @s only anemoland:inventory_changed

# 一時的なスコアとストレージをリセット
    scoreboard players reset * temp
    data remove storage temp:_ data
