execute if score @s level matches 20.. unless data storage anemoland:progress data.rank{silver:1b} run function anemoland:command/progress/unlock/rank/silver
execute if score @s level matches 30.. unless data storage anemoland:progress data.rank{gold:1b} run function anemoland:command/progress/unlock/rank/gold
execute if entity @s[tag=enemy,tag=!arena] run function anemoland:sys/entity/common/drop_gold_xp/0
execute if entity @s[tag=pet,tag=!npc] run function anemoland:sys/entity/common/die/pet
execute if entity @s[tag=pet,tag=npc] run function anemoland:sys/entity/common/die/npc

execute at @s positioned over motion_blocking run tp @s ~ ~ ~
execute on passengers if entity @s[tag=aj.global.root] run ride @s dismount
execute unless entity @s[tag=without_aj] run tp ~ -70 ~
execute on passengers run kill @s
kill @s
