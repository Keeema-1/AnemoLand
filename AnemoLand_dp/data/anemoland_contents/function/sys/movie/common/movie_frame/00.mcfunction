function anemoland:sys/player/common/player_storage/read

# 非表示
    execute if data storage temp:_ data.player_storage.settings{movie_frame:0b} run return run title @s title ""

# GUIの大きさ設定に応じてサイズ変更
    execute if data storage temp:_ data.player_storage.settings{gui_size:1b} run return run title @s title {"translate":"anemoland.title.movie_frame.gui_size.1"}
    execute if data storage temp:_ data.player_storage.settings{gui_size:2b} run return run title @s title {"translate":"anemoland.title.movie_frame.gui_size.2"}
    execute if data storage temp:_ data.player_storage.settings{gui_size:3b} run return run title @s title {"translate":"anemoland.title.movie_frame.gui_size.3"}
    execute if data storage temp:_ data.player_storage.settings{gui_size:4b} run return run title @s title {"translate":"anemoland.title.movie_frame.gui_size.4"}
    execute if data storage temp:_ data.player_storage.settings{gui_size:5b} run return run title @s title {"translate":"anemoland.title.movie_frame.gui_size.5"}
    execute if data storage temp:_ data.player_storage.settings{gui_size:6b} run return run title @s title {"translate":"anemoland.title.movie_frame.gui_size.6"}
    execute if data storage temp:_ data.player_storage.settings{gui_size:7b} run return run title @s title {"translate":"anemoland.title.movie_frame.gui_size.7"}
    title @s title {"translate":"anemoland.title.movie_frame.gui_size.1"}
