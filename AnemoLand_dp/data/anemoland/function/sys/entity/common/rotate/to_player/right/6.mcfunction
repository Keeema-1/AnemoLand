
function anemoland:sys/entity/common/target_direction/is_right
execute if score #target_is_right temp matches 1 run return 1

function anemoland:sys/entity/common/target_direction/is_frontside

execute if score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~-6 ~
execute unless score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~6 ~
