# テンションゲージ
    execute if score @s skill_gauge matches ..498 run scoreboard players add @s skill_gauge 2
    execute if score @s skill_gauge matches 502.. run scoreboard players remove @s skill_gauge 2
    execute if score @s skill_gauge matches 800.. run scoreboard players remove @s skill_gauge 10
    execute unless score @s skill_gauge matches 0.. run scoreboard players set @s skill_gauge 0

# 糸の発光
    execute if score @s skill_gauge matches ..100 on passengers run data merge entity @s {glow_color_override:2228479,Glowing:1b}
    execute if score @s skill_gauge matches 101.. on passengers run data merge entity @s {Glowing:0b}

# 糸が切れて失敗
    execute unless score @s health matches 1.. run return run function anemoland:sys/player/item/fishing/battle/fail
