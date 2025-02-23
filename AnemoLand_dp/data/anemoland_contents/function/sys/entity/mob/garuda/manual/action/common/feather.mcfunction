
# 発射元の攻撃力を取得
    scoreboard players operation #attack.base temp = @s attack.base
    # scoreboard players set #temp temp 5
    # scoreboard players operation #attack.base temp *= #temp temp
    # scoreboard players set #temp temp 10
    # scoreboard players operation #attack.base temp /= #temp temp

execute if entity @s[tag=!charged] run function anemoland_contents:sys/entity/bullet/feather/summon/default/0
execute if entity @s[tag=charged] run function anemoland_contents:sys/entity/bullet/feather/summon/charged/0

# execute as @a[distance=..64] at @s run playsound minecraft:entity.arrow.shoot hostile @a ~ ~ ~ 5 2
