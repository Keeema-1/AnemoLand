#> anemoland_contents:sys/entity/mob/bagikeros/manual/action/fire_head/tick
#
# アクション fire_head 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/bagikeros/action/fire_head/tick

tp @s ~ ~ ~ ~ ~

# パーティクルやサウンド
    execute if score @s action_time matches 30 rotated ~ 0 run particle flame ^ ^1 ^6 0.1 0.1 0.1 0.1 10
    execute if score @s action_time matches 30 as @a[distance=..64] at @s run playsound minecraft:entity.blaze.hurt hostile @s ~ ~ ~ 0.7 1

execute if score @s action_time matches 30 rotated ~ 0 positioned ^ ^ ^3 as @e[type=armor_stand,tag=bullet.ignitable_dust,tag=!ignited,distance=..12] run function anemoland_contents:sys/entity/bullet/ignitable_dust/fire

execute if score @s action_time matches 80.. run function anemoland_contents:sys/entity/mob/bagikeros/action/fire_head/end
execute if entity @s[tag=angry] if score @s action_time matches 70.. run function anemoland_contents:sys/entity/mob/bagikeros/action/fire_head/end
