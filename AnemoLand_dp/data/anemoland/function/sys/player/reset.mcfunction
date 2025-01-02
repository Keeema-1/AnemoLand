#> anemoland:sys/player/reset
#
# プレイヤーの状態のリセット
#
# @within
#    function anemoland:sys/player/respawn
#    function anemoland:sys/player/login

# プレイヤーのステータス効果をリセット
    effect give @s night_vision infinite 0 true
    effect give @s resistance infinite 31 true

# gamemode adventure
# tag @s remove playing_movie
