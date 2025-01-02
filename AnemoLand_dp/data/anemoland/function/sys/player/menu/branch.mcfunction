#> anemoland:sys/player/menu/branch
#
# メニュー処理
#
# @input
#   storage temp:_
#       data.player_data.SelectedItem
#       data.player_data.Inventory_changed
#   tag @s player_check
#
# @within function anemoland:sys/player/menu/0

execute unless score @s menu0 matches 1.. run return run function anemoland:sys/player/menu/main/0
execute if score @s menu0 matches 1 run return run function anemoland:sys/player/menu/pet/0
execute if score @s menu0 matches 2 run return run function anemoland:sys/player/menu/armor/0
execute if score @s menu0 matches 3 run return run function anemoland:sys/player/menu/tp/0
execute if score @s menu0 matches 4 run return run function anemoland:sys/player/menu/setting/0
execute if score @s menu0 matches 5 run return run function anemoland:sys/player/menu/team/0
