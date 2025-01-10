
# 発射元の攻撃力を取得
    scoreboard players operation #attack.base temp = @s attack.base
    scoreboard players set #temp temp 6
    scoreboard players operation #attack.base temp *= #temp temp
    scoreboard players set #temp temp 10
    scoreboard players operation #attack.base temp /= #temp temp

execute if score @s action_way matches 1 positioned ^ ^3 ^ rotated ~ 30 run function anemoland_contents:sys/entity/bullet/firework/summon/default/0
execute if score @s action_way matches 2 positioned ^ ^3 ^ rotated ~ 18 run function anemoland_contents:sys/entity/bullet/firework/summon/default/0
execute if score @s action_way matches 3 positioned ^ ^3 ^ rotated ~ 13 run function anemoland_contents:sys/entity/bullet/firework/summon/default/0
execute if score @s action_way matches 4 positioned ^ ^3 ^ rotated ~ 8 run function anemoland_contents:sys/entity/bullet/firework/summon/default/0
execute if score @s action_way matches 5 positioned ^ ^3 ^ rotated ~ 6 run function anemoland_contents:sys/entity/bullet/firework/summon/default/0
execute if score @s action_way matches 0 positioned ^ ^3 ^ rotated ~ 5 run function anemoland_contents:sys/entity/bullet/firework/summon/default/0
