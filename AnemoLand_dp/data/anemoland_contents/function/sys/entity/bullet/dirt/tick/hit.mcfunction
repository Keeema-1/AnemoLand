# 攻撃処理
    function anemoland_contents:sys/entity/bullet/dirt/attack/medium/0
# kill
    execute on passengers run kill @s
    kill @s
# パーティクル
    particle block{block_state:{Name:"dirt"}} ^ ^ ^ 1 0.5 1 1 50
    execute as @a[distance=..64] at @s run playsound block.rooted_dirt.break hostile @s ~ ~ ~ 2 1
