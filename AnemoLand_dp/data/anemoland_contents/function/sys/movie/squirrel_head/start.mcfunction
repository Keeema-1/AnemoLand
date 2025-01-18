# 古いカメラをkill
    kill @e[type=armor_stand,tag=movie.squirrel_head]
# カメラを召喚
    summon armor_stand 1024.0 0.0 1536.0 {Tags:["camera","camera.near","movie.squirrel_head"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}
    summon armor_stand 1024.0 0.0 1536.0 {Tags:["camera","camera.far","movie.squirrel_head"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}
# スコアを初期化
    scoreboard players set #movie.squirrel_head action0 0
    scoreboard players set #movie.squirrel_head action_time 0
# tick関数をschedule
    schedule function anemoland_contents:sys/movie/squirrel_head/tick 1t replace
# プレイヤーごとの処理
    execute positioned 1024.0 0.0 1536.0 as @a[distance=..64] run function anemoland_contents:sys/movie/squirrel_head/start_as_player
# manual
    execute positioned 1024.0 0.0 1536.0 run function anemoland_contents:sys/movie/squirrel_head/manual/start
