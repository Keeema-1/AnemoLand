
# 攻撃力スコアが未設定の場合、発射元の攻撃力を設定
    execute unless score #attack.base temp matches 1.. run scoreboard players operation #attack.base temp = @s attack.base

# ペット用フラグ
    execute if entity @s[type=player] run scoreboard players set #bullet.pet_flag temp 1
    execute if entity @s[tag=pet] run scoreboard players set #bullet.pet_flag temp 1

# 召喚
    execute rotated ~ 0 run function animated_java:mushroom_fang/summon/default
    execute as @e[type=item_display,tag=newly_summoned.aj,distance=..1] run function anemoland_contents:sys/entity/bullet/mushroom_fang/summon/skill/00

# ペット用フラグのリセット
    scoreboard players reset #bullet.pet_flag temp