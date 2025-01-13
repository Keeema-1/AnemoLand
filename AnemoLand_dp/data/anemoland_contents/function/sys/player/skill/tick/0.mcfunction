#> anemoland_contents:sys/player/skill/tick/0
#
# スキルのtick処理
#
# @within anemoland:sys/player/tick

function anemoland:sys/player/common/player_storage/read

# tellraw @a {"storage":"temp:_","nbt":"data.skill_levels"}

execute if score @s sprint_time matches 20 if data storage temp:_ data.player_storage.skill_levels.sprint_charge run particle minecraft:dust{color:[1.0, 0.0, 0.0], scale:1.0} ~ ~1 ~ 0.3 0.6 0.3 1 10

execute if data storage temp:_ data.player_storage.skill_levels.stamina_recovery run function anemoland_contents:sys/player/skill/tick/stamina_recovery

execute if predicate anemoland:random_chance/0_2 if data storage temp:_ data.player_storage.skill_levels.crisis_strength run function anemoland_contents:sys/player/skill/tick/crisis_strength

execute if data storage temp:_ data.player_storage.skill_levels.ice_veil run function anemoland_contents:sys/player/skill/tick/ice_veil
