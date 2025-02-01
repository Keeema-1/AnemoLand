# skill_gauge: テンションゲージ
# health: 糸の耐久
# spring_time: 魚の逃げ

execute if score @s action_time matches 0.. run scoreboard players remove @s action_time 1

execute if score @s action0 matches -1 at @s run return run function anemoland:sys/player/item/fishing/battle/hit/0
execute if score @s action0 matches 1 at @s run return run function anemoland:sys/player/item/fishing/battle/pulled/0
# 通常時
    execute unless score @s action0 matches 1.. at @s run return run function anemoland:sys/player/item/fishing/battle/normal/0
