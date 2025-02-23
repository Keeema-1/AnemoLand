# 攻撃処理
    function anemoland_contents:sys/entity/bullet/feather/attack/default/0
# kill
    # execute on passengers run kill @s
    # kill @s
# パーティクル
    particle block{block_state:{Name:"dirt"}} ~ 0 ~ 0.3 0 0.3 1 10

execute positioned ~ ~2 ~ positioned over motion_blocking run tp @s ~ ~0.2 ~ ~ ~

tag @s add hit_ground

scoreboard players set @s action_time 60

playsound block.grass.break hostile @a ~ ~ ~ 2 1
