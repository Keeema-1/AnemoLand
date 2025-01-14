
function anemoland_contents:sys/player/common/player_storage/read

execute if data storage temp:_ data.player_storage.settings{movie_camera_is_near:1b} run spectate @e[type=armor_stand,tag=camera.near,tag=movie.bagikeros,limit=1]
execute unless data storage temp:_ data.player_storage.settings{movie_camera_is_near:1b} run spectate @e[type=armor_stand,tag=camera.far,tag=movie.bagikeros,limit=1]
