tag @s add enemy
function anemoland_contents:sys/entity/mob/decoy1/summon/common/status
# ボーナス
    execute store result score #gold_bonus temp run data get storage temp:_ data.event_bonus.gold 50
    execute store result score #xp_bonus temp run data get storage temp:_ data.event_bonus.xp 50
    execute store result score @s drop_bonus run data get storage temp:_ data.event_bonus.drop 1
# ゴールド
    scoreboard players set @s gold 0
    scoreboard players operation @s gold *= #new_entity.level temp
    scoreboard players add @s gold 0
    scoreboard players add #gold_bonus temp 100
    scoreboard players operation @s gold *= #gold_bonus temp
    scoreboard players set #const temp 1000
    scoreboard players operation @s gold /= #const temp
# XP
    scoreboard players set @s xp 0
    scoreboard players operation @s xp *= #new_entity.level temp
    scoreboard players add @s xp 0
    scoreboard players add #xp_bonus temp 100
    scoreboard players operation @s xp *= #xp_bonus temp
    scoreboard players set #const temp 1000
    scoreboard players operation @s xp /= #const temp
