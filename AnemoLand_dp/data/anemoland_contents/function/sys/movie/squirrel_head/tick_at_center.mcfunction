# schedule
    schedule function anemoland_contents:sys/movie/squirrel_head/tick 1t replace
# タイマーを加算
    scoreboard players add #movie.squirrel_head action_time 1
# manual関数を実行
    function anemoland_contents:sys/movie/squirrel_head/manual/tick
# 遠距離カメラを近距離カメラの後ろにtp
    execute as @e[type=armor_stand,tag=movie.squirrel_head,tag=camera.far,distance=..64] at @e[type=armor_stand,tag=movie.squirrel_head,tag=camera.near,distance=..64,limit=1] run tp @s ^ ^ ^-4
# プレイヤーをカメラにspectateさせる
    execute as @a[tag=playing_movie,tag=movie.near,distance=..64] at @s run spectate @e[type=armor_stand,tag=camera.near,tag=movie.squirrel_head,sort=nearest,distance=..64,limit=1]
    execute as @a[tag=playing_movie,tag=!movie.near,distance=..64] at @s run spectate @e[type=armor_stand,tag=camera.far,tag=movie.squirrel_head,sort=nearest,distance=..64,limit=1]
