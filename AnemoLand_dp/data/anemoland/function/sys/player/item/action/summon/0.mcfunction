
# ゲージ消費量を取得
    execute store result score #gauge_consume temp run data get storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data".status.gauge_consume_when_summon
# スキルゲージが不足していたら終了
    execute unless score @s skill_gauge >= #gauge_consume temp run return 1
# クールダウン中ならば終了
    execute if score @s pet_boss1.timer matches 1.. run return 1

function anemoland:sys/player/common/player_storage/read

execute if data storage temp:_ data.player_storage.pet.boss1.components run return 1

scoreboard players operation @s skill_gauge -= #gauge_consume temp

data modify storage temp:_ data.pet_components set from storage temp:_ data.player_data.SelectedItem.components

data modify storage temp:_ data.pet_id.pet_id set from storage temp:_ data.pet_components."minecraft:custom_data".pet_id
data modify storage temp:_ data.pet_id.slot set value 1
function anemoland:sys/player/area/common/field/summon_pet_boss_ with storage temp:_ data.pet_id

data modify storage temp:_ data.player_storage.pet.boss1.components set from storage temp:_ data.pet_components

scoreboard players set @s pet_boss1.timer 1800

function anemoland:sys/player/common/player_storage/write
