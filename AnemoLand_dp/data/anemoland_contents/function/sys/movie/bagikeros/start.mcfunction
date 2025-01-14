# 古いカメラをkill
    kill @e[type=armor_stand,tag=movie.bagikeros]
# カメラを召喚
    summon armor_stand 3072.0 0.0 3584.0 {Tags:["camera","camera.near","movie.bagikeros"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}
    summon armor_stand 3072.0 0.0 3584.0 {Tags:["camera","camera.far","movie.bagikeros"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}
# スコアを初期化
    scoreboard players set #movie.bagikeros action0 0
    scoreboard players set #movie.bagikeros action_time 0
# tick関数をschedule
    schedule function anemoland_contents:sys/movie/bagikeros/tick 1t replace
# プレイヤーごとの処理
    execute positioned 3072.0 0.0 3584.0 as @a[distance=..64] run function anemoland_contents:sys/movie/bagikeros/start_as_player
# manual
    execute positioned 3072.0 0.0 3584.0 run function anemoland_contents:sys/movie/bagikeros/manual/start
