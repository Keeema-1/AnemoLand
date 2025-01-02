
tellraw @s [{"storage":"temp:_","nbt":"data.pet_components.\"minecraft:custom_data\".display.name","color": "aqua"},{"text": " Level Up !","color":"yellow"}]

# これらはすでに取得済み、数値の更新をリセットしてしまうため行わない
# execute store result score #storage.pet_xp.value temp run data get storage temp:_ data.pet_components."minecraft:custom_data".status.xp.value
# execute store result score #storage.pet_level temp run data get storage temp:_ data.pet_components."minecraft:custom_data".status.level
# execute store result score #storage.pet_xp.required temp run data get storage temp:_ data.pet_components."minecraft:custom_data".status.xp.required
# execute store result score #storage.pet_xp.required_mul temp run data get storage temp:_ data.pet_components."minecraft:custom_data".status.xp.required_mul

# -
execute store result score #storage.health.max temp run data get storage temp:_ data.pet_components."minecraft:custom_data".status.health.max 10
execute store result score #storage.attack.base temp run data get storage temp:_ data.pet_components."minecraft:custom_data".status.attack.base 10.0001
execute store result score #storage.health.max.add temp run data get storage temp:_ data.pet_components."minecraft:custom_data".status.level_up.health 10
execute store result score #storage.attack.base.add temp run data get storage temp:_ data.pet_components."minecraft:custom_data".status.level_up.attack 10

scoreboard players set #const temp 10
scoreboard players operation #health.max.int temp = #storage.health.max temp
scoreboard players operation #health.max.int temp /= #const temp
scoreboard players operation #health.max.decimal temp = #storage.health.max temp
scoreboard players operation #health.max.decimal temp %= #const temp
scoreboard players set #const temp 10
scoreboard players operation #attack.base.int temp = #storage.attack.base temp
scoreboard players operation #attack.base.int temp /= #const temp
scoreboard players operation #attack.base.decimal temp = #storage.attack.base temp
scoreboard players operation #attack.base.decimal temp %= #const temp
# tellraw @s ["",{"text":"    Lv. ","color": "yellow"},{"storage":"temp:_","nbt":"data.pet_components.\"minecraft:custom_data\".status.level","color": "yellow"},{"text":" :"},{"text":" HP ","color": "green"},{"text":"❤","color": "red"},{"score": {"name": "#health.max.int","objective": "temp"}},{"text":"  攻撃力 ","color":"dark_green"},{"score": {"name": "#attack.base.int","objective": "temp"}},{"text":"."},{"score": {"name": "#attack.base.decimal","objective": "temp"}}]
# -

execute store result storage temp:_ data.pet_components."minecraft:custom_data".status.level int 1 run scoreboard players add #storage.pet_level temp 1
execute store result storage temp:_ data.pet_components."minecraft:custom_data".status.xp.value int 1 run scoreboard players operation #storage.pet_xp.value temp -= #storage.pet_xp.required temp
scoreboard players operation #storage.pet_xp.required temp *= #storage.pet_xp.required_mul temp
scoreboard players set #const temp 10
scoreboard players operation #storage.pet_xp.required temp /= #const temp
execute store result storage temp:_ data.pet_components."minecraft:custom_data".status.xp.required int 1.15 run scoreboard players get #storage.pet_xp.required temp
# -

execute store result storage temp:_ data.pet_components."minecraft:custom_data".status.attack.base float 0.1 run scoreboard players operation #storage.attack.base temp += #storage.attack.base.add temp
execute store result storage temp:_ data.pet_components."minecraft:custom_data".status.health.max float 0.1 run scoreboard players operation #storage.health.max temp += #storage.health.max.add temp

scoreboard players set #const temp 10
scoreboard players operation #health.max.int temp = #storage.health.max temp
scoreboard players operation #health.max.int temp /= #const temp
scoreboard players operation #health.max.decimal temp = #storage.health.max temp
scoreboard players operation #health.max.decimal temp %= #const temp
scoreboard players set #const temp 10
scoreboard players operation #attack.base.int temp = #storage.attack.base temp
scoreboard players operation #attack.base.int temp /= #const temp
scoreboard players operation #attack.base.decimal temp = #storage.attack.base temp
scoreboard players operation #attack.base.decimal temp %= #const temp
# tellraw @s ["",{"text":" → Lv. ","color": "yellow"},{"storage":"temp:_","nbt":"data.pet_components.\"minecraft:custom_data\".status.level","color": "yellow"},{"text":" :"},{"text":" HP ","color": "green"},{"text":"❤","color": "red"},{"score": {"name": "#health.max.int","objective": "temp"}},{"text":"  攻撃力 ","color":"dark_green"},{"score": {"name": "#attack.base.int","objective": "temp"}},{"text":"."},{"score": {"name": "#attack.base.decimal","objective": "temp"}}]


# Lore

# Lore
data modify storage temp:_ data.pet_lore set value []

data modify storage temp:_ data.pet_lore_macro set value {}
data modify storage temp:_ data.pet_lore_macro.name set from storage temp:_ data.pet_components."minecraft:custom_data".display.name
data modify storage temp:_ data.pet_lore_macro.level set from storage temp:_ data.pet_components."minecraft:custom_data".status.level
function anemoland:sys/entity/common/pet_level/level_up/lore/name_level with storage temp:_ data.pet_lore_macro

data modify storage temp:_ data.pet_lore_macro set value {}
data modify storage temp:_ data.pet_lore_macro.health set from storage temp:_ data.pet_components."minecraft:custom_data".status.health.max
# data modify storage temp:_ data.pet_lore_macro.attack set from storage temp:_ data.pet_components."minecraft:custom_data".status.attack.base
execute store result storage temp:_ data.pet_lore_macro.attack_int int 1 run scoreboard players get #attack.base.int temp
execute store result storage temp:_ data.pet_lore_macro.attack_decimal int 1 run scoreboard players get #attack.base.decimal temp
function anemoland:sys/entity/common/pet_level/level_up/lore/status with storage temp:_ data.pet_lore_macro

execute if data storage temp:_ data.pet_components."minecraft:custom_data"{is_boss:0b} run data modify storage temp:_ data.pet_lore append value '""'
execute if data storage temp:_ data.pet_components."minecraft:custom_data"{is_boss:0b} run data modify storage temp:_ data.pet_lore append value '[{"text": "このアイテムをペットスロットに設置","color": "gray","italic": false}]'
execute if data storage temp:_ data.pet_components."minecraft:custom_data"{is_boss:0b} run data modify storage temp:_ data.pet_lore append value '[{"text": "することで、自動的にペットが召喚さ","color": "gray","italic": false}]'
execute if data storage temp:_ data.pet_components."minecraft:custom_data"{is_boss:0b} run data modify storage temp:_ data.pet_lore append value '[{"text": "れるようになります","color": "gray","italic": false}]'
execute if data storage temp:_ data.pet_components."minecraft:custom_data"{is_boss:0b} run data modify storage temp:_ data.pet_lore append value '[{"text": "ダウン時のクールタイム：","color": "white","italic": false},{"text": "30秒","italic": false}]'

data modify storage temp:_ data.pet_components."minecraft:lore" set from storage temp:_ data.pet_lore
