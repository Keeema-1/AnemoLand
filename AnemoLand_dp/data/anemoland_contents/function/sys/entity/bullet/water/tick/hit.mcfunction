# 攻撃処理
    function anemoland_contents:sys/entity/bullet/water/attack/0
# kill
    execute on passengers run kill @s
    kill @s
# パーティクル
    particle block{block_state:{Name:"water"}} ^ ^ ^ 1 0.5 1 1 50
    particle minecraft:entity_effect{color:[0.0,0.0,1.0,0.8]} ~ ~ ~ 1 0.5 1 1 20
    execute as @a[distance=..64] at @s run playsound entity.player.splash.high_speed hostile @s ~ ~ ~ 1 1