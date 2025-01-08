#> anemoland_contents:sys/player/skill/equipment_updated/0
#
# 装備の更新処理を行なった際のスキル処理
#
# @within anemoland:sys/player/menu/armor_update/00

function anemoland:sys/player/common/player_storage/read

execute store result score @s skill_gauge_max run data get storage temp:_ data.player_storage.skill_levels.gauge_extension 1
scoreboard players add @s skill_gauge_max 300
