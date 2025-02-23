#> anemoland_contents:sys/entity/mob/garuda/manual/attack_hit
#
# 攻撃を当てた時に実行される
# このファイルは初回のみ自動生成される
#
# @within function anemoland_contents:sys/entity/mob/garuda/attack/**

# 帯電時
    execute if entity @s[tag=charged] run particle flash ~ ~ ~ 0 0 0 1 1
    execute if entity @s[tag=charged] run particle dust_color_transition{from_color:[0.7,1.0,0.9],to_color:[1.0,1.0,0.2],scale:1.0} ~ ~1 ~ 0.3 0.3 0.3 1 10
    execute if entity @s[tag=charged] run particle minecraft:firework ~ ~1 ~ 0.3 0.3 0.3 0.2 10
    execute if entity @s[tag=charged] as @a[distance=..64] at @s run playsound entity.firework_rocket.twinkle hostile @s ~ ~ ~ 2 2

    execute if entity @s[tag=charged] run scoreboard players operation #damage.src.attack.thunder.base temp = @s attack.base
    execute if entity @s[tag=charged] run scoreboard players set #temp temp 5
    execute if entity @s[tag=charged] run scoreboard players operation #damage.src.attack.thunder.base temp /= #temp temp
    # execute if entity @s[tag=charged] run scoreboard players set #damage.src.attack.thunder.mul temp 1
