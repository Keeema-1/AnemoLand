
# 発射元の攻撃力を取得
    scoreboard players operation #attack.base temp = @s attack.base
    scoreboard players set #temp temp 6
    scoreboard players operation #attack.base temp *= #temp temp
    scoreboard players set #temp temp 10
    scoreboard players operation #attack.base temp /= #temp temp

execute rotated ~ 0 rotated ~ 0 positioned ^ ^ ^3 run function anemoland_contents:sys/entity/bullet/mushroom_fang/summon/default/0
execute rotated ~ 0 rotated ~60 0 positioned ^ ^ ^3 run function anemoland_contents:sys/entity/bullet/mushroom_fang/summon/default/0
execute rotated ~ 0 rotated ~120 0 positioned ^ ^ ^3 run function anemoland_contents:sys/entity/bullet/mushroom_fang/summon/default/0
execute rotated ~ 0 rotated ~180 0 positioned ^ ^ ^3 run function anemoland_contents:sys/entity/bullet/mushroom_fang/summon/default/0
execute rotated ~ 0 rotated ~240 0 positioned ^ ^ ^3 run function anemoland_contents:sys/entity/bullet/mushroom_fang/summon/default/0
execute rotated ~ 0 rotated ~300 0 positioned ^ ^ ^3 run function anemoland_contents:sys/entity/bullet/mushroom_fang/summon/default/0
