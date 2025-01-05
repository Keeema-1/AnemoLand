#> anemoland:sys/enchantment/post_attack/victim2victim/0
#
# エンチャントのついたエンティティが攻撃されると実行される
# プレイヤーがエンティティを攻撃した時の処理
# as 攻撃を受けたエンティティ
#
# @within enchantment anemoland:/victim2victim

# ペットの場合は終了
    execute if entity @s[tag=pet] run return run data modify entity @s Health set value 1024.0f

# 攻撃対象タグを付与
    tag @s add attack_victim

# 攻撃者のプレイヤーとして実行する処理
    execute on attacker if entity @s[type=player] run function anemoland:sys/enchantment/post_attack/victim2victim/as_attacker_player

# ダメージを受けた際の処理
    execute unless score #weapon_skill_flag temp matches 1 if entity @s[tag=mob] run function anemoland_contents:sys/entity/branch/damaged_by_player

# 武器スキル使用フラグをリセット
    scoreboard players reset #weapon_skill_flag temp

# 攻撃対象タグを削除
    tag @s remove attack_victim
