#> anemoland_contents:sys/entity/mob/muscleroom/manual/action/backstep/end
#
# アクション backstep の終了時に実行される
# このファイルは初回のみ自動生成される
# アクション終了時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/muscleroom/action/backstep/end

# function anemoland_contents:sys/entity/mob/muscleroom/action/stop/start

execute store result score @s action0 run random value 0..2
scoreboard players add @s action0 13
scoreboard players set @s action1 1
scoreboard players set @s action_time 0
