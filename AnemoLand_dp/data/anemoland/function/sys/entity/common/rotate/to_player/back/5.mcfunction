
function anemoland:sys/entity/common/target_direction/is_back
execute if score #target_is_back temp matches 1 at @s run return run tp @s ~ ~ ~ ~ ~

function anemoland:sys/entity/common/target_direction/is_leftside

execute if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~5 ~
execute unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-5 ~
