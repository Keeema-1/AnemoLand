# schedule
    schedule function anemoland_contents:sys/movie/ojinushi/tick 1t replace
# タイマーを加算
    scoreboard players add #movie.ojinushi action_time 1
# manual関数を実行
    function anemoland_contents:sys/movie/ojinushi/manual/tick
# 遠距離カメラを近距離カメラの後ろにtp
    execute as @e[type=armor_stand,tag=movie.ojinushi,tag=camera.far,distance=..64] at @e[type=armor_stand,tag=movie.ojinushi,tag=camera.near,distance=..64,limit=1] run tp @s ^ ^ ^-4
# プレイヤーをカメラにspectateさせる
    execute as @a[tag=playing_movie,tag=movie.near,distance=..64] at @s run spectate @e[type=armor_stand,tag=camera.near,tag=movie.ojinushi,sort=nearest,distance=..64,limit=1]
    execute as @a[tag=playing_movie,tag=!movie.near,distance=..64] at @s run spectate @e[type=armor_stand,tag=camera.far,tag=movie.ojinushi,sort=nearest,distance=..64,limit=1]
