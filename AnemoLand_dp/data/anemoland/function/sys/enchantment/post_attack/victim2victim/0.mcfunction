#> anemoland:sys/enchantment/post_attack/victim2victim/0
#
# エンチャントのついたエンティティが攻撃されると実行される
# プレイヤーがエンティティを攻撃した時の処理
# as 攻撃を受けたエンティティ
#
# @within enchantment anemoland:/victim2victim

execute if entity @s[tag=pet] run data modify entity @s Health set value 1024.0f
execute if entity @s[tag=pet] run return 1

tag @s add attack_victim

execute on attacker if entity @s[type=player] run function anemoland:sys/enchantment/post_attack/victim2victim/player

execute unless score #attack_skill_flag temp matches 1 if entity @s[tag=mob] run function anemoland_contents:sys/entity/branch/damaged_by_player

scoreboard players reset #attack_skill_flag temp

tag @s remove attack_victim
