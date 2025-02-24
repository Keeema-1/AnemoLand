
clear @s #anemoland:armor[custom_data={menu_armor:1b}]

execute if score #selected_set temp matches 1 run data modify storage temp:_ data.selected_set set from storage temp:_ data.player_storage.equipments.armor1
execute if score #selected_set temp matches 2 run data modify storage temp:_ data.selected_set set from storage temp:_ data.player_storage.equipments.armor2
execute if score #selected_set temp matches 3 run data modify storage temp:_ data.selected_set set from storage temp:_ data.player_storage.equipments.armor3

data modify storage temp:_ data.player_storage.equipments.active_armor set from storage temp:_ data.selected_set

# fire
    scoreboard players set #armor.fire.mul temp 100
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.head.components."minecraft:custom_data".status.elemental_resistance.fire
    scoreboard players operation #armor.fire.mul temp -= #temp temp
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.chest.components."minecraft:custom_data".status.elemental_resistance.fire
    scoreboard players operation #armor.fire.mul temp -= #temp temp
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.legs.components."minecraft:custom_data".status.elemental_resistance.fire
    scoreboard players operation #armor.fire.mul temp -= #temp temp
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.feet.components."minecraft:custom_data".status.elemental_resistance.fire
    scoreboard players operation #armor.fire.mul temp -= #temp temp
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.amulet1.components."minecraft:custom_data".status.elemental_resistance.fire
    scoreboard players operation #armor.fire.mul temp -= #temp temp
    scoreboard players operation @s armor.fire.mul = #armor.fire.mul temp

# water
    scoreboard players set #armor.water.mul temp 100
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.head.components."minecraft:custom_data".status.elemental_resistance.water
    scoreboard players operation #armor.water.mul temp -= #temp temp
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.chest.components."minecraft:custom_data".status.elemental_resistance.water
    scoreboard players operation #armor.water.mul temp -= #temp temp
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.legs.components."minecraft:custom_data".status.elemental_resistance.water
    scoreboard players operation #armor.water.mul temp -= #temp temp
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.feet.components."minecraft:custom_data".status.elemental_resistance.water
    scoreboard players operation #armor.water.mul temp -= #temp temp
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.amulet1.components."minecraft:custom_data".status.elemental_resistance.water
    scoreboard players operation #armor.water.mul temp -= #temp temp
    scoreboard players operation @s armor.water.mul = #armor.water.mul temp

# ice
    scoreboard players set #armor.ice.mul temp 100
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.head.components."minecraft:custom_data".status.elemental_resistance.ice
    scoreboard players operation #armor.ice.mul temp -= #temp temp
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.chest.components."minecraft:custom_data".status.elemental_resistance.ice
    scoreboard players operation #armor.ice.mul temp -= #temp temp
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.legs.components."minecraft:custom_data".status.elemental_resistance.ice
    scoreboard players operation #armor.ice.mul temp -= #temp temp
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.feet.components."minecraft:custom_data".status.elemental_resistance.ice
    scoreboard players operation #armor.ice.mul temp -= #temp temp
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.amulet1.components."minecraft:custom_data".status.elemental_resistance.ice
    scoreboard players operation #armor.ice.mul temp -= #temp temp
    scoreboard players operation @s armor.ice.mul = #armor.ice.mul temp

# thunder
    scoreboard players set #armor.thunder.mul temp 100
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.head.components."minecraft:custom_data".status.elemental_resistance.thunder
    scoreboard players operation #armor.thunder.mul temp -= #temp temp
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.chest.components."minecraft:custom_data".status.elemental_resistance.thunder
    scoreboard players operation #armor.thunder.mul temp -= #temp temp
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.legs.components."minecraft:custom_data".status.elemental_resistance.thunder
    scoreboard players operation #armor.thunder.mul temp -= #temp temp
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.feet.components."minecraft:custom_data".status.elemental_resistance.thunder
    scoreboard players operation #armor.thunder.mul temp -= #temp temp
    scoreboard players reset #temp temp
    execute store result score #temp temp run data get storage temp:_ data.selected_set.amulet1.components."minecraft:custom_data".status.elemental_resistance.thunder
    scoreboard players operation #armor.thunder.mul temp -= #temp temp
    scoreboard players operation @s armor.thunder.mul = #armor.thunder.mul temp

execute positioned ~ -100 ~ summon armor_stand run function anemoland:sys/player/menu/armor_update/000

# 発動スキルレベルを計算
    function anemoland:sys/player/common/skill_levels/0
    data modify storage temp:_ data.player_storage.skill_levels set from storage temp:_ data.skill_levels

# スキル関連
    function anemoland_contents:sys/player/skill/equipment_updated/0
