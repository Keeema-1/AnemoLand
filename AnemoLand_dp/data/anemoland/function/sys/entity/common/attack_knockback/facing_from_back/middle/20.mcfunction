
function anemoland:sys/entity/common/attack_knockback/common

scoreboard players set $strength hb.Motion 20000
execute positioned ^ ^ ^-8 facing entity @s eyes rotated ~ -20 run function #p_motion:looking
