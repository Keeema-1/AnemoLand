function anemoland:sys/player/menu/common/click

scoreboard players reset #temp temp
execute if data storage temp:_ data.player_storage.settings{movie_camera_is_near:1b} run scoreboard players set #temp temp 1
execute if score #temp temp matches 1 run data modify storage temp:_ data.player_storage.settings.movie_camera_is_near set value 0b
execute unless score #temp temp matches 1 run data modify storage temp:_ data.player_storage.settings.movie_camera_is_near set value 1b

function anemoland:sys/player/menu/setting/main/init
