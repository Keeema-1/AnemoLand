
function anemoland:sys/entity/common/attack_knockback/common

scoreboard players set $strength hb.Motion 15000
execute facing entity @s eyes rotated ~ -20 run function #p_motion:looking
