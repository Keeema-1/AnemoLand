
scoreboard players set @s level 1
execute if predicate anemoland:random_chance/0_2 run scoreboard players set @s level 2

scoreboard players set @p[tag=player_check] action0 3

execute if score @s level matches 1 at @s run summon area_effect_cloud ~ 0.5 ~ {Duration:30,Radius:0.0f,effects:[],CustomNameVisible:1b,CustomName:'"\\ue014"'}
execute if score @s level matches 2 at @s run summon area_effect_cloud ~ 0.5 ~ {Duration:30,Radius:0.0f,effects:[],CustomNameVisible:1b,CustomName:'"\\ue014 \\ue014 \\ue014"'}

# 魚の力 = テンションゲージのスピード
    execute if score @s level matches 1 run scoreboard players set @s attack.base 1
    execute if score @s level matches 2 run scoreboard players set @s attack.base 2
# 糸の巻きにくさ
    execute if score @s level matches 1 run scoreboard players set @s armor.base 1
    execute if score @s level matches 2 run scoreboard players set @s armor.base 2
# 左右のスピード
    execute if score @s level matches 1 run scoreboard players set @s attack.mul 1
    execute if score @s level matches 2 run scoreboard players set @s attack.mul 2

execute as @p[tag=player_check] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2

function anemoland:sys/player/item/fishing/battle/hit/start
