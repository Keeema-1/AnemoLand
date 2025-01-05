
function anemoland:sys/entity/common/attack_knockback/common

scoreboard players set $strength hb.Motion 8000
execute positioned ^ ^ ^-8 facing entity @s eyes rotated ~ 0 run function #p_motion:looking
