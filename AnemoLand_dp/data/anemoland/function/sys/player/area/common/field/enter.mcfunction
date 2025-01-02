
function anemoland:sys/player/common/black_title_long

effect give @s slowness 2 30 true
# effect give @s resistance 2 30 true
effect clear @s speed
function anemoland:sys/player/area/common/enter

function anemoland:sys/player/common/skill_levels/0

execute if data storage temp:_ data.skill_levels.initial_gauge store result score @s skill_gauge run data get storage temp:_ data.skill_levels.initial_gauge 1

scoreboard players reset @s battle_timer

# execute if loaded ~ ~ ~ run function anemoland:sys/player/area/common/field/loaded
# execute unless loaded ~ ~ ~ run tag @s add wait_load
# function anemoland:sys/player/area/common/field/summon_pet
