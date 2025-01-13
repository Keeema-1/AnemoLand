
execute if score #selected_set temp matches 1 run data modify storage temp:_ data.selected_set set from storage temp:_ data.player_storage.equipments.armor1
execute if score #selected_set temp matches 2 run data modify storage temp:_ data.selected_set set from storage temp:_ data.player_storage.equipments.armor2
execute if score #selected_set temp matches 3 run data modify storage temp:_ data.selected_set set from storage temp:_ data.player_storage.equipments.armor3

item modify entity @s inventory.0 anemoland:player_menu/status/gold

execute store result score #armor temp run attribute @s armor get 10.01
execute store result score #armor.base temp run attribute @s armor base get 10.01
scoreboard players operation #armor.equipment temp = #armor temp
scoreboard players operation #armor.equipment temp -= #armor.base temp
item modify entity @s inventory.0 anemoland:player_menu/status/armor

# tellraw @a {"score":{"name": "@s","objective": "armor.fire.mul"}}
# tellraw @a {"score":{"name": "@s","objective": "armor.water.mul"}}
# 火耐性
    scoreboard players set #elemental_resistance temp 100
    execute if score @s armor.fire.mul matches 0.. run scoreboard players operation #elemental_resistance temp = @s armor.fire.mul
    scoreboard players remove #elemental_resistance temp 100
    execute unless score #elemental_resistance temp matches 0 run item modify entity @s inventory.0 anemoland:player_menu/status/elemental_resistance/fire
# 水耐性
    scoreboard players set #elemental_resistance temp 100
    execute if score @s armor.water.mul matches 0.. run scoreboard players operation #elemental_resistance temp = @s armor.water.mul
    scoreboard players remove #elemental_resistance temp 100
    execute unless score #elemental_resistance temp matches 0 run item modify entity @s inventory.0 anemoland:player_menu/status/elemental_resistance/water
# 氷耐性
    scoreboard players set #elemental_resistance temp 100
    execute if score @s armor.ice.mul matches 0.. run scoreboard players operation #elemental_resistance temp = @s armor.ice.mul
    scoreboard players remove #elemental_resistance temp 100
    execute unless score #elemental_resistance temp matches 0 run item modify entity @s inventory.0 anemoland:player_menu/status/elemental_resistance/ice
# 雷耐性
    scoreboard players set #elemental_resistance temp 100
    execute if score @s armor.thunder.mul matches 0.. run scoreboard players operation #elemental_resistance temp = @s armor.thunder.mul
    scoreboard players remove #elemental_resistance temp 100
    execute unless score #elemental_resistance temp matches 0 run item modify entity @s inventory.0 anemoland:player_menu/status/elemental_resistance/thunder

# スキル
    item modify entity @s inventory.0 anemoland:player_menu/status/skill/base
    function anemoland_contents:sys/player/menu/status/skill/slot0/branch
