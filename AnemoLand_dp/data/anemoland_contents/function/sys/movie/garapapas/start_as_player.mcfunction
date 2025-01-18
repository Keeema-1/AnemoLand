# スペクテイターモード
    gamemode spectator @s
# ムービー中タグ
    tag @s add playing_movie
# 設定に応じてカメラを切り替え
    function anemoland_contents:sys/player/common/player_storage/read
    tag @s remove movie.near
    execute if data storage temp:_ data.player_storage.settings{movie_camera_is_near:1b} run tag @s add movie.near
    execute if entity @s[tag=movie.near] run spectate @e[type=armor_stand,tag=camera.near,tag=movie.garapapas,limit=1]
    execute if entity @s[tag=!movie.near] run spectate @e[type=armor_stand,tag=camera.far,tag=movie.garapapas,limit=1]
# フェードアウト・フェードイン演出
    title @s times 0 20 20
    title @s subtitle {"translate":"anemoland.title.black"}
    title @s title ""
