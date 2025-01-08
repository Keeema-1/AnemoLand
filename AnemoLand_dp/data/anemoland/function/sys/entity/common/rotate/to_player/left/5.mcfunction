
function anemoland:sys/entity/common/target_direction/is_left
execute if score #target_is_left temp matches 1 at @s run return run tp @s ~ ~ ~ ~ ~

function anemoland:sys/entity/common/target_direction/is_frontside

execute if score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~5 ~
execute unless score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~-5 ~
