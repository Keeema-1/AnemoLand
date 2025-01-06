function anemoland:sys/player/menu/common/click

scoreboard players reset #temp temp
execute if data storage temp:_ data.player_storage.settings{movie_frame:0b} run scoreboard players set #temp temp 0
execute if score #temp temp matches 0 run data modify storage temp:_ data.player_storage.settings.movie_frame set value 1b
execute unless score #temp temp matches 0 run data modify storage temp:_ data.player_storage.settings.movie_frame set value 0b

function anemoland:sys/player/menu/setting/main/init
