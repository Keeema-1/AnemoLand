#> anemoland_contents:sys/player/skill/enter_field/0
#
# フィールドに入った際のスキル処理
#
# @within anemoland:sys/player/area/common/field/enter

# プレイヤー別ストレージを取得
    function anemoland:sys/player/common/player_storage/read

execute if data storage temp:_ data.player_storage.skill_levels.initial_gauge store result score @s skill_gauge run data get storage temp:_ data.player_storage.skill_levels.initial_gauge 1
