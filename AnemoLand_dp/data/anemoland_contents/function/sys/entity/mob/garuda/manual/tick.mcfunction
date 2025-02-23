#> anemoland_contents:sys/entity/mob/garuda/manual/tick
#
# 常時実行される
# このファイルは初回のみ自動生成される
#
# @within function anemoland_contents:sys/entity/mob/garuda/tick/00

execute if entity @s[tag=charged] run particle dust_color_transition{from_color:[0.7,1.0,0.9],to_color:[1.0,1.0,0.2],scale:1.0} ~ ~3 ~ 1.5 1.5 1.5 1 3
