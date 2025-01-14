# 古いカメラをkill
    kill @e[type=armor_stand,tag=movie.muscleroom]
# カメラを召喚
    summon armor_stand 2560.0 0.0 3072.0 {Tags:["camera","camera.near","movie.muscleroom"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}
    summon armor_stand 2560.0 0.0 3072.0 {Tags:["camera","camera.far","movie.muscleroom"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}
# スコアを初期化
    scoreboard players set #movie.muscleroom action0 0
    scoreboard players set #movie.muscleroom action_time 0
# tick関数をschedule
    schedule function anemoland_contents:sys/movie/muscleroom/tick 1t replace
# プレイヤーごとの処理
    execute positioned 2560.0 0.0 3072.0 as @a[distance=..64] run function anemoland_contents:sys/movie/muscleroom/start_as_player
# manual
    execute positioned 2560.0 0.0 3072.0 run function anemoland_contents:sys/movie/muscleroom/manual/start
