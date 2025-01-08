#> anemoland_contents:sys/player/skill/attack/src/0
#
# 攻撃した際のスキル処理
# src -> dst の順
#
# @within anemoland:sys/player/common/damage/src/get_status

scoreboard players set #damage.src.attack.skill.add temp 0

function anemoland:sys/player/common/player_storage/read

# sprint_charge
    scoreboard players set #damage.src.attack.skill.bring_it_on temp 0
    execute store result score #damage.src.attack.skill.bring_it_on temp run data get storage temp:_ data.player_storage.skill_levels.bring_it_on 10

# sprint_charge
    scoreboard players set #add temp 0
    execute if score @s sprint_time matches 40.. store result score #add temp run data get storage temp:_ data.player_storage.skill_levels.sprint_charge 10
    scoreboard players operation #damage.src.attack.base temp += #add temp

# crisis_strength
    scoreboard players set #add temp 0
    execute store result score #health temp run data get entity @s Health 30.0
    execute store result score #max_health temp run attribute @s max_health get 10
    execute if score #health temp <= #max_health temp store result score #add temp run data get storage temp:_ data.player_storage.skill_levels.crisis_strength 10
    scoreboard players operation #damage.src.attack.base temp += #add temp
