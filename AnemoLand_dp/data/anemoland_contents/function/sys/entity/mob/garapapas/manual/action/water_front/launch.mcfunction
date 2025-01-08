
# 発射元の攻撃力を取得
    scoreboard players operation #attack.base temp = @s attack.base
    scoreboard players set #temp temp 6
    scoreboard players operation #attack.base temp *= #temp temp
    scoreboard players set #temp temp 10
    scoreboard players operation #attack.base temp /= #temp temp

# ターゲットまでの距離測定
    data merge storage km_distance: {out:32}
    execute if score #hostile_target.is_player temp matches 1 at @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] run function km_distance:as_to_at
    execute unless score #hostile_target.is_player temp matches 1 at @a[tag=hostile_target,distance=..32,limit=1] run function km_distance:as_to_at
    execute store result score #action_way temp run data get storage km_distance: out

# 発射
    function anemoland_contents:sys/entity/bullet/water/summon/large/0

execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 1.3 0.7
execute as @a[distance=..64] at @s run playsound minecraft:entity.shulker.hurt hostile @s ~ ~ ~ 1.3 0.3
