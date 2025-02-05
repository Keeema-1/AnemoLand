

# テンションゲージ
    scoreboard players add @s skill_gauge 20
    execute if score @s attack.base matches 2.. run scoreboard players add @s skill_gauge 20
    execute if score @s skill_gauge matches ..600 run scoreboard players add @s skill_gauge 20
    execute if score @s skill_gauge matches 1000.. run scoreboard players set @s skill_gauge 1000
    # 糸の耐久度の減少
        execute if score @s skill_gauge matches 900.. if predicate anemoland:random_chance/0_5 run scoreboard players remove @s health 2
        execute if score @s skill_gauge matches 951.. if predicate anemoland:random_chance/0_5 run scoreboard players remove @s health 2

# 浮きを近づける
    execute at @p[tag=player_check] at @e[type=marker,tag=fishing_spot,distance=..8,sort=nearest,limit=1] facing entity @s feet positioned as @s rotated ~ 0 run tp ^ ^ ^-0.02

execute as @p[tag=player_check] at @s run playsound minecraft:item.spyglass.use master @s ~ ~ ~ 2 0.5
# execute as @p[tag=player_check] at @s run playsound minecraft:item.spyglass.use master @s ~ ~ ~ 1 1

# 糸の発光
    execute if score @s skill_gauge matches 900.. on passengers run data merge entity @s {glow_color_override:16711680,Glowing:1b}
    execute if score @s skill_gauge matches ..899 on passengers run data merge entity @s {Glowing:0b}

# 成功時
    execute if entity @e[type=marker,tag=fishing_spot,distance=..8] run return run function anemoland:sys/player/item/fishing/battle/success

# 糸が切れて失敗
    execute unless score @s health matches 1.. run return run function anemoland:sys/player/item/fishing/battle/fail
