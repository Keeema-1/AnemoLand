#> anemoland:sys/player/init_player_storage
#
# プレイヤー別ストレージの初期化
#
# @within function anemoland:sys/player/init

$data modify storage player:_ data merge value {$(id):{}}
