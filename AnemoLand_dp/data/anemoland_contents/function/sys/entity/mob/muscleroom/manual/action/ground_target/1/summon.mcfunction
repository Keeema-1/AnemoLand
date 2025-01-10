
# 発射元の攻撃力を取得
    scoreboard players operation #attack.base temp = @s attack.base
    scoreboard players set #temp temp 6
    scoreboard players operation #attack.base temp *= #temp temp
    scoreboard players set #temp temp 10
    scoreboard players operation #attack.base temp /= #temp temp

execute if entity @s[tag=pet] at @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,sort=random,distance=..64,limit=1] positioned over motion_blocking run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/ground_target/1/summon_

execute if entity @s[tag=enemy] at @a[sort=random,distance=..64,limit=1] positioned over motion_blocking run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/ground_target/1/summon_
