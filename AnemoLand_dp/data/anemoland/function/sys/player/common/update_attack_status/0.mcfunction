#> anemoland:sys/player/common/update_attack/0
#
# 装備が変わった時など、プレイヤーの攻撃力ステータスを更新
#
# @within
#   function anemoland:sys/player/advancement/inventory_changed/00
#   function anemoland:sys/player/item/change_slot

# attack.base_total: 基礎攻撃力+武器攻撃力
    execute store result score @s attack.base_total run data get storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data".status.attack.base 10
    scoreboard players operation @s attack.base_total += @s attack.base

# attack.mul: 武器倍率
    execute store result score @s attack.mul run data get storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data".status.attack.mul
    execute unless data storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data".status.attack.mul run scoreboard players set @s attack.mul 10

# 属性攻撃力
    scoreboard players set @s attack.fire.base 0
    execute store result score @s attack.fire.base run data get storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data".status.elemental_attack.fire 10
    scoreboard players set @s attack.water.base 0
    execute store result score @s attack.water.base run data get storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data".status.elemental_attack.water 10
    scoreboard players set @s attack.ice.base 0
    execute store result score @s attack.ice.base run data get storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data".status.elemental_attack.ice 10
    scoreboard players set @s attack.thunder.base 0
    execute store result score @s attack.thunder.base run data get storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data".status.elemental_attack.thunder 10

