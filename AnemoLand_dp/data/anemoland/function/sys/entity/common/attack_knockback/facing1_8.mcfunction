
function anemoland:sys/entity/common/attack_knockback/common

scoreboard players set $strength hb.Motion 8000
execute facing entity @s eyes rotated ~ -5 run function #p_motion:looking
