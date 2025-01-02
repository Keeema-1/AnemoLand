# 既に参加 -> 退出
    execute if entity @s[scores={team=3}] run return run function anemoland:sys/player/menu/team/search/join/exit
    
# 満員
    execute if entity @a[scores={team=3,member=1}] if entity @a[scores={team=3,member=2}] if entity @a[scores={team=3,member=3}] if entity @a[scores={team=3,member=4}] run return 1

# 空きチェック
    scoreboard players reset #member temp
    execute unless entity @a[scores={team=3,member=1}] run scoreboard players set #member temp 1
    execute unless score #member temp matches 1.. unless entity @a[scores={team=3,member=2}] run scoreboard players set #member temp 2
    execute unless score #member temp matches 1.. unless entity @a[scores={team=3,member=3}] run scoreboard players set #member temp 3
    execute unless score #member temp matches 1.. unless entity @a[scores={team=3,member=4}] run scoreboard players set #member temp 4

# 空きがあった場合
    execute if score #member temp matches 1.. run scoreboard players set @s team 3
    execute if score #member temp matches 1.. run scoreboard players operation @s member = #member temp
