# スコアをリセット
    scoreboard players reset #movie.garapapas action0
    scoreboard players reset #movie.garapapas action_time
# カメラをkill
    kill @e[type=armor_stand,tag=movie.garapapas]
# scheduleをclear
    schedule clear anemoland_contents:sys/movie/garapapas/tick
# プレイヤーごとの処理
    execute as @a[tag=playing_movie,distance=..64] run function anemoland_contents:sys/movie/garapapas/end_as_player
# manual
    function anemoland_contents:sys/movie/garapapas/manual/end
# event
    function anemoland_contents:command/field_event/beta1/change/garapapas {field_id:31,level:15}
# talk
    function anemoland_contents:command/talk/navigator1/garapapas_first
