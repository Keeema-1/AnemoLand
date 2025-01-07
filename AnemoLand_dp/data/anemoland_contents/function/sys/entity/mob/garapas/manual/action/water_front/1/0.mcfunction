tp @s ~ ~ ~ ~ ~

# 衝突
    execute unless entity @s[tag=damaged] if predicate anemoland:random_chance/0_2 run function anemoland:sys/entity/common/collide/1

# 発射
    execute if score @s action_time matches 2 run function anemoland_contents:sys/entity/mob/garapas/manual/action/water_front/launch

execute if score @s action_time matches 80.. run function anemoland_contents:sys/entity/mob/garapas/action/bite/end
