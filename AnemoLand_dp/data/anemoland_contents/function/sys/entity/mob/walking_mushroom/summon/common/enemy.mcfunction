tag @s add enemy
function anemoland_contents:sys/entity/mob/walking_mushroom/summon/common/status
# ボーナス
    execute store result score #gold_bonus temp run data get storage temp:_ data.event_bonus.gold 50
    execute store result score #xp_bonus temp run data get storage temp:_ data.event_bonus.xp 50
    execute store result score @s drop_bonus run data get storage temp:_ data.event_bonus.drop 1
# ゴールド
    scoreboard players set @s gold 10
    scoreboard players operation @s gold *= #new_entity.level temp
    scoreboard players add @s gold 50
    scoreboard players add #gold_bonus temp 100
    scoreboard players operation @s gold *= #gold_bonus temp
    scoreboard players set #const temp 1000
    scoreboard players operation @s gold /= #const temp
# XP
    scoreboard players set @s xp 10
    scoreboard players operation @s xp *= #new_entity.level temp
    scoreboard players add @s xp 50
    scoreboard players add #xp_bonus temp 100
    scoreboard players operation @s xp *= #xp_bonus temp
    scoreboard players set #const temp 1000
    scoreboard players operation @s xp /= #const temp
# バリアントボーナス
    execute if entity @s[tag=variant.gold] run scoreboard players set #xp_bonus temp 50
    execute if entity @s[tag=variant.gold] run scoreboard players operation @s xp *= #xp_bonus temp
    execute if entity @s[tag=variant.gold] run scoreboard players set #gold_bonus temp 50
    execute if entity @s[tag=variant.gold] run scoreboard players operation @s gold *= #gold_bonus temp
