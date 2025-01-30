# スコアをリセット
    scoreboard players reset #movie.carnara action0
    scoreboard players reset #movie.carnara action_time
# カメラをkill
    kill @e[type=armor_stand,tag=movie.carnara]
# scheduleをclear
    schedule clear anemoland_contents:sys/movie/carnara/tick
# プレイヤーごとの処理
    execute as @a[tag=playing_movie,distance=..64] run function anemoland_contents:sys/movie/carnara/end_as_player
# manual
    function anemoland_contents:sys/movie/carnara/manual/end
# event
    function anemoland_contents:command/field_event/beta1/change/carnara {field_id:83,level:30}
# talk
    function anemoland_contents:command/talk/navigator1/carnara_first
