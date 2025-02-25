#> anemoland:sys/player/trigger/0
#
# トリガーの数値に応じて分岐
#
# @within function anemoland:sys/player/tick

# トリガーの数値に応じて分岐
    execute if score @s trigger matches ..9999 run function anemoland:sys/player/trigger/general/branch
    execute if score @s trigger matches 10000..19999 run function anemoland:sys/player/trigger/teleport/branch
    execute if score @s trigger matches 20000..29999 run function anemoland_contents:sys/player/trigger/talk/branch
    execute if score @s trigger matches 30000..39999 run function anemoland:sys/player/trigger/buy/branch
    execute if score @s trigger matches 40000..49999 run function anemoland_contents:sys/arena/trigger/branch

# トリガースコアの後処理
    scoreboard players reset @s trigger
    scoreboard players enable @s trigger
