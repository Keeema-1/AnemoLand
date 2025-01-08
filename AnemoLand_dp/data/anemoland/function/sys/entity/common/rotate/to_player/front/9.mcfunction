
function anemoland:sys/entity/common/target_direction/is_front
execute if score #target_is_front temp matches 1 at @s run return run tp @s ~ ~ ~ ~ ~

function anemoland:sys/entity/common/target_direction/is_leftside

execute if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-9 ~
execute unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~9 ~
