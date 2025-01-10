#> anemoland_contents:sys/entity/mob/bagikeros/manual/action/bite_side/start
#
# アクション bite_side の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/bagikeros/action/bite_side/start

execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 2 0.6

function anemoland:sys/entity/common/target_direction/is_leftside

execute if score #target_is_leftside temp matches 1 run scoreboard players set @s action_way 1
execute unless score #target_is_leftside temp matches 1 run scoreboard players set @s action_way 0

execute if score @s action_way matches 1 run function anemoland_contents:sys/entity/mob/bagikeros/animation/bite_left1
execute if score @s action_way matches 0 run function anemoland_contents:sys/entity/mob/bagikeros/animation/bite_right1
