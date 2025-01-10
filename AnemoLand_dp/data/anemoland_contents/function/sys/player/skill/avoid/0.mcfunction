#> anemoland_contents:sys/player/skill/avoid/0
#
# 回避した際のスキル処理
#
# @within anemoland:sys/player/state/jump/avoid/0

function anemoland:sys/player/common/player_storage/read

execute if data storage temp:_ data.player_storage.skill_levels.avoid_distance store result score $strength hb.Motion run data get storage temp:_ data.player_storage.skill_levels.avoid_distance 1000
execute if data storage temp:_ data.player_storage.skill_levels.dust_avoiding if score @s area2 matches 1.. run function anemoland_contents:sys/player/skill/avoid/dust_avoiding/0
