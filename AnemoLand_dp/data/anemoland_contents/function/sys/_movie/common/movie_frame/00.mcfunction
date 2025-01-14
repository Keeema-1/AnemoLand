function anemoland_contents:sys/player/common/player_storage/read

# auto
execute if data storage temp:_ data.player_storage.settings{movie_frame:0b} run title @s title ""
execute unless data storage temp:_ data.player_storage.settings{movie_frame:0b} run title @s title {"translate":"title.movie_frame"}

# title @a[tag=playing_movie,distance=..64] title {"translate":"title.movie_frame.gui_size.2"}
