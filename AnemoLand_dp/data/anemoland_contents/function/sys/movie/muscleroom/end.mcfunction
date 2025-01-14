# スコアをリセット
    scoreboard players reset #movie.muscleroom action0
    scoreboard players reset #movie.muscleroom action_time
# カメラをkill
    kill @e[type=armor_stand,tag=movie.muscleroom]
# scheduleをclear
    schedule clear anemoland_contents:sys/movie/muscleroom/tick
# プレイヤーごとの処理
    execute as @a[tag=playing_movie,distance=..64] run function anemoland_contents:sys/movie/muscleroom/end_as_player
# manual
    function anemoland_contents:sys/movie/muscleroom/manual/end
# event
    function anemoland_contents:command/field_event/beta1/change/muscleroom {field_id:61,level:25}
# talk
    function anemoland_contents:command/talk/navigator1/muscleroom_first
