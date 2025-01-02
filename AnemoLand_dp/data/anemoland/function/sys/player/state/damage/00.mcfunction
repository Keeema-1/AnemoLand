
scoreboard players reset @s damage_motion_timer

effect clear @s levitation

# scoreboard players set $strength hb.Motion 10000
# execute rotated ~ -10 run function #p_motion:looking
scoreboard players operation $x hb.Motion = @s motion.x
scoreboard players operation $y hb.Motion = @s motion.y
scoreboard players operation $z hb.Motion = @s motion.z
function #p_motion:xyz
