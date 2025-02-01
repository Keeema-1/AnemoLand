# テンションゲージ
    scoreboard players remove @s skill_gauge 10
    execute if score @s skill_gauge matches 600.. run scoreboard players remove @s skill_gauge 10
    execute unless score @s skill_gauge matches 0.. run scoreboard players set @s skill_gauge 0
    execute if score @s skill_gauge matches ..100 if predicate anemoland:random_chance/0_5 run scoreboard players remove @s sprint_time 2
    execute if score @s skill_gauge matches ..50 if predicate anemoland:random_chance/0_5 run scoreboard players remove @s sprint_time 2

# 糸の発光
    execute if score @s skill_gauge matches ..100 on passengers run data merge entity @s {glow_color_override:2228479,Glowing:1b}
    execute if score @s skill_gauge matches 101.. on passengers run data merge entity @s {Glowing:0b}

# 逃げられて失敗
    execute unless score @s sprint_time matches 1.. run return run function anemoland:sys/player/item/fishing/battle/fail_run_away
