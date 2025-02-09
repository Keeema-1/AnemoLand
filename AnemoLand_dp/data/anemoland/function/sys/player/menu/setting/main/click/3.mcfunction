function anemoland:sys/player/menu/common/click

scoreboard players set #temp temp 1
execute if data storage temp:_ data.player_storage.settings.gui_size store result score #temp temp run data get storage temp:_ data.player_storage.settings.gui_size
execute if score #temp temp matches 1 run data modify storage temp:_ data.player_storage.settings.gui_size set value 2b
execute if score #temp temp matches 2 run data modify storage temp:_ data.player_storage.settings.gui_size set value 3b
execute if score #temp temp matches 3 run data modify storage temp:_ data.player_storage.settings.gui_size set value 4b
execute if score #temp temp matches 4 run data modify storage temp:_ data.player_storage.settings.gui_size set value 5b
execute if score #temp temp matches 5 run data modify storage temp:_ data.player_storage.settings.gui_size set value 6b
execute if score #temp temp matches 6 run data modify storage temp:_ data.player_storage.settings.gui_size set value 7b
execute if score #temp temp matches 7 run data modify storage temp:_ data.player_storage.settings.gui_size set value 1b

function anemoland:sys/player/menu/setting/main/init
