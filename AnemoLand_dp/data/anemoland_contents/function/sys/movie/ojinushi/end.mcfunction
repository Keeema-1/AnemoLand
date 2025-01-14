# スコアをリセット
    scoreboard players reset #movie.ojinushi action0
    scoreboard players reset #movie.ojinushi action_time
# カメラをkill
    kill @e[type=armor_stand,tag=movie.ojinushi]
# scheduleをclear
    schedule clear anemoland_contents:sys/movie/ojinushi/tick
# プレイヤーごとの処理
    execute as @a[tag=playing_movie,distance=..64] run function anemoland_contents:sys/movie/ojinushi/end_as_player
# manual
    function anemoland_contents:sys/movie/ojinushi/manual/end
# event
    function anemoland_contents:command/field_event/beta1/change/ojinushi {field_id:63,level:20}
# talk
    function anemoland_contents:command/talk/navigator1/ojinushi_first
