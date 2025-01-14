# スコアをリセット
    scoreboard players reset #movie.bagikeros action0
    scoreboard players reset #movie.bagikeros action_time
# カメラをkill
    kill @e[type=armor_stand,tag=movie.bagikeros]
# scheduleをclear
    schedule clear anemoland_contents:sys/movie/bagikeros/tick
# プレイヤーごとの処理
    execute as @a[tag=playing_movie,distance=..64] run function anemoland_contents:sys/movie/bagikeros/end_as_player
# manual
    function anemoland_contents:sys/movie/bagikeros/manual/end
# event
    function anemoland_contents:command/field_event/beta1/change/bagikeros {field_id:54,level:30}
# talk
    function anemoland_contents:command/talk/navigator1/bagikeros_first
