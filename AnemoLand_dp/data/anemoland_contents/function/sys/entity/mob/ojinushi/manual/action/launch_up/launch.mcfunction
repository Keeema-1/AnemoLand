
# 発射元の攻撃力を取得
    scoreboard players operation #attack.base temp = @s attack.base
    scoreboard players set #temp temp 6
    scoreboard players operation #attack.base temp *= #temp temp
    scoreboard players set #temp temp 10
    scoreboard players operation #attack.base temp /= #temp temp

execute store result score #temp temp run random value 0..11

execute if score #temp temp matches 0 positioned ^ ^ ^ rotated ~ 0 run function anemoland_contents:sys/entity/bullet/firework_motion/summon/default/0
execute if score #temp temp matches 1 positioned ^ ^ ^ rotated ~30 0 run function anemoland_contents:sys/entity/bullet/firework_motion/summon/default/0
execute if score #temp temp matches 2 positioned ^ ^ ^ rotated ~60 0 run function anemoland_contents:sys/entity/bullet/firework_motion/summon/default/0
execute if score #temp temp matches 3 positioned ^ ^ ^ rotated ~90 0 run function anemoland_contents:sys/entity/bullet/firework_motion/summon/default/0
execute if score #temp temp matches 4 positioned ^ ^ ^ rotated ~120 0 run function anemoland_contents:sys/entity/bullet/firework_motion/summon/default/0
execute if score #temp temp matches 5 positioned ^ ^ ^ rotated ~150 0 run function anemoland_contents:sys/entity/bullet/firework_motion/summon/default/0
execute if score #temp temp matches 6 positioned ^ ^ ^ rotated ~180 0 run function anemoland_contents:sys/entity/bullet/firework_motion/summon/default/0
execute if score #temp temp matches 7 positioned ^ ^ ^ rotated ~210 0 run function anemoland_contents:sys/entity/bullet/firework_motion/summon/default/0
execute if score #temp temp matches 8 positioned ^ ^ ^ rotated ~240 0 run function anemoland_contents:sys/entity/bullet/firework_motion/summon/default/0
execute if score #temp temp matches 9 positioned ^ ^ ^ rotated ~270 0 run function anemoland_contents:sys/entity/bullet/firework_motion/summon/default/0
execute if score #temp temp matches 10 positioned ^ ^ ^ rotated ~300 0 run function anemoland_contents:sys/entity/bullet/firework_motion/summon/default/0
execute if score #temp temp matches 11 positioned ^ ^ ^ rotated ~330 0 run function anemoland_contents:sys/entity/bullet/firework_motion/summon/default/0
