# 攻撃処理
    function anemoland_contents:sys/entity/bullet/feather/attack/default/0
# kill
    execute on passengers run kill @s
    kill @s
# パーティクル
    # particle block{block_state:{Name:"feather"}} ^ ^ ^ 1 0.5 1 1 50
    # execute as @a[distance=..64] at @s run playsound block.rooted_feather.break hostile @s ~ ~ ~ 2 1
    # particle block{block_state:{Name:"dirt"}} ~ 0 ~ 0.3 0 0.3 1 10

    execute if entity @s[tag=charged] run particle flash ~ ~ ~ 0 0 0 1 1
    execute if entity @s[tag=charged] at @s run particle dust_color_transition{from_color:[0.7,1.0,0.9],to_color:[1.0,1.0,0.2],scale:1.0} ~ ~1 ~ 0.3 0.3 0.3 1 10
    execute if entity @s[tag=charged] at @s run particle minecraft:firework ~ ~1 ~ 0.3 0.3 0.3 0.2 10
    execute if entity @s[tag=charged] as @a[distance=..64] at @s run playsound entity.firework_rocket.twinkle hostile @s ~ ~ ~ 2 2
