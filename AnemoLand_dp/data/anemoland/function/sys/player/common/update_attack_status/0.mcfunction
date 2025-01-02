#> anemoland:sys/player/common/update_attack/0
#
# 装備が変わった時など、プレイヤーの攻撃力ステータスを更新
#
# @within
#   function anemoland:sys/player/advancement/inventory_changed/00
#   function anemoland:sys/player/item/change_slot

execute store result score @s attack.base_total run data get storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data".status.attack.base 10
scoreboard players operation @s attack.base_total += @s attack.base
execute store result score @s attack.mul run data get storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data".status.attack.mul
execute unless data storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data".status.attack.mul run scoreboard players set @s attack.mul 10
