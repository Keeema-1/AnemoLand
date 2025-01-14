# スコアをリセット
    scoreboard players reset #movie.martellos action0
    scoreboard players reset #movie.martellos action_time
# カメラをkill
    kill @e[type=armor_stand,tag=movie.martellos]
# scheduleをclear
    schedule clear anemoland_contents:sys/movie/martellos/tick
# プレイヤーごとの処理
    execute as @a[tag=playing_movie,distance=..64] run function anemoland_contents:sys/movie/martellos/end_as_player
# manual
    function anemoland_contents:sys/movie/martellos/manual/end
# event
    function anemoland_contents:command/field_event/beta1/change/martellos {field_id:42,level:20}
# talk
    function anemoland_contents:command/talk/navigator1/martellos_first
