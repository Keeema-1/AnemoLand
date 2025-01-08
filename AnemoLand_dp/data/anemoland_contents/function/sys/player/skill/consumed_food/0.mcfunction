#> anemoland_contents:sys/player/skill/consumed_food/0
#
# 食べ物を消費した際のスキル処理
#
# @within anemoland:sys/player/advancement/consume_item/food

# プレイヤー別ストレージを取得
    function anemoland:sys/player/common/player_storage/read

# 回復量アップスキルのレベルに応じて再生を付与
    execute if data storage temp:_ data.player_storage.skill_levels{recovery_up:1} run effect give @s regeneration 1 1 true
    execute if data storage temp:_ data.player_storage.skill_levels{recovery_up:2} run effect give @s regeneration 2 1 true
    execute if data storage temp:_ data.player_storage.skill_levels{recovery_up:3} run effect give @s regeneration 3 1 true
    execute if data storage temp:_ data.player_storage.skill_levels{recovery_up:4} run effect give @s regeneration 4 1 true
    execute if data storage temp:_ data.player_storage.skill_levels{recovery_up:5} run effect give @s regeneration 5 1 true
