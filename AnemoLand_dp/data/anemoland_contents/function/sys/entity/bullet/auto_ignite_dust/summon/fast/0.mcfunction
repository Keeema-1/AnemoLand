
# 攻撃力スコアが未設定の場合、発射元の攻撃力を設定
    execute unless score #attack.base temp matches 1.. run scoreboard players operation #attack.base temp = @s attack.base
# 距離スコアが未設定の場合、仮の数値を設定
    execute unless score #action_way temp matches 1.. run scoreboard players set #action_way temp 10

# ペット用フラグ
    execute if entity @s[type=player] run scoreboard players set #bullet.pet_flag temp 1
    execute if entity @s[tag=pet] run scoreboard players set #bullet.pet_flag temp 1

# 召喚
    execute rotated ~ ~ positioned ~ ~ ~ summon armor_stand run function anemoland_contents:sys/entity/bullet/auto_ignite_dust/summon/fast/00

# ペット用フラグのリセット
    scoreboard players reset #bullet.pet_flag temp