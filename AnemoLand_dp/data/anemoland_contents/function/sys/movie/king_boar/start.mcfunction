# 古いカメラをkill
    kill @e[type=armor_stand,tag=movie.king_boar]
# カメラを召喚
    summon armor_stand 2048.0 0.0 1024.0 {Tags:["camera","camera.near","movie.king_boar"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}
    summon armor_stand 2048.0 0.0 1024.0 {Tags:["camera","camera.far","movie.king_boar"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}
# スコアを初期化
    scoreboard players set #movie.king_boar action0 0
    scoreboard players set #movie.king_boar action_time 0
# tick関数をschedule
    schedule function anemoland_contents:sys/movie/king_boar/tick 1t replace
# プレイヤーごとの処理
    execute positioned 2048.0 0.0 1024.0 as @a[distance=..64] run function anemoland_contents:sys/movie/king_boar/start_as_player
# manual
    execute positioned 2048.0 0.0 1024.0 run function anemoland_contents:sys/movie/king_boar/manual/start
