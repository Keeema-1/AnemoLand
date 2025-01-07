
function anemoland:sys/entity/common/attack_knockback/common

function anemoland:sys/entity/common/self_direction/is_leftside

scoreboard players set $strength hb.Motion 15000
execute if score #self_is_leftside temp matches 1 rotated ~-60 -10 run function #p_motion:looking
execute unless score #self_is_leftside temp matches 1 rotated ~60 -10 run function #p_motion:looking
