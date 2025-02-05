
execute if score @s armor.base matches 1 at @p[tag=player_check] at @e[type=marker,tag=fishing_spot,distance=..8,sort=nearest,limit=1] facing entity @s feet positioned as @s rotated ~ 0 run tp ^ ^ ^-0.04
execute if score @s armor.base matches 2 at @p[tag=player_check] at @e[type=marker,tag=fishing_spot,distance=..8,sort=nearest,limit=1] facing entity @s feet positioned as @s rotated ~ 0 run tp ^ ^ ^-0.03

execute as @p[tag=player_check] at @s run playsound minecraft:item.spyglass.use master @s ~ ~ ~ 1 1

# テンションゲージ
    scoreboard players add @s skill_gauge 5
    execute if score @s skill_gauge matches 1000.. run scoreboard players set @s skill_gauge 1000
    execute if score @s skill_gauge matches 900.. if predicate anemoland:random_chance/0_5 run scoreboard players remove @s health 1
    execute if score @s skill_gauge matches 951.. if predicate anemoland:random_chance/0_5 run scoreboard players remove @s health 1

execute if entity @e[type=marker,tag=fishing_spot,distance=..8] run return run function anemoland:sys/player/item/fishing/battle/success

# 糸の発光
    execute if score @s skill_gauge matches 900.. on passengers run data merge entity @s {glow_color_override:16711680,Glowing:1b}
    execute if score @s skill_gauge matches ..899 on passengers run data merge entity @s {Glowing:0b}

# 糸が切れて失敗
    execute unless score @s health matches 1.. run return run function anemoland:sys/player/item/fishing/battle/fail
