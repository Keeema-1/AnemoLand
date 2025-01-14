# 古いカメラをkill
    kill @e[type=armor_stand,tag=movie.ojinushi]
# カメラを召喚
    summon armor_stand 2560.0 0.0 2560.0 {Tags:["camera","camera.near","movie.ojinushi"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}
    summon armor_stand 2560.0 0.0 2560.0 {Tags:["camera","camera.far","movie.ojinushi"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}
# スコアを初期化
    scoreboard players set #movie.ojinushi action0 0
    scoreboard players set #movie.ojinushi action_time 0
# tick関数をschedule
    schedule function anemoland_contents:sys/movie/ojinushi/tick 1t replace
# プレイヤーごとの処理
    execute positioned 2560.0 0.0 2560.0 as @a[distance=..64] run function anemoland_contents:sys/movie/ojinushi/start_as_player
# manual
    execute positioned 2560.0 0.0 2560.0 run function anemoland_contents:sys/movie/ojinushi/manual/start
