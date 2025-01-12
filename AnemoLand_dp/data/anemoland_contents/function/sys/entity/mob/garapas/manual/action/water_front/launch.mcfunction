
# 発射元の攻撃力を取得
    scoreboard players operation #attack.base temp = @s attack.base

# ターゲットまでの距離測定
    data merge storage km_distance: {out:32}
    execute if score #hostile_target.is_player temp matches 1 at @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] run function km_distance:as_to_at
    execute unless score #hostile_target.is_player temp matches 1 at @a[tag=hostile_target,distance=..32,limit=1] run function km_distance:as_to_at
    execute store result score #action_way temp run data get storage km_distance: out

# 発射
    execute if entity @s[tag=!variant.penguin] run function anemoland_contents:sys/entity/bullet/water/summon/medium/0
    execute if entity @s[tag=variant.penguin] run function anemoland_contents:sys/entity/bullet/water/summon/ice_medium/0

execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 1 1
execute as @a[distance=..64] at @s run playsound minecraft:entity.shulker.hurt hostile @s ~ ~ ~ 1 0.5
