# 攻撃処理
    function anemoland_contents:sys/entity/bullet/water/attack/large/0
# kill
    execute on passengers run kill @s
    kill @s
# パーティクル
    particle block{block_state:{Name:"water"}} ^ ^ ^ 2 0.5 2 1 50
    particle minecraft:entity_effect{color:[0.0,0.0,1.0,0.8]} ~ ~ ~ 2 0.5 2 1 30
    execute as @a[distance=..64] at @s run playsound entity.player.splash.high_speed hostile @s ~ ~ ~ 1 1