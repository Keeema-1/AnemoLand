
function anemoland:sys/entity/common/attack_knockback/common

scoreboard players set $strength hb.Motion 8000
execute rotated ~ -90 run function #p_motion:looking
