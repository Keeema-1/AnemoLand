
function anemoland:sys/player/common/black_title_long

effect give @s slowness 2 30 true
# effect give @s resistance 2 30 true
effect clear @s speed
function anemoland:sys/player/area/common/enter

function anemoland_contents:sys/player/skill/enter_field/0

scoreboard players reset @s battle_timer

# execute if loaded ~ ~ ~ run function anemoland:sys/player/area/common/field/loaded
# execute unless loaded ~ ~ ~ run tag @s add wait_load
# function anemoland:sys/player/area/common/field/summon_pet
