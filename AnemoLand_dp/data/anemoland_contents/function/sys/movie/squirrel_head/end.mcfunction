# スコアをリセット
    scoreboard players reset #movie.squirrel_head action0
    scoreboard players reset #movie.squirrel_head action_time
# カメラをkill
    kill @e[type=armor_stand,tag=movie.squirrel_head]
# scheduleをclear
    schedule clear anemoland_contents:sys/movie/squirrel_head/tick
# プレイヤーごとの処理
    execute as @a[tag=playing_movie,distance=..64] run function anemoland_contents:sys/movie/squirrel_head/end_as_player
# manual
    function anemoland_contents:sys/movie/squirrel_head/manual/end
# event
    function anemoland_contents:command/field_event/beta1/change/squirrel_head {field_id:23,level:15}
# talk
    function anemoland_contents:command/talk/navigator1/squirrel_head_first
