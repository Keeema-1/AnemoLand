scoreboard players set @s action1 3
scoreboard players set @s action_time 0

function anemoland_contents:sys/entity/mob/garuda/animation/summer_salt_right2

# サウンドやパーティクル
    execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 2 1.2
    execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 4 1.5
    execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 4 0.9
