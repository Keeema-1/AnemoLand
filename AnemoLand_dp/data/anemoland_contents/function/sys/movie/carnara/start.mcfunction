# 古いカメラをkill
    kill @e[type=armor_stand,tag=movie.carnara]
# カメラを召喚
    summon armor_stand 3072.0 0.0 4096.0 {Tags:["camera","camera.near","movie.carnara"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}
    summon armor_stand 3072.0 0.0 4096.0 {Tags:["camera","camera.far","movie.carnara"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}
# スコアを初期化
    scoreboard players set #movie.carnara action0 0
    scoreboard players set #movie.carnara action_time 0
# tick関数をschedule
    schedule function anemoland_contents:sys/movie/carnara/tick 1t replace
# プレイヤーごとの処理
    execute positioned 3072.0 0.0 4096.0 as @a[distance=..64] run function anemoland_contents:sys/movie/carnara/start_as_player
# manual
    execute positioned 3072.0 0.0 4096.0 run function anemoland_contents:sys/movie/carnara/manual/start
