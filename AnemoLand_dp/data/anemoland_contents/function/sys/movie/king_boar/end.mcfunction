# スコアをリセット
    scoreboard players reset #movie.king_boar action0
    scoreboard players reset #movie.king_boar action_time
# カメラをkill
    kill @e[type=armor_stand,tag=movie.king_boar]
# scheduleをclear
    schedule clear anemoland_contents:sys/movie/king_boar/tick
# プレイヤーごとの処理
    execute as @a[tag=playing_movie,distance=..64] run function anemoland_contents:sys/movie/king_boar/end_as_player
# manual
    function anemoland_contents:sys/movie/king_boar/manual/end
# event
    function anemoland_contents:command/field_event/beta1/change/king_boar {field_id:34,level:10}
# talk
    function anemoland_contents:command/talk/navigator1/king_boar_first
