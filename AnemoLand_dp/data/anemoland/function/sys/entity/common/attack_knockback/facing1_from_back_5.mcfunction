
function anemoland:sys/entity/common/attack_knockback/common

scoreboard players set $strength hb.Motion 5000
execute positioned ^ ^ ^-8 facing entity @s eyes rotated ~ -5 run function #p_motion:looking
