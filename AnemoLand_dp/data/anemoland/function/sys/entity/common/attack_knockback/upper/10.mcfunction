
function anemoland:sys/entity/common/attack_knockback/common

scoreboard players set $strength hb.Motion 10000
execute rotated ~ -90 run function #p_motion:looking
